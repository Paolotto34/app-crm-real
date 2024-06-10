import re
import os

# Path to the TypeScript schema file
schema_path = os.path.join(os.getcwd(), 'src/graphql/schema.types.ts')
with open(schema_path, 'r', encoding='utf-8') as file:
    schema_string = file.read()

# Remove comments
schema_string = re.sub(r'/\*\*.*?\*/', '', schema_string, flags=re.DOTALL)

# Regex to find type definitions
type_defs = re.findall(r'export type (\w+) = \{([^}]+)\}', schema_string)

# Mapping TypeScript types to Prisma types
def convert_type(ts_type):
    type_map = {
        'ID': 'String',
        'String': 'String',
        'Boolean': 'Boolean',
        'Int': 'Int',
        'Float': 'Float',
        'DateTime': 'DateTime',
        'Any': 'Json',
        # Add other type mappings if necessary
    }
    return type_map.get(ts_type, 'String')

prisma_schema = []

for type_def in type_defs:
    type_name, fields = type_def
    field_lines = fields.strip().split(';')
    field_definitions = []
    has_id_field = False

    for field in field_lines:
        field = field.strip()
        if ':' in field:
            parts = field.split(':')
            field_name = parts[0].strip().replace('?', '')
            field_type = parts[1].strip().replace('?', '')
            prisma_field_type = convert_type(field_type)
            is_optional = '?' in parts[0] or '?' in parts[1]

            if field_name.lower() == 'id' and not has_id_field:
                field_definitions.append(f'  {field_name} {prisma_field_type} @id')
                has_id_field = True
            else:
                field_definitions.append(f'  {field_name} {prisma_field_type}{"?" if is_optional else ""}')

    if not has_id_field:
        field_definitions.insert(0, '  id String @id @default(uuid())')

    prisma_model = f'model {type_name} {{\n' + '\n'.join(field_definitions) + '\n}}'
    prisma_schema.append(prisma_model)

prisma_schema_string = '\n\n'.join(prisma_schema)

# Write to schema.prisma
prisma_schema_path = os.path.join(os.getcwd(), 'prisma/schema.prisma')
with open(prisma_schema_path, 'w', encoding='utf-8') as file:
    file.write(prisma_schema_string)

print('Prisma schema generated successfully.')
