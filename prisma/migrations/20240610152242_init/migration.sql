-- CreateTable
CREATE TABLE "Scalars" (
    "ID" TEXT NOT NULL,
    "output" TEXT NOT NULL,

    CONSTRAINT "Scalars_pkey" PRIMARY KEY ("ID")
);

-- CreateTable
CREATE TABLE "Audit" (
    "action" TEXT NOT NULL,
    "changes" TEXT NOT NULL,
    "createdAt" TEXT NOT NULL,
    "id" TEXT NOT NULL,
    "targetEntity" TEXT NOT NULL,
    "targetId" TEXT NOT NULL,
    "updatedAt" TEXT NOT NULL,
    "user" TEXT,

    CONSTRAINT "Audit_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "AuditChange" (
    "id" TEXT NOT NULL,
    "field" TEXT NOT NULL,
    "from" TEXT,
    "to" TEXT,

    CONSTRAINT "AuditChange_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "AuditConnection" (
    "id" TEXT NOT NULL,
    "nodes" TEXT NOT NULL,
    "pageInfo" TEXT NOT NULL,
    "totalCount" TEXT NOT NULL,

    CONSTRAINT "AuditConnection_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "AuditDeleteResponse" (
    "action" TEXT,
    "changes" TEXT,
    "createdAt" TEXT,
    "id" TEXT NOT NULL,
    "targetEntity" TEXT,
    "targetId" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "AuditDeleteResponse_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "AuditFilter" (
    "action" TEXT,
    "and" TEXT,
    "createdAt" TEXT,
    "id" TEXT NOT NULL,
    "or" TEXT,
    "targetEntity" TEXT,
    "targetId" TEXT,
    "updatedAt" TEXT,
    "user" TEXT,

    CONSTRAINT "AuditFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "AuditFilterUserFilter" (
    "and" TEXT,
    "createdAt" TEXT,
    "email" TEXT,
    "id" TEXT NOT NULL,
    "jobTitle" TEXT,
    "name" TEXT,
    "or" TEXT,
    "phone" TEXT,
    "role" TEXT,
    "timezone" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "AuditFilterUserFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "AuditSort" (
    "id" TEXT NOT NULL,
    "direction" TEXT NOT NULL,
    "field" TEXT NOT NULL,
    "nulls" TEXT,

    CONSTRAINT "AuditSort_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "AuditSubscriptionFilter" (
    "action" TEXT,
    "and" TEXT,
    "createdAt" TEXT,
    "id" TEXT NOT NULL,
    "or" TEXT,
    "targetEntity" TEXT,
    "targetId" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "AuditSubscriptionFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "AuthResponse" (
    "id" TEXT NOT NULL,
    "accessToken" TEXT NOT NULL,
    "refreshToken" TEXT NOT NULL,
    "user" TEXT NOT NULL,

    CONSTRAINT "AuthResponse_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "BooleanFieldComparison" (
    "id" TEXT NOT NULL,
    "is" TEXT,
    "isNot" TEXT,

    CONSTRAINT "BooleanFieldComparison_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CheckListItem" (
    "id" TEXT NOT NULL,
    "checked" TEXT NOT NULL,
    "title" TEXT NOT NULL,

    CONSTRAINT "CheckListItem_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ChecklistItemInput" (
    "id" TEXT NOT NULL,
    "checked" TEXT NOT NULL,
    "title" TEXT NOT NULL,

    CONSTRAINT "ChecklistItemInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Company" (
    "avatarUrl" TEXT,
    "businessType" TEXT,
    "companySize" TEXT,
    "contacts" TEXT NOT NULL,
    "contactsAggregate" TEXT NOT NULL,
    "country" TEXT,
    "createdAt" TEXT NOT NULL,
    "createdBy" TEXT NOT NULL,
    "deals" TEXT NOT NULL,
    "dealsAggregate" TEXT NOT NULL,
    "id" TEXT NOT NULL,
    "industry" TEXT,
    "name" TEXT NOT NULL,
    "notes" TEXT NOT NULL,
    "notesAggregate" TEXT NOT NULL,
    "salesOwner" TEXT NOT NULL,
    "totalRevenue" TEXT,
    "updatedAt" TEXT NOT NULL,
    "updatedBy" TEXT,
    "website" TEXT,

    CONSTRAINT "Company_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CompanyContactsArgs" (
    "id" TEXT NOT NULL,
    "filter" TEXT,
    "paging" TEXT,
    "sorting" TEXT,

    CONSTRAINT "CompanyContactsArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CompanyContactsAggregateArgs" (
    "id" TEXT NOT NULL,
    "filter" TEXT,

    CONSTRAINT "CompanyContactsAggregateArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CompanyDealsArgs" (
    "id" TEXT NOT NULL,
    "filter" TEXT,
    "paging" TEXT,
    "sorting" TEXT,

    CONSTRAINT "CompanyDealsArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CompanyDealsAggregateArgs" (
    "id" TEXT NOT NULL,
    "filter" TEXT,

    CONSTRAINT "CompanyDealsAggregateArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CompanyNotesArgs" (
    "id" TEXT NOT NULL,
    "filter" TEXT,
    "paging" TEXT,
    "sorting" TEXT,

    CONSTRAINT "CompanyNotesArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CompanyNotesAggregateArgs" (
    "id" TEXT NOT NULL,
    "filter" TEXT,

    CONSTRAINT "CompanyNotesAggregateArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CompanyAggregateFilter" (
    "and" TEXT,
    "businessType" TEXT,
    "companySize" TEXT,
    "country" TEXT,
    "createdAt" TEXT,
    "id" TEXT NOT NULL,
    "industry" TEXT,
    "name" TEXT,
    "or" TEXT,
    "totalRevenue" TEXT,
    "updatedAt" TEXT,
    "website" TEXT,

    CONSTRAINT "CompanyAggregateFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CompanyAggregateGroupBy" (
    "businessType" TEXT,
    "companySize" TEXT,
    "country" TEXT,
    "createdAt" TEXT,
    "id" TEXT NOT NULL,
    "industry" TEXT,
    "name" TEXT,
    "totalRevenue" TEXT,
    "updatedAt" TEXT,
    "website" TEXT,

    CONSTRAINT "CompanyAggregateGroupBy_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CompanyAggregateGroupByCreatedAtArgs" (
    "id" TEXT NOT NULL,
    "by" TEXT,

    CONSTRAINT "CompanyAggregateGroupByCreatedAtArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CompanyAggregateGroupByUpdatedAtArgs" (
    "id" TEXT NOT NULL,
    "by" TEXT,

    CONSTRAINT "CompanyAggregateGroupByUpdatedAtArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CompanyAggregateResponse" (
    "id" TEXT NOT NULL,
    "avg" TEXT,
    "count" TEXT,
    "groupBy" TEXT,
    "max" TEXT,
    "min" TEXT,
    "sum" TEXT,

    CONSTRAINT "CompanyAggregateResponse_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CompanyAvgAggregate" (
    "id" TEXT NOT NULL,
    "totalRevenue" TEXT,

    CONSTRAINT "CompanyAvgAggregate_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CompanyBusinessTypeFilterComparison" (
    "id" TEXT NOT NULL,
    "eq" TEXT,
    "in" TEXT,
    "neq" TEXT,
    "notIn" TEXT,

    CONSTRAINT "CompanyBusinessTypeFilterComparison_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CompanyCompanySizeFilterComparison" (
    "id" TEXT NOT NULL,
    "eq" TEXT,
    "in" TEXT,
    "neq" TEXT,
    "notIn" TEXT,

    CONSTRAINT "CompanyCompanySizeFilterComparison_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CompanyConnection" (
    "id" TEXT NOT NULL,
    "nodes" TEXT NOT NULL,
    "pageInfo" TEXT NOT NULL,
    "totalCount" TEXT NOT NULL,

    CONSTRAINT "CompanyConnection_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CompanyContactsAggregateGroupBy" (
    "createdAt" TEXT,
    "email" TEXT,
    "id" TEXT NOT NULL,
    "jobTitle" TEXT,
    "name" TEXT,
    "phone" TEXT,
    "score" TEXT,
    "stage" TEXT,
    "status" TEXT,
    "timezone" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "CompanyContactsAggregateGroupBy_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CompanyContactsAggregateResponse" (
    "id" TEXT NOT NULL,
    "avg" TEXT,
    "count" TEXT,
    "groupBy" TEXT,
    "max" TEXT,
    "min" TEXT,
    "sum" TEXT,

    CONSTRAINT "CompanyContactsAggregateResponse_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CompanyContactsAvgAggregate" (
    "id" TEXT NOT NULL,
    "score" TEXT,

    CONSTRAINT "CompanyContactsAvgAggregate_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CompanyContactsConnection" (
    "id" TEXT NOT NULL,
    "nodes" TEXT NOT NULL,
    "pageInfo" TEXT NOT NULL,
    "totalCount" TEXT NOT NULL,

    CONSTRAINT "CompanyContactsConnection_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CompanyContactsCountAggregate" (
    "createdAt" TEXT,
    "email" TEXT,
    "id" TEXT NOT NULL,
    "jobTitle" TEXT,
    "name" TEXT,
    "phone" TEXT,
    "score" TEXT,
    "stage" TEXT,
    "status" TEXT,
    "timezone" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "CompanyContactsCountAggregate_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CompanyContactsMaxAggregate" (
    "createdAt" TEXT,
    "email" TEXT,
    "id" TEXT NOT NULL,
    "jobTitle" TEXT,
    "name" TEXT,
    "phone" TEXT,
    "score" TEXT,
    "stage" TEXT,
    "status" TEXT,
    "timezone" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "CompanyContactsMaxAggregate_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CompanyContactsMinAggregate" (
    "createdAt" TEXT,
    "email" TEXT,
    "id" TEXT NOT NULL,
    "jobTitle" TEXT,
    "name" TEXT,
    "phone" TEXT,
    "score" TEXT,
    "stage" TEXT,
    "status" TEXT,
    "timezone" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "CompanyContactsMinAggregate_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CompanyContactsSumAggregate" (
    "id" TEXT NOT NULL,
    "score" TEXT,

    CONSTRAINT "CompanyContactsSumAggregate_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CompanyCountAggregate" (
    "businessType" TEXT,
    "companySize" TEXT,
    "country" TEXT,
    "createdAt" TEXT,
    "id" TEXT NOT NULL,
    "industry" TEXT,
    "name" TEXT,
    "totalRevenue" TEXT,
    "updatedAt" TEXT,
    "website" TEXT,

    CONSTRAINT "CompanyCountAggregate_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CompanyCreateInput" (
    "id" TEXT NOT NULL,
    "businessType" TEXT,
    "companySize" TEXT,
    "country" TEXT,
    "industry" TEXT,
    "name" TEXT NOT NULL,
    "salesOwnerId" TEXT NOT NULL,
    "totalRevenue" TEXT,
    "website" TEXT,

    CONSTRAINT "CompanyCreateInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CompanyDealsAggregateGroupBy" (
    "closeDateDay" TEXT,
    "closeDateMonth" TEXT,
    "closeDateYear" TEXT,
    "companyId" TEXT,
    "createdAt" TEXT,
    "dealOwnerId" TEXT,
    "id" TEXT NOT NULL,
    "stageId" TEXT,
    "title" TEXT,
    "updatedAt" TEXT,
    "value" TEXT,

    CONSTRAINT "CompanyDealsAggregateGroupBy_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CompanyDealsAggregateResponse" (
    "id" TEXT NOT NULL,
    "avg" TEXT,
    "count" TEXT,
    "groupBy" TEXT,
    "max" TEXT,
    "min" TEXT,
    "sum" TEXT,

    CONSTRAINT "CompanyDealsAggregateResponse_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CompanyDealsAvgAggregate" (
    "closeDateDay" TEXT,
    "closeDateMonth" TEXT,
    "closeDateYear" TEXT,
    "companyId" TEXT,
    "dealOwnerId" TEXT,
    "id" TEXT NOT NULL,
    "stageId" TEXT,
    "value" TEXT,

    CONSTRAINT "CompanyDealsAvgAggregate_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CompanyDealsConnection" (
    "id" TEXT NOT NULL,
    "nodes" TEXT NOT NULL,
    "pageInfo" TEXT NOT NULL,
    "totalCount" TEXT NOT NULL,

    CONSTRAINT "CompanyDealsConnection_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CompanyDealsCountAggregate" (
    "closeDateDay" TEXT,
    "closeDateMonth" TEXT,
    "closeDateYear" TEXT,
    "companyId" TEXT,
    "createdAt" TEXT,
    "dealOwnerId" TEXT,
    "id" TEXT NOT NULL,
    "stageId" TEXT,
    "title" TEXT,
    "updatedAt" TEXT,
    "value" TEXT,

    CONSTRAINT "CompanyDealsCountAggregate_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CompanyDealsMaxAggregate" (
    "closeDateDay" TEXT,
    "closeDateMonth" TEXT,
    "closeDateYear" TEXT,
    "companyId" TEXT,
    "createdAt" TEXT,
    "dealOwnerId" TEXT,
    "id" TEXT NOT NULL,
    "stageId" TEXT,
    "title" TEXT,
    "updatedAt" TEXT,
    "value" TEXT,

    CONSTRAINT "CompanyDealsMaxAggregate_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CompanyDealsMinAggregate" (
    "closeDateDay" TEXT,
    "closeDateMonth" TEXT,
    "closeDateYear" TEXT,
    "companyId" TEXT,
    "createdAt" TEXT,
    "dealOwnerId" TEXT,
    "id" TEXT NOT NULL,
    "stageId" TEXT,
    "title" TEXT,
    "updatedAt" TEXT,
    "value" TEXT,

    CONSTRAINT "CompanyDealsMinAggregate_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CompanyDealsSumAggregate" (
    "closeDateDay" TEXT,
    "closeDateMonth" TEXT,
    "closeDateYear" TEXT,
    "companyId" TEXT,
    "dealOwnerId" TEXT,
    "id" TEXT NOT NULL,
    "stageId" TEXT,
    "value" TEXT,

    CONSTRAINT "CompanyDealsSumAggregate_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CompanyDeleteFilter" (
    "and" TEXT,
    "businessType" TEXT,
    "companySize" TEXT,
    "country" TEXT,
    "createdAt" TEXT,
    "id" TEXT NOT NULL,
    "industry" TEXT,
    "name" TEXT,
    "or" TEXT,
    "totalRevenue" TEXT,
    "updatedAt" TEXT,
    "website" TEXT,

    CONSTRAINT "CompanyDeleteFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CompanyDeleteResponse" (
    "avatarUrl" TEXT,
    "businessType" TEXT,
    "companySize" TEXT,
    "country" TEXT,
    "createdAt" TEXT,
    "id" TEXT NOT NULL,
    "industry" TEXT,
    "name" TEXT,
    "totalRevenue" TEXT,
    "updatedAt" TEXT,
    "website" TEXT,

    CONSTRAINT "CompanyDeleteResponse_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CompanyFilter" (
    "and" TEXT,
    "businessType" TEXT,
    "companySize" TEXT,
    "contacts" TEXT,
    "country" TEXT,
    "createdAt" TEXT,
    "createdBy" TEXT,
    "deals" TEXT,
    "id" TEXT NOT NULL,
    "industry" TEXT,
    "name" TEXT,
    "notes" TEXT,
    "or" TEXT,
    "salesOwner" TEXT,
    "totalRevenue" TEXT,
    "updatedAt" TEXT,
    "updatedBy" TEXT,
    "website" TEXT,

    CONSTRAINT "CompanyFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CompanyFilterCompanyNoteFilter" (
    "and" TEXT,
    "createdAt" TEXT,
    "id" TEXT NOT NULL,
    "or" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "CompanyFilterCompanyNoteFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CompanyFilterContactFilter" (
    "and" TEXT,
    "createdAt" TEXT,
    "email" TEXT,
    "id" TEXT NOT NULL,
    "jobTitle" TEXT,
    "name" TEXT,
    "or" TEXT,
    "phone" TEXT,
    "score" TEXT,
    "stage" TEXT,
    "status" TEXT,
    "timezone" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "CompanyFilterContactFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CompanyFilterDealFilter" (
    "and" TEXT,
    "closeDateDay" TEXT,
    "closeDateMonth" TEXT,
    "closeDateYear" TEXT,
    "companyId" TEXT,
    "createdAt" TEXT,
    "dealOwnerId" TEXT,
    "id" TEXT NOT NULL,
    "or" TEXT,
    "stageId" TEXT,
    "title" TEXT,
    "updatedAt" TEXT,
    "value" TEXT,

    CONSTRAINT "CompanyFilterDealFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CompanyFilterUserFilter" (
    "and" TEXT,
    "createdAt" TEXT,
    "email" TEXT,
    "id" TEXT NOT NULL,
    "jobTitle" TEXT,
    "name" TEXT,
    "or" TEXT,
    "phone" TEXT,
    "role" TEXT,
    "timezone" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "CompanyFilterUserFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CompanyIndustryFilterComparison" (
    "id" TEXT NOT NULL,
    "eq" TEXT,
    "in" TEXT,
    "neq" TEXT,
    "notIn" TEXT,

    CONSTRAINT "CompanyIndustryFilterComparison_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CompanyMaxAggregate" (
    "businessType" TEXT,
    "companySize" TEXT,
    "country" TEXT,
    "createdAt" TEXT,
    "id" TEXT NOT NULL,
    "industry" TEXT,
    "name" TEXT,
    "totalRevenue" TEXT,
    "updatedAt" TEXT,
    "website" TEXT,

    CONSTRAINT "CompanyMaxAggregate_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CompanyMinAggregate" (
    "businessType" TEXT,
    "companySize" TEXT,
    "country" TEXT,
    "createdAt" TEXT,
    "id" TEXT NOT NULL,
    "industry" TEXT,
    "name" TEXT,
    "totalRevenue" TEXT,
    "updatedAt" TEXT,
    "website" TEXT,

    CONSTRAINT "CompanyMinAggregate_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CompanyNote" (
    "company" TEXT NOT NULL,
    "createdAt" TEXT NOT NULL,
    "createdBy" TEXT NOT NULL,
    "id" TEXT NOT NULL,
    "note" TEXT NOT NULL,
    "updatedAt" TEXT NOT NULL,
    "updatedBy" TEXT,

    CONSTRAINT "CompanyNote_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CompanyNoteAggregateFilter" (
    "and" TEXT,
    "createdAt" TEXT,
    "id" TEXT NOT NULL,
    "or" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "CompanyNoteAggregateFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CompanyNoteConnection" (
    "id" TEXT NOT NULL,
    "nodes" TEXT NOT NULL,
    "pageInfo" TEXT NOT NULL,
    "totalCount" TEXT NOT NULL,

    CONSTRAINT "CompanyNoteConnection_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CompanyNoteCreateInput" (
    "id" TEXT NOT NULL,
    "companyId" TEXT NOT NULL,
    "note" TEXT NOT NULL,

    CONSTRAINT "CompanyNoteCreateInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CompanyNoteDeleteFilter" (
    "and" TEXT,
    "createdAt" TEXT,
    "id" TEXT NOT NULL,
    "or" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "CompanyNoteDeleteFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CompanyNoteDeleteResponse" (
    "createdAt" TEXT,
    "id" TEXT NOT NULL,
    "note" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "CompanyNoteDeleteResponse_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CompanyNoteFilter" (
    "and" TEXT,
    "company" TEXT,
    "createdAt" TEXT,
    "createdBy" TEXT,
    "id" TEXT NOT NULL,
    "or" TEXT,
    "updatedAt" TEXT,
    "updatedBy" TEXT,

    CONSTRAINT "CompanyNoteFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CompanyNoteFilterCompanyFilter" (
    "and" TEXT,
    "businessType" TEXT,
    "companySize" TEXT,
    "country" TEXT,
    "createdAt" TEXT,
    "id" TEXT NOT NULL,
    "industry" TEXT,
    "name" TEXT,
    "or" TEXT,
    "totalRevenue" TEXT,
    "updatedAt" TEXT,
    "website" TEXT,

    CONSTRAINT "CompanyNoteFilterCompanyFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CompanyNoteFilterUserFilter" (
    "and" TEXT,
    "createdAt" TEXT,
    "email" TEXT,
    "id" TEXT NOT NULL,
    "jobTitle" TEXT,
    "name" TEXT,
    "or" TEXT,
    "phone" TEXT,
    "role" TEXT,
    "timezone" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "CompanyNoteFilterUserFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CompanyNoteSort" (
    "id" TEXT NOT NULL,
    "direction" TEXT NOT NULL,
    "field" TEXT NOT NULL,
    "nulls" TEXT,

    CONSTRAINT "CompanyNoteSort_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CompanyNoteSubscriptionFilter" (
    "and" TEXT,
    "createdAt" TEXT,
    "id" TEXT NOT NULL,
    "or" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "CompanyNoteSubscriptionFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CompanyNoteUpdateFilter" (
    "and" TEXT,
    "createdAt" TEXT,
    "id" TEXT NOT NULL,
    "or" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "CompanyNoteUpdateFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CompanyNoteUpdateInput" (
    "id" TEXT NOT NULL,
    "note" TEXT NOT NULL,

    CONSTRAINT "CompanyNoteUpdateInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CompanyNotesAggregateGroupBy" (
    "createdAt" TEXT,
    "id" TEXT NOT NULL,
    "updatedAt" TEXT,

    CONSTRAINT "CompanyNotesAggregateGroupBy_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CompanyNotesAggregateResponse" (
    "id" TEXT NOT NULL,
    "avg" TEXT,
    "count" TEXT,
    "groupBy" TEXT,
    "max" TEXT,
    "min" TEXT,
    "sum" TEXT,

    CONSTRAINT "CompanyNotesAggregateResponse_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CompanyNotesAvgAggregate" (
    "id" TEXT NOT NULL,

    CONSTRAINT "CompanyNotesAvgAggregate_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CompanyNotesConnection" (
    "id" TEXT NOT NULL,
    "nodes" TEXT NOT NULL,
    "pageInfo" TEXT NOT NULL,
    "totalCount" TEXT NOT NULL,

    CONSTRAINT "CompanyNotesConnection_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CompanyNotesCountAggregate" (
    "createdAt" TEXT,
    "id" TEXT NOT NULL,
    "updatedAt" TEXT,

    CONSTRAINT "CompanyNotesCountAggregate_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CompanyNotesMaxAggregate" (
    "createdAt" TEXT,
    "id" TEXT NOT NULL,
    "updatedAt" TEXT,

    CONSTRAINT "CompanyNotesMaxAggregate_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CompanyNotesMinAggregate" (
    "createdAt" TEXT,
    "id" TEXT NOT NULL,
    "updatedAt" TEXT,

    CONSTRAINT "CompanyNotesMinAggregate_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CompanyNotesSumAggregate" (
    "id" TEXT NOT NULL,

    CONSTRAINT "CompanyNotesSumAggregate_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CompanySort" (
    "id" TEXT NOT NULL,
    "direction" TEXT NOT NULL,
    "field" TEXT NOT NULL,
    "nulls" TEXT,

    CONSTRAINT "CompanySort_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CompanySubscriptionFilter" (
    "and" TEXT,
    "businessType" TEXT,
    "companySize" TEXT,
    "country" TEXT,
    "createdAt" TEXT,
    "id" TEXT NOT NULL,
    "industry" TEXT,
    "name" TEXT,
    "or" TEXT,
    "totalRevenue" TEXT,
    "updatedAt" TEXT,
    "website" TEXT,

    CONSTRAINT "CompanySubscriptionFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CompanySumAggregate" (
    "id" TEXT NOT NULL,
    "totalRevenue" TEXT,

    CONSTRAINT "CompanySumAggregate_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CompanyUpdateFilter" (
    "and" TEXT,
    "businessType" TEXT,
    "companySize" TEXT,
    "country" TEXT,
    "createdAt" TEXT,
    "id" TEXT NOT NULL,
    "industry" TEXT,
    "name" TEXT,
    "or" TEXT,
    "totalRevenue" TEXT,
    "updatedAt" TEXT,
    "website" TEXT,

    CONSTRAINT "CompanyUpdateFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CompanyUpdateInput" (
    "id" TEXT NOT NULL,
    "businessType" TEXT,
    "companySize" TEXT,
    "country" TEXT,
    "industry" TEXT,
    "name" TEXT,
    "salesOwnerId" TEXT,
    "totalRevenue" TEXT,
    "website" TEXT,

    CONSTRAINT "CompanyUpdateInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Contact" (
    "avatarUrl" TEXT,
    "company" TEXT NOT NULL,
    "createdAt" TEXT NOT NULL,
    "createdBy" TEXT NOT NULL,
    "deals" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "id" TEXT NOT NULL,
    "jobTitle" TEXT,
    "name" TEXT NOT NULL,
    "notes" TEXT NOT NULL,
    "phone" TEXT,
    "salesOwner" TEXT NOT NULL,
    "score" TEXT,
    "stage" TEXT NOT NULL,
    "status" TEXT NOT NULL,
    "timezone" TEXT,
    "updatedAt" TEXT NOT NULL,
    "updatedBy" TEXT,

    CONSTRAINT "Contact_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ContactDealsArgs" (
    "id" TEXT NOT NULL,
    "filter" TEXT,
    "paging" TEXT,
    "sorting" TEXT,

    CONSTRAINT "ContactDealsArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ContactNotesArgs" (
    "id" TEXT NOT NULL,
    "filter" TEXT,
    "paging" TEXT,
    "sorting" TEXT,

    CONSTRAINT "ContactNotesArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ContactAggregateFilter" (
    "and" TEXT,
    "createdAt" TEXT,
    "email" TEXT,
    "id" TEXT NOT NULL,
    "jobTitle" TEXT,
    "name" TEXT,
    "or" TEXT,
    "phone" TEXT,
    "score" TEXT,
    "stage" TEXT,
    "status" TEXT,
    "timezone" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "ContactAggregateFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ContactConnection" (
    "id" TEXT NOT NULL,
    "nodes" TEXT NOT NULL,
    "pageInfo" TEXT NOT NULL,
    "totalCount" TEXT NOT NULL,

    CONSTRAINT "ContactConnection_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ContactCreateInput" (
    "id" TEXT NOT NULL,
    "companyId" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "jobTitle" TEXT,
    "name" TEXT NOT NULL,
    "phone" TEXT,
    "salesOwnerId" TEXT NOT NULL,
    "score" TEXT,
    "stage" TEXT,
    "status" TEXT,
    "timezone" TEXT,

    CONSTRAINT "ContactCreateInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ContactDealsConnection" (
    "id" TEXT NOT NULL,
    "nodes" TEXT NOT NULL,
    "pageInfo" TEXT NOT NULL,
    "totalCount" TEXT NOT NULL,

    CONSTRAINT "ContactDealsConnection_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ContactDeleteFilter" (
    "and" TEXT,
    "createdAt" TEXT,
    "email" TEXT,
    "id" TEXT NOT NULL,
    "jobTitle" TEXT,
    "name" TEXT,
    "or" TEXT,
    "phone" TEXT,
    "score" TEXT,
    "stage" TEXT,
    "status" TEXT,
    "timezone" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "ContactDeleteFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ContactDeleteResponse" (
    "avatarUrl" TEXT,
    "createdAt" TEXT,
    "email" TEXT,
    "id" TEXT NOT NULL,
    "jobTitle" TEXT,
    "name" TEXT,
    "phone" TEXT,
    "score" TEXT,
    "stage" TEXT,
    "status" TEXT,
    "timezone" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "ContactDeleteResponse_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ContactFilter" (
    "and" TEXT,
    "company" TEXT,
    "createdAt" TEXT,
    "createdBy" TEXT,
    "deals" TEXT,
    "email" TEXT,
    "id" TEXT NOT NULL,
    "jobTitle" TEXT,
    "name" TEXT,
    "notes" TEXT,
    "or" TEXT,
    "phone" TEXT,
    "salesOwner" TEXT,
    "score" TEXT,
    "stage" TEXT,
    "status" TEXT,
    "timezone" TEXT,
    "updatedAt" TEXT,
    "updatedBy" TEXT,

    CONSTRAINT "ContactFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ContactFilterCompanyFilter" (
    "and" TEXT,
    "businessType" TEXT,
    "companySize" TEXT,
    "country" TEXT,
    "createdAt" TEXT,
    "id" TEXT NOT NULL,
    "industry" TEXT,
    "name" TEXT,
    "or" TEXT,
    "totalRevenue" TEXT,
    "updatedAt" TEXT,
    "website" TEXT,

    CONSTRAINT "ContactFilterCompanyFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ContactFilterContactNoteFilter" (
    "and" TEXT,
    "createdAt" TEXT,
    "id" TEXT NOT NULL,
    "or" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "ContactFilterContactNoteFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ContactFilterDealFilter" (
    "and" TEXT,
    "closeDateDay" TEXT,
    "closeDateMonth" TEXT,
    "closeDateYear" TEXT,
    "companyId" TEXT,
    "createdAt" TEXT,
    "dealOwnerId" TEXT,
    "id" TEXT NOT NULL,
    "or" TEXT,
    "stageId" TEXT,
    "title" TEXT,
    "updatedAt" TEXT,
    "value" TEXT,

    CONSTRAINT "ContactFilterDealFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ContactFilterUserFilter" (
    "and" TEXT,
    "createdAt" TEXT,
    "email" TEXT,
    "id" TEXT NOT NULL,
    "jobTitle" TEXT,
    "name" TEXT,
    "or" TEXT,
    "phone" TEXT,
    "role" TEXT,
    "timezone" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "ContactFilterUserFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ContactNote" (
    "contact" TEXT NOT NULL,
    "createdAt" TEXT NOT NULL,
    "createdBy" TEXT NOT NULL,
    "id" TEXT NOT NULL,
    "note" TEXT NOT NULL,
    "updatedAt" TEXT NOT NULL,
    "updatedBy" TEXT,

    CONSTRAINT "ContactNote_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ContactNoteConnection" (
    "id" TEXT NOT NULL,
    "nodes" TEXT NOT NULL,
    "pageInfo" TEXT NOT NULL,
    "totalCount" TEXT NOT NULL,

    CONSTRAINT "ContactNoteConnection_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ContactNoteCreateInput" (
    "id" TEXT NOT NULL,
    "contactId" TEXT NOT NULL,
    "note" TEXT NOT NULL,

    CONSTRAINT "ContactNoteCreateInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ContactNoteDeleteFilter" (
    "and" TEXT,
    "createdAt" TEXT,
    "id" TEXT NOT NULL,
    "or" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "ContactNoteDeleteFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ContactNoteDeleteResponse" (
    "createdAt" TEXT,
    "id" TEXT NOT NULL,
    "note" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "ContactNoteDeleteResponse_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ContactNoteFilter" (
    "and" TEXT,
    "contact" TEXT,
    "createdAt" TEXT,
    "createdBy" TEXT,
    "id" TEXT NOT NULL,
    "or" TEXT,
    "updatedAt" TEXT,
    "updatedBy" TEXT,

    CONSTRAINT "ContactNoteFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ContactNoteFilterContactFilter" (
    "and" TEXT,
    "createdAt" TEXT,
    "email" TEXT,
    "id" TEXT NOT NULL,
    "jobTitle" TEXT,
    "name" TEXT,
    "or" TEXT,
    "phone" TEXT,
    "score" TEXT,
    "stage" TEXT,
    "status" TEXT,
    "timezone" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "ContactNoteFilterContactFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ContactNoteFilterUserFilter" (
    "and" TEXT,
    "createdAt" TEXT,
    "email" TEXT,
    "id" TEXT NOT NULL,
    "jobTitle" TEXT,
    "name" TEXT,
    "or" TEXT,
    "phone" TEXT,
    "role" TEXT,
    "timezone" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "ContactNoteFilterUserFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ContactNoteSort" (
    "id" TEXT NOT NULL,
    "direction" TEXT NOT NULL,
    "field" TEXT NOT NULL,
    "nulls" TEXT,

    CONSTRAINT "ContactNoteSort_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ContactNoteSubscriptionFilter" (
    "and" TEXT,
    "createdAt" TEXT,
    "id" TEXT NOT NULL,
    "or" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "ContactNoteSubscriptionFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ContactNoteUpdateFilter" (
    "and" TEXT,
    "createdAt" TEXT,
    "id" TEXT NOT NULL,
    "or" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "ContactNoteUpdateFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ContactNoteUpdateInput" (
    "id" TEXT NOT NULL,
    "note" TEXT NOT NULL,

    CONSTRAINT "ContactNoteUpdateInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ContactNotesConnection" (
    "id" TEXT NOT NULL,
    "nodes" TEXT NOT NULL,
    "pageInfo" TEXT NOT NULL,
    "totalCount" TEXT NOT NULL,

    CONSTRAINT "ContactNotesConnection_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ContactSort" (
    "id" TEXT NOT NULL,
    "direction" TEXT NOT NULL,
    "field" TEXT NOT NULL,
    "nulls" TEXT,

    CONSTRAINT "ContactSort_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ContactStageFilterComparison" (
    "id" TEXT NOT NULL,
    "eq" TEXT,
    "gt" TEXT,
    "gte" TEXT,
    "iLike" TEXT,
    "in" TEXT,
    "is" TEXT,
    "isNot" TEXT,
    "like" TEXT,
    "lt" TEXT,
    "lte" TEXT,
    "neq" TEXT,
    "notILike" TEXT,
    "notIn" TEXT,
    "notLike" TEXT,

    CONSTRAINT "ContactStageFilterComparison_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ContactStatusFilterComparison" (
    "id" TEXT NOT NULL,
    "eq" TEXT,
    "gt" TEXT,
    "gte" TEXT,
    "iLike" TEXT,
    "in" TEXT,
    "is" TEXT,
    "isNot" TEXT,
    "like" TEXT,
    "lt" TEXT,
    "lte" TEXT,
    "neq" TEXT,
    "notILike" TEXT,
    "notIn" TEXT,
    "notLike" TEXT,

    CONSTRAINT "ContactStatusFilterComparison_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ContactSubscriptionFilter" (
    "and" TEXT,
    "createdAt" TEXT,
    "email" TEXT,
    "id" TEXT NOT NULL,
    "jobTitle" TEXT,
    "name" TEXT,
    "or" TEXT,
    "phone" TEXT,
    "score" TEXT,
    "stage" TEXT,
    "status" TEXT,
    "timezone" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "ContactSubscriptionFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ContactUpdateFilter" (
    "and" TEXT,
    "createdAt" TEXT,
    "email" TEXT,
    "id" TEXT NOT NULL,
    "jobTitle" TEXT,
    "name" TEXT,
    "or" TEXT,
    "phone" TEXT,
    "score" TEXT,
    "stage" TEXT,
    "status" TEXT,
    "timezone" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "ContactUpdateFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ContactUpdateInput" (
    "id" TEXT NOT NULL,
    "companyId" TEXT,
    "email" TEXT,
    "jobTitle" TEXT,
    "name" TEXT,
    "phone" TEXT,
    "salesOwnerId" TEXT,
    "score" TEXT,
    "stage" TEXT,
    "status" TEXT,
    "timezone" TEXT,

    CONSTRAINT "ContactUpdateInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CreateAuditSubscriptionFilterInput" (
    "id" TEXT NOT NULL,
    "filter" TEXT NOT NULL,

    CONSTRAINT "CreateAuditSubscriptionFilterInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CreateCompanyNoteSubscriptionFilterInput" (
    "id" TEXT NOT NULL,
    "filter" TEXT NOT NULL,

    CONSTRAINT "CreateCompanyNoteSubscriptionFilterInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CreateCompanySubscriptionFilterInput" (
    "id" TEXT NOT NULL,
    "filter" TEXT NOT NULL,

    CONSTRAINT "CreateCompanySubscriptionFilterInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CreateContactNoteSubscriptionFilterInput" (
    "id" TEXT NOT NULL,
    "filter" TEXT NOT NULL,

    CONSTRAINT "CreateContactNoteSubscriptionFilterInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CreateContactSubscriptionFilterInput" (
    "id" TEXT NOT NULL,
    "filter" TEXT NOT NULL,

    CONSTRAINT "CreateContactSubscriptionFilterInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CreateDealStageSubscriptionFilterInput" (
    "id" TEXT NOT NULL,
    "filter" TEXT NOT NULL,

    CONSTRAINT "CreateDealStageSubscriptionFilterInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CreateDealSubscriptionFilterInput" (
    "id" TEXT NOT NULL,
    "filter" TEXT NOT NULL,

    CONSTRAINT "CreateDealSubscriptionFilterInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CreateEventCategorySubscriptionFilterInput" (
    "id" TEXT NOT NULL,
    "filter" TEXT NOT NULL,

    CONSTRAINT "CreateEventCategorySubscriptionFilterInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CreateEventSubscriptionFilterInput" (
    "id" TEXT NOT NULL,
    "filter" TEXT NOT NULL,

    CONSTRAINT "CreateEventSubscriptionFilterInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CreateManyCompaniesInput" (
    "id" TEXT NOT NULL,
    "companies" TEXT NOT NULL,

    CONSTRAINT "CreateManyCompaniesInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CreateManyCompanyNotesInput" (
    "id" TEXT NOT NULL,
    "companyNotes" TEXT NOT NULL,

    CONSTRAINT "CreateManyCompanyNotesInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CreateManyContactNotesInput" (
    "id" TEXT NOT NULL,
    "contactNotes" TEXT NOT NULL,

    CONSTRAINT "CreateManyContactNotesInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CreateManyContactsInput" (
    "id" TEXT NOT NULL,
    "contacts" TEXT NOT NULL,

    CONSTRAINT "CreateManyContactsInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CreateManyDealStagesInput" (
    "id" TEXT NOT NULL,
    "dealStages" TEXT NOT NULL,

    CONSTRAINT "CreateManyDealStagesInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CreateManyDealsInput" (
    "id" TEXT NOT NULL,
    "deals" TEXT NOT NULL,

    CONSTRAINT "CreateManyDealsInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CreateManyEventCategoriesInput" (
    "id" TEXT NOT NULL,
    "eventCategories" TEXT NOT NULL,

    CONSTRAINT "CreateManyEventCategoriesInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CreateManyEventsInput" (
    "id" TEXT NOT NULL,
    "events" TEXT NOT NULL,

    CONSTRAINT "CreateManyEventsInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CreateManyQuotesInput" (
    "id" TEXT NOT NULL,
    "quotes" TEXT NOT NULL,

    CONSTRAINT "CreateManyQuotesInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CreateManyTaskCommentsInput" (
    "id" TEXT NOT NULL,
    "taskComments" TEXT NOT NULL,

    CONSTRAINT "CreateManyTaskCommentsInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CreateManyTaskStagesInput" (
    "id" TEXT NOT NULL,
    "taskStages" TEXT NOT NULL,

    CONSTRAINT "CreateManyTaskStagesInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CreateManyTasksInput" (
    "id" TEXT NOT NULL,
    "tasks" TEXT NOT NULL,

    CONSTRAINT "CreateManyTasksInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CreateManyUsersInput" (
    "id" TEXT NOT NULL,
    "users" TEXT NOT NULL,

    CONSTRAINT "CreateManyUsersInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CreateOneCompanyInput" (
    "id" TEXT NOT NULL,
    "company" TEXT NOT NULL,

    CONSTRAINT "CreateOneCompanyInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CreateOneCompanyNoteInput" (
    "id" TEXT NOT NULL,
    "companyNote" TEXT NOT NULL,

    CONSTRAINT "CreateOneCompanyNoteInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CreateOneContactInput" (
    "id" TEXT NOT NULL,
    "contact" TEXT NOT NULL,

    CONSTRAINT "CreateOneContactInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CreateOneContactNoteInput" (
    "id" TEXT NOT NULL,
    "contactNote" TEXT NOT NULL,

    CONSTRAINT "CreateOneContactNoteInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CreateOneDealInput" (
    "id" TEXT NOT NULL,
    "deal" TEXT NOT NULL,

    CONSTRAINT "CreateOneDealInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CreateOneDealStageInput" (
    "id" TEXT NOT NULL,
    "dealStage" TEXT NOT NULL,

    CONSTRAINT "CreateOneDealStageInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CreateOneEventCategoryInput" (
    "id" TEXT NOT NULL,
    "eventCategory" TEXT NOT NULL,

    CONSTRAINT "CreateOneEventCategoryInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CreateOneEventInput" (
    "id" TEXT NOT NULL,
    "event" TEXT NOT NULL,

    CONSTRAINT "CreateOneEventInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CreateOneQuoteInput" (
    "id" TEXT NOT NULL,
    "quote" TEXT NOT NULL,

    CONSTRAINT "CreateOneQuoteInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CreateOneTaskCommentInput" (
    "id" TEXT NOT NULL,
    "taskComment" TEXT NOT NULL,

    CONSTRAINT "CreateOneTaskCommentInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CreateOneTaskInput" (
    "id" TEXT NOT NULL,
    "task" TEXT NOT NULL,

    CONSTRAINT "CreateOneTaskInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CreateOneTaskStageInput" (
    "id" TEXT NOT NULL,
    "taskStage" TEXT NOT NULL,

    CONSTRAINT "CreateOneTaskStageInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CreateOneUserInput" (
    "id" TEXT NOT NULL,
    "user" TEXT NOT NULL,

    CONSTRAINT "CreateOneUserInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CreateQuoteSubscriptionFilterInput" (
    "id" TEXT NOT NULL,
    "filter" TEXT NOT NULL,

    CONSTRAINT "CreateQuoteSubscriptionFilterInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CreateTaskCommentSubscriptionFilterInput" (
    "id" TEXT NOT NULL,
    "filter" TEXT NOT NULL,

    CONSTRAINT "CreateTaskCommentSubscriptionFilterInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CreateTaskStageSubscriptionFilterInput" (
    "id" TEXT NOT NULL,
    "filter" TEXT NOT NULL,

    CONSTRAINT "CreateTaskStageSubscriptionFilterInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CreateTaskSubscriptionFilterInput" (
    "id" TEXT NOT NULL,
    "filter" TEXT NOT NULL,

    CONSTRAINT "CreateTaskSubscriptionFilterInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CreateUserSubscriptionFilterInput" (
    "id" TEXT NOT NULL,
    "filter" TEXT NOT NULL,

    CONSTRAINT "CreateUserSubscriptionFilterInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DateFieldComparison" (
    "id" TEXT NOT NULL,
    "between" TEXT,
    "eq" TEXT,
    "gt" TEXT,
    "gte" TEXT,
    "in" TEXT,
    "is" TEXT,
    "isNot" TEXT,
    "lt" TEXT,
    "lte" TEXT,
    "neq" TEXT,
    "notBetween" TEXT,
    "notIn" TEXT,

    CONSTRAINT "DateFieldComparison_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DateFieldComparisonBetween" (
    "id" TEXT NOT NULL,
    "lower" TEXT NOT NULL,
    "upper" TEXT NOT NULL,

    CONSTRAINT "DateFieldComparisonBetween_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Deal" (
    "closeDateDay" TEXT,
    "closeDateMonth" TEXT,
    "closeDateYear" TEXT,
    "company" TEXT NOT NULL,
    "companyId" TEXT NOT NULL,
    "createdAt" TEXT NOT NULL,
    "createdBy" TEXT NOT NULL,
    "dealContact" TEXT NOT NULL,
    "dealOwner" TEXT NOT NULL,
    "dealOwnerId" TEXT NOT NULL,
    "id" TEXT NOT NULL,
    "notes" TEXT NOT NULL,
    "stage" TEXT,
    "stageId" TEXT,
    "title" TEXT NOT NULL,
    "updatedAt" TEXT NOT NULL,
    "updatedBy" TEXT,
    "value" TEXT,

    CONSTRAINT "Deal_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DealAggregateFilter" (
    "and" TEXT,
    "closeDateDay" TEXT,
    "closeDateMonth" TEXT,
    "closeDateYear" TEXT,
    "companyId" TEXT,
    "createdAt" TEXT,
    "dealOwnerId" TEXT,
    "id" TEXT NOT NULL,
    "or" TEXT,
    "stageId" TEXT,
    "title" TEXT,
    "updatedAt" TEXT,
    "value" TEXT,

    CONSTRAINT "DealAggregateFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DealAggregateGroupBy" (
    "closeDateDay" TEXT,
    "closeDateMonth" TEXT,
    "closeDateYear" TEXT,
    "companyId" TEXT,
    "createdAt" TEXT,
    "dealOwnerId" TEXT,
    "id" TEXT NOT NULL,
    "stageId" TEXT,
    "title" TEXT,
    "updatedAt" TEXT,
    "value" TEXT,

    CONSTRAINT "DealAggregateGroupBy_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DealAggregateGroupByCreatedAtArgs" (
    "id" TEXT NOT NULL,
    "by" TEXT,

    CONSTRAINT "DealAggregateGroupByCreatedAtArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DealAggregateGroupByUpdatedAtArgs" (
    "id" TEXT NOT NULL,
    "by" TEXT,

    CONSTRAINT "DealAggregateGroupByUpdatedAtArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DealAggregateResponse" (
    "id" TEXT NOT NULL,
    "avg" TEXT,
    "count" TEXT,
    "groupBy" TEXT,
    "max" TEXT,
    "min" TEXT,
    "sum" TEXT,

    CONSTRAINT "DealAggregateResponse_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DealAvgAggregate" (
    "closeDateDay" TEXT,
    "closeDateMonth" TEXT,
    "closeDateYear" TEXT,
    "companyId" TEXT,
    "dealOwnerId" TEXT,
    "id" TEXT NOT NULL,
    "stageId" TEXT,
    "value" TEXT,

    CONSTRAINT "DealAvgAggregate_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DealConnection" (
    "id" TEXT NOT NULL,
    "nodes" TEXT NOT NULL,
    "pageInfo" TEXT NOT NULL,
    "totalCount" TEXT NOT NULL,

    CONSTRAINT "DealConnection_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DealCountAggregate" (
    "closeDateDay" TEXT,
    "closeDateMonth" TEXT,
    "closeDateYear" TEXT,
    "companyId" TEXT,
    "createdAt" TEXT,
    "dealOwnerId" TEXT,
    "id" TEXT NOT NULL,
    "stageId" TEXT,
    "title" TEXT,
    "updatedAt" TEXT,
    "value" TEXT,

    CONSTRAINT "DealCountAggregate_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DealCreateInput" (
    "id" TEXT NOT NULL,
    "companyId" TEXT NOT NULL,
    "dealContactId" TEXT,
    "dealOwnerId" TEXT NOT NULL,
    "stageId" TEXT,
    "title" TEXT NOT NULL,
    "value" TEXT,

    CONSTRAINT "DealCreateInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DealDeleteFilter" (
    "and" TEXT,
    "closeDateDay" TEXT,
    "closeDateMonth" TEXT,
    "closeDateYear" TEXT,
    "companyId" TEXT,
    "createdAt" TEXT,
    "dealOwnerId" TEXT,
    "id" TEXT NOT NULL,
    "or" TEXT,
    "stageId" TEXT,
    "title" TEXT,
    "updatedAt" TEXT,
    "value" TEXT,

    CONSTRAINT "DealDeleteFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DealDeleteResponse" (
    "closeDateDay" TEXT,
    "closeDateMonth" TEXT,
    "closeDateYear" TEXT,
    "companyId" TEXT,
    "createdAt" TEXT,
    "dealOwnerId" TEXT,
    "id" TEXT NOT NULL,
    "notes" TEXT,
    "stageId" TEXT,
    "title" TEXT,
    "updatedAt" TEXT,
    "value" TEXT,

    CONSTRAINT "DealDeleteResponse_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DealFilter" (
    "and" TEXT,
    "closeDateDay" TEXT,
    "closeDateMonth" TEXT,
    "closeDateYear" TEXT,
    "company" TEXT,
    "companyId" TEXT,
    "createdAt" TEXT,
    "createdBy" TEXT,
    "dealContact" TEXT,
    "dealOwner" TEXT,
    "dealOwnerId" TEXT,
    "id" TEXT NOT NULL,
    "or" TEXT,
    "stage" TEXT,
    "stageId" TEXT,
    "title" TEXT,
    "updatedAt" TEXT,
    "updatedBy" TEXT,
    "value" TEXT,

    CONSTRAINT "DealFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DealFilterCompanyFilter" (
    "and" TEXT,
    "businessType" TEXT,
    "companySize" TEXT,
    "country" TEXT,
    "createdAt" TEXT,
    "id" TEXT NOT NULL,
    "industry" TEXT,
    "name" TEXT,
    "or" TEXT,
    "totalRevenue" TEXT,
    "updatedAt" TEXT,
    "website" TEXT,

    CONSTRAINT "DealFilterCompanyFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DealFilterContactFilter" (
    "and" TEXT,
    "createdAt" TEXT,
    "email" TEXT,
    "id" TEXT NOT NULL,
    "jobTitle" TEXT,
    "name" TEXT,
    "or" TEXT,
    "phone" TEXT,
    "score" TEXT,
    "stage" TEXT,
    "status" TEXT,
    "timezone" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "DealFilterContactFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DealFilterDealStageFilter" (
    "and" TEXT,
    "createdAt" TEXT,
    "id" TEXT NOT NULL,
    "or" TEXT,
    "title" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "DealFilterDealStageFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DealFilterUserFilter" (
    "and" TEXT,
    "createdAt" TEXT,
    "email" TEXT,
    "id" TEXT NOT NULL,
    "jobTitle" TEXT,
    "name" TEXT,
    "or" TEXT,
    "phone" TEXT,
    "role" TEXT,
    "timezone" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "DealFilterUserFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DealMaxAggregate" (
    "closeDateDay" TEXT,
    "closeDateMonth" TEXT,
    "closeDateYear" TEXT,
    "companyId" TEXT,
    "createdAt" TEXT,
    "dealOwnerId" TEXT,
    "id" TEXT NOT NULL,
    "stageId" TEXT,
    "title" TEXT,
    "updatedAt" TEXT,
    "value" TEXT,

    CONSTRAINT "DealMaxAggregate_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DealMinAggregate" (
    "closeDateDay" TEXT,
    "closeDateMonth" TEXT,
    "closeDateYear" TEXT,
    "companyId" TEXT,
    "createdAt" TEXT,
    "dealOwnerId" TEXT,
    "id" TEXT NOT NULL,
    "stageId" TEXT,
    "title" TEXT,
    "updatedAt" TEXT,
    "value" TEXT,

    CONSTRAINT "DealMinAggregate_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DealSort" (
    "id" TEXT NOT NULL,
    "direction" TEXT NOT NULL,
    "field" TEXT NOT NULL,
    "nulls" TEXT,

    CONSTRAINT "DealSort_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DealStage" (
    "createdAt" TEXT NOT NULL,
    "createdBy" TEXT NOT NULL,
    "deals" TEXT NOT NULL,
    "dealsAggregate" TEXT NOT NULL,
    "id" TEXT NOT NULL,
    "title" TEXT NOT NULL,
    "updatedAt" TEXT NOT NULL,
    "updatedBy" TEXT,

    CONSTRAINT "DealStage_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DealStageDealsArgs" (
    "id" TEXT NOT NULL,
    "filter" TEXT,
    "sorting" TEXT,

    CONSTRAINT "DealStageDealsArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DealStageDealsAggregateArgs" (
    "id" TEXT NOT NULL,
    "filter" TEXT,

    CONSTRAINT "DealStageDealsAggregateArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DealStageConnection" (
    "id" TEXT NOT NULL,
    "nodes" TEXT NOT NULL,
    "pageInfo" TEXT NOT NULL,
    "totalCount" TEXT NOT NULL,

    CONSTRAINT "DealStageConnection_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DealStageCreateInput" (
    "id" TEXT NOT NULL,
    "title" TEXT NOT NULL,

    CONSTRAINT "DealStageCreateInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DealStageDealsAggregateGroupBy" (
    "closeDateDay" TEXT,
    "closeDateMonth" TEXT,
    "closeDateYear" TEXT,
    "companyId" TEXT,
    "createdAt" TEXT,
    "dealOwnerId" TEXT,
    "id" TEXT NOT NULL,
    "stageId" TEXT,
    "title" TEXT,
    "updatedAt" TEXT,
    "value" TEXT,

    CONSTRAINT "DealStageDealsAggregateGroupBy_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DealStageDealsAggregateResponse" (
    "id" TEXT NOT NULL,
    "avg" TEXT,
    "count" TEXT,
    "groupBy" TEXT,
    "max" TEXT,
    "min" TEXT,
    "sum" TEXT,

    CONSTRAINT "DealStageDealsAggregateResponse_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DealStageDealsAvgAggregate" (
    "closeDateDay" TEXT,
    "closeDateMonth" TEXT,
    "closeDateYear" TEXT,
    "companyId" TEXT,
    "dealOwnerId" TEXT,
    "id" TEXT NOT NULL,
    "stageId" TEXT,
    "value" TEXT,

    CONSTRAINT "DealStageDealsAvgAggregate_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DealStageDealsCountAggregate" (
    "closeDateDay" TEXT,
    "closeDateMonth" TEXT,
    "closeDateYear" TEXT,
    "companyId" TEXT,
    "createdAt" TEXT,
    "dealOwnerId" TEXT,
    "id" TEXT NOT NULL,
    "stageId" TEXT,
    "title" TEXT,
    "updatedAt" TEXT,
    "value" TEXT,

    CONSTRAINT "DealStageDealsCountAggregate_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DealStageDealsMaxAggregate" (
    "closeDateDay" TEXT,
    "closeDateMonth" TEXT,
    "closeDateYear" TEXT,
    "companyId" TEXT,
    "createdAt" TEXT,
    "dealOwnerId" TEXT,
    "id" TEXT NOT NULL,
    "stageId" TEXT,
    "title" TEXT,
    "updatedAt" TEXT,
    "value" TEXT,

    CONSTRAINT "DealStageDealsMaxAggregate_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DealStageDealsMinAggregate" (
    "closeDateDay" TEXT,
    "closeDateMonth" TEXT,
    "closeDateYear" TEXT,
    "companyId" TEXT,
    "createdAt" TEXT,
    "dealOwnerId" TEXT,
    "id" TEXT NOT NULL,
    "stageId" TEXT,
    "title" TEXT,
    "updatedAt" TEXT,
    "value" TEXT,

    CONSTRAINT "DealStageDealsMinAggregate_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DealStageDealsSumAggregate" (
    "closeDateDay" TEXT,
    "closeDateMonth" TEXT,
    "closeDateYear" TEXT,
    "companyId" TEXT,
    "dealOwnerId" TEXT,
    "id" TEXT NOT NULL,
    "stageId" TEXT,
    "value" TEXT,

    CONSTRAINT "DealStageDealsSumAggregate_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DealStageDeleteFilter" (
    "and" TEXT,
    "createdAt" TEXT,
    "id" TEXT NOT NULL,
    "or" TEXT,
    "title" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "DealStageDeleteFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DealStageDeleteResponse" (
    "createdAt" TEXT,
    "id" TEXT NOT NULL,
    "title" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "DealStageDeleteResponse_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DealStageFilter" (
    "and" TEXT,
    "createdAt" TEXT,
    "createdBy" TEXT,
    "deals" TEXT,
    "id" TEXT NOT NULL,
    "or" TEXT,
    "title" TEXT,
    "updatedAt" TEXT,
    "updatedBy" TEXT,

    CONSTRAINT "DealStageFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DealStageFilterDealFilter" (
    "and" TEXT,
    "closeDateDay" TEXT,
    "closeDateMonth" TEXT,
    "closeDateYear" TEXT,
    "companyId" TEXT,
    "createdAt" TEXT,
    "dealOwnerId" TEXT,
    "id" TEXT NOT NULL,
    "or" TEXT,
    "stageId" TEXT,
    "title" TEXT,
    "updatedAt" TEXT,
    "value" TEXT,

    CONSTRAINT "DealStageFilterDealFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DealStageFilterUserFilter" (
    "and" TEXT,
    "createdAt" TEXT,
    "email" TEXT,
    "id" TEXT NOT NULL,
    "jobTitle" TEXT,
    "name" TEXT,
    "or" TEXT,
    "phone" TEXT,
    "role" TEXT,
    "timezone" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "DealStageFilterUserFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DealStageSort" (
    "id" TEXT NOT NULL,
    "direction" TEXT NOT NULL,
    "field" TEXT NOT NULL,
    "nulls" TEXT,

    CONSTRAINT "DealStageSort_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DealStageSubscriptionFilter" (
    "and" TEXT,
    "createdAt" TEXT,
    "id" TEXT NOT NULL,
    "or" TEXT,
    "title" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "DealStageSubscriptionFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DealStageUpdateFilter" (
    "and" TEXT,
    "createdAt" TEXT,
    "id" TEXT NOT NULL,
    "or" TEXT,
    "title" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "DealStageUpdateFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DealStageUpdateInput" (
    "id" TEXT NOT NULL,
    "stageId" TEXT,
    "title" TEXT,

    CONSTRAINT "DealStageUpdateInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DealSubscriptionFilter" (
    "and" TEXT,
    "closeDateDay" TEXT,
    "closeDateMonth" TEXT,
    "closeDateYear" TEXT,
    "companyId" TEXT,
    "createdAt" TEXT,
    "dealOwnerId" TEXT,
    "id" TEXT NOT NULL,
    "or" TEXT,
    "stageId" TEXT,
    "title" TEXT,
    "updatedAt" TEXT,
    "value" TEXT,

    CONSTRAINT "DealSubscriptionFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DealSumAggregate" (
    "closeDateDay" TEXT,
    "closeDateMonth" TEXT,
    "closeDateYear" TEXT,
    "companyId" TEXT,
    "dealOwnerId" TEXT,
    "id" TEXT NOT NULL,
    "stageId" TEXT,
    "value" TEXT,

    CONSTRAINT "DealSumAggregate_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DealUpdateFilter" (
    "and" TEXT,
    "closeDateDay" TEXT,
    "closeDateMonth" TEXT,
    "closeDateYear" TEXT,
    "companyId" TEXT,
    "createdAt" TEXT,
    "dealOwnerId" TEXT,
    "id" TEXT NOT NULL,
    "or" TEXT,
    "stageId" TEXT,
    "title" TEXT,
    "updatedAt" TEXT,
    "value" TEXT,

    CONSTRAINT "DealUpdateFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DealUpdateInput" (
    "id" TEXT NOT NULL,
    "closeDateDay" TEXT,
    "closeDateMonth" TEXT,
    "closeDateYear" TEXT,
    "companyId" TEXT,
    "dealContactId" TEXT,
    "dealOwnerId" TEXT,
    "notes" TEXT,
    "stageId" TEXT,
    "title" TEXT,
    "value" TEXT,

    CONSTRAINT "DealUpdateInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DeleteManyCompaniesInput" (
    "id" TEXT NOT NULL,
    "filter" TEXT NOT NULL,

    CONSTRAINT "DeleteManyCompaniesInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DeleteManyCompanyNotesInput" (
    "id" TEXT NOT NULL,
    "filter" TEXT NOT NULL,

    CONSTRAINT "DeleteManyCompanyNotesInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DeleteManyContactNotesInput" (
    "id" TEXT NOT NULL,
    "filter" TEXT NOT NULL,

    CONSTRAINT "DeleteManyContactNotesInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DeleteManyContactsInput" (
    "id" TEXT NOT NULL,
    "filter" TEXT NOT NULL,

    CONSTRAINT "DeleteManyContactsInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DeleteManyDealStagesInput" (
    "id" TEXT NOT NULL,
    "filter" TEXT NOT NULL,

    CONSTRAINT "DeleteManyDealStagesInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DeleteManyDealsInput" (
    "id" TEXT NOT NULL,
    "filter" TEXT NOT NULL,

    CONSTRAINT "DeleteManyDealsInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DeleteManyEventCategoriesInput" (
    "id" TEXT NOT NULL,
    "filter" TEXT NOT NULL,

    CONSTRAINT "DeleteManyEventCategoriesInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DeleteManyEventsInput" (
    "id" TEXT NOT NULL,
    "filter" TEXT NOT NULL,

    CONSTRAINT "DeleteManyEventsInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DeleteManyQuotesInput" (
    "id" TEXT NOT NULL,
    "filter" TEXT NOT NULL,

    CONSTRAINT "DeleteManyQuotesInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DeleteManyResponse" (
    "id" TEXT NOT NULL,
    "deletedCount" TEXT NOT NULL,

    CONSTRAINT "DeleteManyResponse_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DeleteManyTaskCommentsInput" (
    "id" TEXT NOT NULL,
    "filter" TEXT NOT NULL,

    CONSTRAINT "DeleteManyTaskCommentsInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DeleteManyTaskStagesInput" (
    "id" TEXT NOT NULL,
    "filter" TEXT NOT NULL,

    CONSTRAINT "DeleteManyTaskStagesInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DeleteManyTasksInput" (
    "id" TEXT NOT NULL,
    "filter" TEXT NOT NULL,

    CONSTRAINT "DeleteManyTasksInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DeleteManyUsersInput" (
    "id" TEXT NOT NULL,
    "filter" TEXT NOT NULL,

    CONSTRAINT "DeleteManyUsersInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DeleteOneAuditSubscriptionFilterInput" (
    "id" TEXT NOT NULL,
    "filter" TEXT NOT NULL,

    CONSTRAINT "DeleteOneAuditSubscriptionFilterInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DeleteOneCompanyInput" (
    "id" TEXT NOT NULL,

    CONSTRAINT "DeleteOneCompanyInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DeleteOneCompanyNoteInput" (
    "id" TEXT NOT NULL,

    CONSTRAINT "DeleteOneCompanyNoteInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DeleteOneCompanyNoteSubscriptionFilterInput" (
    "id" TEXT NOT NULL,
    "filter" TEXT NOT NULL,

    CONSTRAINT "DeleteOneCompanyNoteSubscriptionFilterInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DeleteOneCompanySubscriptionFilterInput" (
    "id" TEXT NOT NULL,
    "filter" TEXT NOT NULL,

    CONSTRAINT "DeleteOneCompanySubscriptionFilterInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DeleteOneContactInput" (
    "id" TEXT NOT NULL,

    CONSTRAINT "DeleteOneContactInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DeleteOneContactNoteInput" (
    "id" TEXT NOT NULL,

    CONSTRAINT "DeleteOneContactNoteInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DeleteOneContactNoteSubscriptionFilterInput" (
    "id" TEXT NOT NULL,
    "filter" TEXT NOT NULL,

    CONSTRAINT "DeleteOneContactNoteSubscriptionFilterInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DeleteOneContactSubscriptionFilterInput" (
    "id" TEXT NOT NULL,
    "filter" TEXT NOT NULL,

    CONSTRAINT "DeleteOneContactSubscriptionFilterInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DeleteOneDealInput" (
    "id" TEXT NOT NULL,

    CONSTRAINT "DeleteOneDealInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DeleteOneDealStageInput" (
    "id" TEXT NOT NULL,

    CONSTRAINT "DeleteOneDealStageInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DeleteOneDealStageSubscriptionFilterInput" (
    "id" TEXT NOT NULL,
    "filter" TEXT NOT NULL,

    CONSTRAINT "DeleteOneDealStageSubscriptionFilterInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DeleteOneDealSubscriptionFilterInput" (
    "id" TEXT NOT NULL,
    "filter" TEXT NOT NULL,

    CONSTRAINT "DeleteOneDealSubscriptionFilterInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DeleteOneEventCategoryInput" (
    "id" TEXT NOT NULL,

    CONSTRAINT "DeleteOneEventCategoryInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DeleteOneEventCategorySubscriptionFilterInput" (
    "id" TEXT NOT NULL,
    "filter" TEXT NOT NULL,

    CONSTRAINT "DeleteOneEventCategorySubscriptionFilterInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DeleteOneEventInput" (
    "id" TEXT NOT NULL,

    CONSTRAINT "DeleteOneEventInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DeleteOneEventSubscriptionFilterInput" (
    "id" TEXT NOT NULL,
    "filter" TEXT NOT NULL,

    CONSTRAINT "DeleteOneEventSubscriptionFilterInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DeleteOneQuoteInput" (
    "id" TEXT NOT NULL,

    CONSTRAINT "DeleteOneQuoteInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DeleteOneQuoteSubscriptionFilterInput" (
    "id" TEXT NOT NULL,
    "filter" TEXT NOT NULL,

    CONSTRAINT "DeleteOneQuoteSubscriptionFilterInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DeleteOneTaskCommentInput" (
    "id" TEXT NOT NULL,

    CONSTRAINT "DeleteOneTaskCommentInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DeleteOneTaskCommentSubscriptionFilterInput" (
    "id" TEXT NOT NULL,
    "filter" TEXT NOT NULL,

    CONSTRAINT "DeleteOneTaskCommentSubscriptionFilterInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DeleteOneTaskInput" (
    "id" TEXT NOT NULL,

    CONSTRAINT "DeleteOneTaskInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DeleteOneTaskStageInput" (
    "id" TEXT NOT NULL,

    CONSTRAINT "DeleteOneTaskStageInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DeleteOneTaskStageSubscriptionFilterInput" (
    "id" TEXT NOT NULL,
    "filter" TEXT NOT NULL,

    CONSTRAINT "DeleteOneTaskStageSubscriptionFilterInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DeleteOneTaskSubscriptionFilterInput" (
    "id" TEXT NOT NULL,
    "filter" TEXT NOT NULL,

    CONSTRAINT "DeleteOneTaskSubscriptionFilterInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DeleteOneUserInput" (
    "id" TEXT NOT NULL,

    CONSTRAINT "DeleteOneUserInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DeleteOneUserSubscriptionFilterInput" (
    "id" TEXT NOT NULL,
    "filter" TEXT NOT NULL,

    CONSTRAINT "DeleteOneUserSubscriptionFilterInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Event" (
    "category" TEXT NOT NULL,
    "color" TEXT NOT NULL,
    "createdAt" TEXT NOT NULL,
    "createdBy" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "endDate" TEXT NOT NULL,
    "id" TEXT NOT NULL,
    "participants" TEXT NOT NULL,
    "startDate" TEXT NOT NULL,
    "title" TEXT NOT NULL,
    "updatedAt" TEXT NOT NULL,
    "updatedBy" TEXT,

    CONSTRAINT "Event_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "EventParticipantsArgs" (
    "id" TEXT NOT NULL,
    "filter" TEXT,
    "sorting" TEXT,

    CONSTRAINT "EventParticipantsArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "EventCategory" (
    "createdAt" TEXT NOT NULL,
    "createdBy" TEXT NOT NULL,
    "events" TEXT NOT NULL,
    "id" TEXT NOT NULL,
    "title" TEXT NOT NULL,
    "updatedAt" TEXT NOT NULL,
    "updatedBy" TEXT,

    CONSTRAINT "EventCategory_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "EventCategoryEventsArgs" (
    "id" TEXT NOT NULL,
    "filter" TEXT,
    "sorting" TEXT,

    CONSTRAINT "EventCategoryEventsArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "EventCategoryConnection" (
    "id" TEXT NOT NULL,
    "nodes" TEXT NOT NULL,
    "pageInfo" TEXT NOT NULL,
    "totalCount" TEXT NOT NULL,

    CONSTRAINT "EventCategoryConnection_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "EventCategoryCreateInput" (
    "id" TEXT NOT NULL,
    "title" TEXT NOT NULL,

    CONSTRAINT "EventCategoryCreateInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "EventCategoryDeleteFilter" (
    "and" TEXT,
    "createdAt" TEXT,
    "id" TEXT NOT NULL,
    "or" TEXT,
    "title" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "EventCategoryDeleteFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "EventCategoryDeleteResponse" (
    "createdAt" TEXT,
    "id" TEXT NOT NULL,
    "title" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "EventCategoryDeleteResponse_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "EventCategoryFilter" (
    "and" TEXT,
    "createdAt" TEXT,
    "createdBy" TEXT,
    "id" TEXT NOT NULL,
    "or" TEXT,
    "title" TEXT,
    "updatedAt" TEXT,
    "updatedBy" TEXT,

    CONSTRAINT "EventCategoryFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "EventCategoryFilterUserFilter" (
    "and" TEXT,
    "createdAt" TEXT,
    "email" TEXT,
    "id" TEXT NOT NULL,
    "jobTitle" TEXT,
    "name" TEXT,
    "or" TEXT,
    "phone" TEXT,
    "role" TEXT,
    "timezone" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "EventCategoryFilterUserFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "EventCategorySort" (
    "id" TEXT NOT NULL,
    "direction" TEXT NOT NULL,
    "field" TEXT NOT NULL,
    "nulls" TEXT,

    CONSTRAINT "EventCategorySort_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "EventCategorySubscriptionFilter" (
    "and" TEXT,
    "createdAt" TEXT,
    "id" TEXT NOT NULL,
    "or" TEXT,
    "title" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "EventCategorySubscriptionFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "EventCategoryUpdateFilter" (
    "and" TEXT,
    "createdAt" TEXT,
    "id" TEXT NOT NULL,
    "or" TEXT,
    "title" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "EventCategoryUpdateFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "EventCategoryUpdateInput" (
    "id" TEXT NOT NULL,
    "title" TEXT NOT NULL,

    CONSTRAINT "EventCategoryUpdateInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "EventConnection" (
    "id" TEXT NOT NULL,
    "nodes" TEXT NOT NULL,
    "pageInfo" TEXT NOT NULL,
    "totalCount" TEXT NOT NULL,

    CONSTRAINT "EventConnection_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "EventCreateInput" (
    "id" TEXT NOT NULL,
    "categoryId" TEXT NOT NULL,
    "color" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "endDate" TEXT NOT NULL,
    "participantIds" TEXT NOT NULL,
    "startDate" TEXT NOT NULL,
    "title" TEXT NOT NULL,

    CONSTRAINT "EventCreateInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "EventDeleteFilter" (
    "and" TEXT,
    "createdAt" TEXT,
    "description" TEXT,
    "endDate" TEXT,
    "id" TEXT NOT NULL,
    "or" TEXT,
    "startDate" TEXT,
    "title" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "EventDeleteFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "EventDeleteResponse" (
    "color" TEXT,
    "createdAt" TEXT,
    "description" TEXT,
    "endDate" TEXT,
    "id" TEXT NOT NULL,
    "startDate" TEXT,
    "title" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "EventDeleteResponse_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "EventFilter" (
    "and" TEXT,
    "category" TEXT,
    "createdAt" TEXT,
    "createdBy" TEXT,
    "description" TEXT,
    "endDate" TEXT,
    "id" TEXT NOT NULL,
    "or" TEXT,
    "startDate" TEXT,
    "title" TEXT,
    "updatedAt" TEXT,
    "updatedBy" TEXT,

    CONSTRAINT "EventFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "EventFilterEventCategoryFilter" (
    "and" TEXT,
    "createdAt" TEXT,
    "id" TEXT NOT NULL,
    "or" TEXT,
    "title" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "EventFilterEventCategoryFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "EventFilterUserFilter" (
    "and" TEXT,
    "createdAt" TEXT,
    "email" TEXT,
    "id" TEXT NOT NULL,
    "jobTitle" TEXT,
    "name" TEXT,
    "or" TEXT,
    "phone" TEXT,
    "role" TEXT,
    "timezone" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "EventFilterUserFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "EventSort" (
    "id" TEXT NOT NULL,
    "direction" TEXT NOT NULL,
    "field" TEXT NOT NULL,
    "nulls" TEXT,

    CONSTRAINT "EventSort_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "EventSubscriptionFilter" (
    "and" TEXT,
    "createdAt" TEXT,
    "description" TEXT,
    "endDate" TEXT,
    "id" TEXT NOT NULL,
    "or" TEXT,
    "startDate" TEXT,
    "title" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "EventSubscriptionFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "EventUpdateFilter" (
    "and" TEXT,
    "createdAt" TEXT,
    "description" TEXT,
    "endDate" TEXT,
    "id" TEXT NOT NULL,
    "or" TEXT,
    "startDate" TEXT,
    "title" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "EventUpdateFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "EventUpdateInput" (
    "id" TEXT NOT NULL,
    "categoryId" TEXT,
    "color" TEXT,
    "description" TEXT,
    "endDate" TEXT,
    "participantIds" TEXT,
    "startDate" TEXT,
    "title" TEXT,

    CONSTRAINT "EventUpdateInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "FloatFieldComparison" (
    "id" TEXT NOT NULL,
    "between" TEXT,
    "eq" TEXT,
    "gt" TEXT,
    "gte" TEXT,
    "in" TEXT,
    "is" TEXT,
    "isNot" TEXT,
    "lt" TEXT,
    "lte" TEXT,
    "neq" TEXT,
    "notBetween" TEXT,
    "notIn" TEXT,

    CONSTRAINT "FloatFieldComparison_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "FloatFieldComparisonBetween" (
    "id" TEXT NOT NULL,
    "lower" TEXT NOT NULL,
    "upper" TEXT NOT NULL,

    CONSTRAINT "FloatFieldComparisonBetween_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "IdFilterComparison" (
    "id" TEXT NOT NULL,
    "eq" TEXT,
    "gt" TEXT,
    "gte" TEXT,
    "iLike" TEXT,
    "in" TEXT,
    "is" TEXT,
    "isNot" TEXT,
    "like" TEXT,
    "lt" TEXT,
    "lte" TEXT,
    "neq" TEXT,
    "notILike" TEXT,
    "notIn" TEXT,
    "notLike" TEXT,

    CONSTRAINT "IdFilterComparison_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "IntFieldComparison" (
    "id" TEXT NOT NULL,
    "between" TEXT,
    "eq" TEXT,
    "gt" TEXT,
    "gte" TEXT,
    "in" TEXT,
    "is" TEXT,
    "isNot" TEXT,
    "lt" TEXT,
    "lte" TEXT,
    "neq" TEXT,
    "notBetween" TEXT,
    "notIn" TEXT,

    CONSTRAINT "IntFieldComparison_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "IntFieldComparisonBetween" (
    "id" TEXT NOT NULL,
    "lower" TEXT NOT NULL,
    "upper" TEXT NOT NULL,

    CONSTRAINT "IntFieldComparisonBetween_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "LoginInput" (
    "id" TEXT NOT NULL,
    "email" TEXT NOT NULL,

    CONSTRAINT "LoginInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Mutation" (
    "id" TEXT NOT NULL,
    "createManyCompanies" TEXT NOT NULL,
    "createManyCompanyNotes" TEXT NOT NULL,
    "createManyContactNotes" TEXT NOT NULL,
    "createManyContacts" TEXT NOT NULL,
    "createManyDealStages" TEXT NOT NULL,
    "createManyDeals" TEXT NOT NULL,
    "createManyEventCategories" TEXT NOT NULL,
    "createManyEvents" TEXT NOT NULL,
    "createManyQuotes" TEXT NOT NULL,
    "createManyTaskComments" TEXT NOT NULL,
    "createManyTaskStages" TEXT NOT NULL,
    "createManyTasks" TEXT NOT NULL,
    "createManyUsers" TEXT NOT NULL,
    "createOneCompany" TEXT NOT NULL,
    "createOneCompanyNote" TEXT NOT NULL,
    "createOneContact" TEXT NOT NULL,
    "createOneContactNote" TEXT NOT NULL,
    "createOneDeal" TEXT NOT NULL,
    "createOneDealStage" TEXT NOT NULL,
    "createOneEvent" TEXT NOT NULL,
    "createOneEventCategory" TEXT NOT NULL,
    "createOneQuote" TEXT NOT NULL,
    "createOneTask" TEXT NOT NULL,
    "createOneTaskComment" TEXT NOT NULL,
    "createOneTaskStage" TEXT NOT NULL,
    "createOneUser" TEXT NOT NULL,
    "deleteManyCompanies" TEXT NOT NULL,
    "deleteManyCompanyNotes" TEXT NOT NULL,
    "deleteManyContactNotes" TEXT NOT NULL,
    "deleteManyContacts" TEXT NOT NULL,
    "deleteManyDealStages" TEXT NOT NULL,
    "deleteManyDeals" TEXT NOT NULL,
    "deleteManyEventCategories" TEXT NOT NULL,
    "deleteManyEvents" TEXT NOT NULL,
    "deleteManyQuotes" TEXT NOT NULL,
    "deleteManyTaskComments" TEXT NOT NULL,
    "deleteManyTaskStages" TEXT NOT NULL,
    "deleteManyTasks" TEXT NOT NULL,
    "deleteManyUsers" TEXT NOT NULL,
    "deleteOneCompany" TEXT NOT NULL,
    "deleteOneCompanyNote" TEXT NOT NULL,
    "deleteOneContact" TEXT NOT NULL,
    "deleteOneContactNote" TEXT NOT NULL,
    "deleteOneDeal" TEXT NOT NULL,
    "deleteOneDealStage" TEXT NOT NULL,
    "deleteOneEvent" TEXT NOT NULL,
    "deleteOneEventCategory" TEXT NOT NULL,
    "deleteOneQuote" TEXT NOT NULL,
    "deleteOneTask" TEXT NOT NULL,
    "deleteOneTaskComment" TEXT NOT NULL,
    "deleteOneTaskStage" TEXT NOT NULL,
    "deleteOneUser" TEXT NOT NULL,
    "login" TEXT NOT NULL,
    "refreshToken" TEXT NOT NULL,
    "register" TEXT NOT NULL,
    "updateManyCompanies" TEXT NOT NULL,
    "updateManyCompanyNotes" TEXT NOT NULL,
    "updateManyContactNotes" TEXT NOT NULL,
    "updateManyContacts" TEXT NOT NULL,
    "updateManyDealStages" TEXT NOT NULL,
    "updateManyDeals" TEXT NOT NULL,
    "updateManyEventCategories" TEXT NOT NULL,
    "updateManyEvents" TEXT NOT NULL,
    "updateManyQuotes" TEXT NOT NULL,
    "updateManyTaskComments" TEXT NOT NULL,
    "updateManyTaskStages" TEXT NOT NULL,
    "updateManyTasks" TEXT NOT NULL,
    "updateManyUsers" TEXT NOT NULL,
    "updateOneCompany" TEXT NOT NULL,
    "updateOneCompanyNote" TEXT NOT NULL,
    "updateOneContact" TEXT NOT NULL,
    "updateOneContactNote" TEXT NOT NULL,
    "updateOneDeal" TEXT NOT NULL,
    "updateOneDealStage" TEXT NOT NULL,
    "updateOneEvent" TEXT NOT NULL,
    "updateOneEventCategory" TEXT NOT NULL,
    "updateOneQuote" TEXT NOT NULL,
    "updateOneTask" TEXT NOT NULL,
    "updateOneTaskComment" TEXT NOT NULL,
    "updateOneTaskStage" TEXT NOT NULL,
    "updateOneUser" TEXT NOT NULL,

    CONSTRAINT "Mutation_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationCreateManyCompaniesArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT NOT NULL,

    CONSTRAINT "MutationCreateManyCompaniesArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationCreateManyCompanyNotesArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT NOT NULL,

    CONSTRAINT "MutationCreateManyCompanyNotesArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationCreateManyContactNotesArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT NOT NULL,

    CONSTRAINT "MutationCreateManyContactNotesArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationCreateManyContactsArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT NOT NULL,

    CONSTRAINT "MutationCreateManyContactsArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationCreateManyDealStagesArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT NOT NULL,

    CONSTRAINT "MutationCreateManyDealStagesArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationCreateManyDealsArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT NOT NULL,

    CONSTRAINT "MutationCreateManyDealsArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationCreateManyEventCategoriesArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT NOT NULL,

    CONSTRAINT "MutationCreateManyEventCategoriesArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationCreateManyEventsArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT NOT NULL,

    CONSTRAINT "MutationCreateManyEventsArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationCreateManyQuotesArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT NOT NULL,

    CONSTRAINT "MutationCreateManyQuotesArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationCreateManyTaskCommentsArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT NOT NULL,

    CONSTRAINT "MutationCreateManyTaskCommentsArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationCreateManyTaskStagesArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT NOT NULL,

    CONSTRAINT "MutationCreateManyTaskStagesArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationCreateManyTasksArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT NOT NULL,

    CONSTRAINT "MutationCreateManyTasksArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationCreateManyUsersArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT NOT NULL,

    CONSTRAINT "MutationCreateManyUsersArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationCreateOneCompanyArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT NOT NULL,

    CONSTRAINT "MutationCreateOneCompanyArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationCreateOneCompanyNoteArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT NOT NULL,

    CONSTRAINT "MutationCreateOneCompanyNoteArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationCreateOneContactArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT NOT NULL,

    CONSTRAINT "MutationCreateOneContactArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationCreateOneContactNoteArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT NOT NULL,

    CONSTRAINT "MutationCreateOneContactNoteArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationCreateOneDealArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT NOT NULL,

    CONSTRAINT "MutationCreateOneDealArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationCreateOneDealStageArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT NOT NULL,

    CONSTRAINT "MutationCreateOneDealStageArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationCreateOneEventArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT NOT NULL,

    CONSTRAINT "MutationCreateOneEventArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationCreateOneEventCategoryArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT NOT NULL,

    CONSTRAINT "MutationCreateOneEventCategoryArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationCreateOneQuoteArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT NOT NULL,

    CONSTRAINT "MutationCreateOneQuoteArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationCreateOneTaskArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT NOT NULL,

    CONSTRAINT "MutationCreateOneTaskArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationCreateOneTaskCommentArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT NOT NULL,

    CONSTRAINT "MutationCreateOneTaskCommentArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationCreateOneTaskStageArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT NOT NULL,

    CONSTRAINT "MutationCreateOneTaskStageArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationCreateOneUserArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT NOT NULL,

    CONSTRAINT "MutationCreateOneUserArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationDeleteManyCompaniesArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT NOT NULL,

    CONSTRAINT "MutationDeleteManyCompaniesArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationDeleteManyCompanyNotesArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT NOT NULL,

    CONSTRAINT "MutationDeleteManyCompanyNotesArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationDeleteManyContactNotesArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT NOT NULL,

    CONSTRAINT "MutationDeleteManyContactNotesArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationDeleteManyContactsArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT NOT NULL,

    CONSTRAINT "MutationDeleteManyContactsArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationDeleteManyDealStagesArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT NOT NULL,

    CONSTRAINT "MutationDeleteManyDealStagesArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationDeleteManyDealsArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT NOT NULL,

    CONSTRAINT "MutationDeleteManyDealsArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationDeleteManyEventCategoriesArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT NOT NULL,

    CONSTRAINT "MutationDeleteManyEventCategoriesArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationDeleteManyEventsArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT NOT NULL,

    CONSTRAINT "MutationDeleteManyEventsArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationDeleteManyQuotesArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT NOT NULL,

    CONSTRAINT "MutationDeleteManyQuotesArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationDeleteManyTaskCommentsArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT NOT NULL,

    CONSTRAINT "MutationDeleteManyTaskCommentsArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationDeleteManyTaskStagesArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT NOT NULL,

    CONSTRAINT "MutationDeleteManyTaskStagesArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationDeleteManyTasksArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT NOT NULL,

    CONSTRAINT "MutationDeleteManyTasksArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationDeleteManyUsersArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT NOT NULL,

    CONSTRAINT "MutationDeleteManyUsersArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationDeleteOneCompanyArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT NOT NULL,

    CONSTRAINT "MutationDeleteOneCompanyArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationDeleteOneCompanyNoteArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT NOT NULL,

    CONSTRAINT "MutationDeleteOneCompanyNoteArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationDeleteOneContactArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT NOT NULL,

    CONSTRAINT "MutationDeleteOneContactArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationDeleteOneContactNoteArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT NOT NULL,

    CONSTRAINT "MutationDeleteOneContactNoteArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationDeleteOneDealArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT NOT NULL,

    CONSTRAINT "MutationDeleteOneDealArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationDeleteOneDealStageArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT NOT NULL,

    CONSTRAINT "MutationDeleteOneDealStageArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationDeleteOneEventArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT NOT NULL,

    CONSTRAINT "MutationDeleteOneEventArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationDeleteOneEventCategoryArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT NOT NULL,

    CONSTRAINT "MutationDeleteOneEventCategoryArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationDeleteOneQuoteArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT NOT NULL,

    CONSTRAINT "MutationDeleteOneQuoteArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationDeleteOneTaskArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT NOT NULL,

    CONSTRAINT "MutationDeleteOneTaskArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationDeleteOneTaskCommentArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT NOT NULL,

    CONSTRAINT "MutationDeleteOneTaskCommentArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationDeleteOneTaskStageArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT NOT NULL,

    CONSTRAINT "MutationDeleteOneTaskStageArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationDeleteOneUserArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT NOT NULL,

    CONSTRAINT "MutationDeleteOneUserArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationLoginArgs" (
    "id" TEXT NOT NULL,
    "loginInput" TEXT NOT NULL,

    CONSTRAINT "MutationLoginArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationRefreshTokenArgs" (
    "id" TEXT NOT NULL,
    "refreshToken" TEXT NOT NULL,

    CONSTRAINT "MutationRefreshTokenArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationRegisterArgs" (
    "id" TEXT NOT NULL,
    "registerInput" TEXT NOT NULL,

    CONSTRAINT "MutationRegisterArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationUpdateManyCompaniesArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT NOT NULL,

    CONSTRAINT "MutationUpdateManyCompaniesArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationUpdateManyCompanyNotesArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT NOT NULL,

    CONSTRAINT "MutationUpdateManyCompanyNotesArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationUpdateManyContactNotesArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT NOT NULL,

    CONSTRAINT "MutationUpdateManyContactNotesArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationUpdateManyContactsArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT NOT NULL,

    CONSTRAINT "MutationUpdateManyContactsArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationUpdateManyDealStagesArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT NOT NULL,

    CONSTRAINT "MutationUpdateManyDealStagesArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationUpdateManyDealsArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT NOT NULL,

    CONSTRAINT "MutationUpdateManyDealsArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationUpdateManyEventCategoriesArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT NOT NULL,

    CONSTRAINT "MutationUpdateManyEventCategoriesArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationUpdateManyEventsArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT NOT NULL,

    CONSTRAINT "MutationUpdateManyEventsArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationUpdateManyQuotesArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT NOT NULL,

    CONSTRAINT "MutationUpdateManyQuotesArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationUpdateManyTaskCommentsArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT NOT NULL,

    CONSTRAINT "MutationUpdateManyTaskCommentsArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationUpdateManyTaskStagesArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT NOT NULL,

    CONSTRAINT "MutationUpdateManyTaskStagesArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationUpdateManyTasksArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT NOT NULL,

    CONSTRAINT "MutationUpdateManyTasksArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationUpdateManyUsersArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT NOT NULL,

    CONSTRAINT "MutationUpdateManyUsersArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationUpdateOneCompanyArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT NOT NULL,

    CONSTRAINT "MutationUpdateOneCompanyArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationUpdateOneCompanyNoteArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT NOT NULL,

    CONSTRAINT "MutationUpdateOneCompanyNoteArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationUpdateOneContactArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT NOT NULL,

    CONSTRAINT "MutationUpdateOneContactArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationUpdateOneContactNoteArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT NOT NULL,

    CONSTRAINT "MutationUpdateOneContactNoteArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationUpdateOneDealArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT NOT NULL,

    CONSTRAINT "MutationUpdateOneDealArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationUpdateOneDealStageArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT NOT NULL,

    CONSTRAINT "MutationUpdateOneDealStageArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationUpdateOneEventArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT NOT NULL,

    CONSTRAINT "MutationUpdateOneEventArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationUpdateOneEventCategoryArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT NOT NULL,

    CONSTRAINT "MutationUpdateOneEventCategoryArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationUpdateOneQuoteArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT NOT NULL,

    CONSTRAINT "MutationUpdateOneQuoteArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationUpdateOneTaskArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT NOT NULL,

    CONSTRAINT "MutationUpdateOneTaskArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationUpdateOneTaskCommentArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT NOT NULL,

    CONSTRAINT "MutationUpdateOneTaskCommentArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationUpdateOneTaskStageArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT NOT NULL,

    CONSTRAINT "MutationUpdateOneTaskStageArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutationUpdateOneUserArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT NOT NULL,

    CONSTRAINT "MutationUpdateOneUserArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "NumberFieldComparison" (
    "id" TEXT NOT NULL,
    "between" TEXT,
    "eq" TEXT,
    "gt" TEXT,
    "gte" TEXT,
    "in" TEXT,
    "is" TEXT,
    "isNot" TEXT,
    "lt" TEXT,
    "lte" TEXT,
    "neq" TEXT,
    "notBetween" TEXT,
    "notIn" TEXT,

    CONSTRAINT "NumberFieldComparison_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "NumberFieldComparisonBetween" (
    "id" TEXT NOT NULL,
    "lower" TEXT NOT NULL,
    "upper" TEXT NOT NULL,

    CONSTRAINT "NumberFieldComparisonBetween_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "OffsetPageInfo" (
    "id" TEXT NOT NULL,
    "hasNextPage" TEXT,
    "hasPreviousPage" TEXT,

    CONSTRAINT "OffsetPageInfo_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "OffsetPaging" (
    "id" TEXT NOT NULL,
    "limit" TEXT,
    "offset" TEXT,

    CONSTRAINT "OffsetPaging_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Query" (
    "id" TEXT NOT NULL,
    "audit" TEXT NOT NULL,
    "audits" TEXT NOT NULL,
    "companies" TEXT NOT NULL,
    "company" TEXT NOT NULL,
    "companyAggregate" TEXT NOT NULL,
    "companyNote" TEXT NOT NULL,
    "companyNotes" TEXT NOT NULL,
    "contact" TEXT NOT NULL,
    "contactNote" TEXT NOT NULL,
    "contactNotes" TEXT NOT NULL,
    "contacts" TEXT NOT NULL,
    "deal" TEXT NOT NULL,
    "dealAggregate" TEXT NOT NULL,
    "dealStage" TEXT NOT NULL,
    "dealStages" TEXT NOT NULL,
    "deals" TEXT NOT NULL,
    "event" TEXT NOT NULL,
    "eventCategories" TEXT NOT NULL,
    "eventCategory" TEXT NOT NULL,
    "events" TEXT NOT NULL,
    "me" TEXT NOT NULL,
    "quote" TEXT NOT NULL,
    "quotes" TEXT NOT NULL,
    "task" TEXT NOT NULL,
    "taskAggregate" TEXT NOT NULL,
    "taskComment" TEXT NOT NULL,
    "taskComments" TEXT NOT NULL,
    "taskStage" TEXT NOT NULL,
    "taskStageAggregate" TEXT NOT NULL,
    "taskStages" TEXT NOT NULL,
    "tasks" TEXT NOT NULL,
    "user" TEXT NOT NULL,
    "users" TEXT NOT NULL,

    CONSTRAINT "Query_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "QueryAuditArgs" (
    "id" TEXT NOT NULL,

    CONSTRAINT "QueryAuditArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "QueryAuditsArgs" (
    "id" TEXT NOT NULL,
    "filter" TEXT,
    "paging" TEXT,
    "sorting" TEXT,

    CONSTRAINT "QueryAuditsArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "QueryCompaniesArgs" (
    "id" TEXT NOT NULL,
    "filter" TEXT,
    "paging" TEXT,
    "sorting" TEXT,

    CONSTRAINT "QueryCompaniesArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "QueryCompanyArgs" (
    "id" TEXT NOT NULL,

    CONSTRAINT "QueryCompanyArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "QueryCompanyAggregateArgs" (
    "id" TEXT NOT NULL,
    "filter" TEXT,

    CONSTRAINT "QueryCompanyAggregateArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "QueryCompanyNoteArgs" (
    "id" TEXT NOT NULL,

    CONSTRAINT "QueryCompanyNoteArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "QueryCompanyNotesArgs" (
    "id" TEXT NOT NULL,
    "filter" TEXT,
    "paging" TEXT,
    "sorting" TEXT,

    CONSTRAINT "QueryCompanyNotesArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "QueryContactArgs" (
    "id" TEXT NOT NULL,

    CONSTRAINT "QueryContactArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "QueryContactNoteArgs" (
    "id" TEXT NOT NULL,

    CONSTRAINT "QueryContactNoteArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "QueryContactNotesArgs" (
    "id" TEXT NOT NULL,
    "filter" TEXT,
    "paging" TEXT,
    "sorting" TEXT,

    CONSTRAINT "QueryContactNotesArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "QueryContactsArgs" (
    "id" TEXT NOT NULL,
    "filter" TEXT,
    "paging" TEXT,
    "sorting" TEXT,

    CONSTRAINT "QueryContactsArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "QueryDealArgs" (
    "id" TEXT NOT NULL,

    CONSTRAINT "QueryDealArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "QueryDealAggregateArgs" (
    "id" TEXT NOT NULL,
    "filter" TEXT,

    CONSTRAINT "QueryDealAggregateArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "QueryDealStageArgs" (
    "id" TEXT NOT NULL,

    CONSTRAINT "QueryDealStageArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "QueryDealStagesArgs" (
    "id" TEXT NOT NULL,
    "filter" TEXT,
    "paging" TEXT,
    "sorting" TEXT,

    CONSTRAINT "QueryDealStagesArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "QueryDealsArgs" (
    "id" TEXT NOT NULL,
    "filter" TEXT,
    "paging" TEXT,
    "sorting" TEXT,

    CONSTRAINT "QueryDealsArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "QueryEventArgs" (
    "id" TEXT NOT NULL,

    CONSTRAINT "QueryEventArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "QueryEventCategoriesArgs" (
    "id" TEXT NOT NULL,
    "filter" TEXT,
    "paging" TEXT,
    "sorting" TEXT,

    CONSTRAINT "QueryEventCategoriesArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "QueryEventCategoryArgs" (
    "id" TEXT NOT NULL,

    CONSTRAINT "QueryEventCategoryArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "QueryEventsArgs" (
    "id" TEXT NOT NULL,
    "filter" TEXT,
    "paging" TEXT,
    "sorting" TEXT,

    CONSTRAINT "QueryEventsArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "QueryQuoteArgs" (
    "id" TEXT NOT NULL,

    CONSTRAINT "QueryQuoteArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "QueryQuotesArgs" (
    "id" TEXT NOT NULL,
    "filter" TEXT,
    "paging" TEXT,
    "sorting" TEXT,

    CONSTRAINT "QueryQuotesArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "QueryTaskArgs" (
    "id" TEXT NOT NULL,

    CONSTRAINT "QueryTaskArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "QueryTaskAggregateArgs" (
    "id" TEXT NOT NULL,
    "filter" TEXT,

    CONSTRAINT "QueryTaskAggregateArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "QueryTaskCommentArgs" (
    "id" TEXT NOT NULL,

    CONSTRAINT "QueryTaskCommentArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "QueryTaskCommentsArgs" (
    "id" TEXT NOT NULL,
    "filter" TEXT,
    "paging" TEXT,
    "sorting" TEXT,

    CONSTRAINT "QueryTaskCommentsArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "QueryTaskStageArgs" (
    "id" TEXT NOT NULL,

    CONSTRAINT "QueryTaskStageArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "QueryTaskStageAggregateArgs" (
    "id" TEXT NOT NULL,
    "filter" TEXT,

    CONSTRAINT "QueryTaskStageAggregateArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "QueryTaskStagesArgs" (
    "id" TEXT NOT NULL,
    "filter" TEXT,
    "paging" TEXT,
    "sorting" TEXT,

    CONSTRAINT "QueryTaskStagesArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "QueryTasksArgs" (
    "id" TEXT NOT NULL,
    "filter" TEXT,
    "paging" TEXT,
    "sorting" TEXT,

    CONSTRAINT "QueryTasksArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "QueryUserArgs" (
    "id" TEXT NOT NULL,

    CONSTRAINT "QueryUserArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "QueryUsersArgs" (
    "id" TEXT NOT NULL,
    "filter" TEXT,
    "paging" TEXT,
    "sorting" TEXT,

    CONSTRAINT "QueryUsersArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Quote" (
    "company" TEXT NOT NULL,
    "contact" TEXT NOT NULL,
    "createdAt" TEXT NOT NULL,
    "createdBy" TEXT NOT NULL,
    "description" TEXT,
    "id" TEXT NOT NULL,
    "items" TEXT NOT NULL,
    "salesOwner" TEXT NOT NULL,
    "status" TEXT NOT NULL,
    "subTotal" TEXT NOT NULL,
    "tax" TEXT NOT NULL,
    "title" TEXT NOT NULL,
    "total" TEXT NOT NULL,
    "updatedAt" TEXT NOT NULL,
    "updatedBy" TEXT,

    CONSTRAINT "Quote_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "QuoteConnection" (
    "id" TEXT NOT NULL,
    "nodes" TEXT NOT NULL,
    "pageInfo" TEXT NOT NULL,
    "totalCount" TEXT NOT NULL,

    CONSTRAINT "QuoteConnection_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "QuoteCreateInput" (
    "id" TEXT NOT NULL,
    "companyId" TEXT NOT NULL,
    "contactId" TEXT NOT NULL,
    "salesOwnerId" TEXT NOT NULL,
    "title" TEXT NOT NULL,

    CONSTRAINT "QuoteCreateInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "QuoteDeleteFilter" (
    "and" TEXT,
    "createdAt" TEXT,
    "id" TEXT NOT NULL,
    "or" TEXT,
    "status" TEXT,
    "title" TEXT,
    "total" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "QuoteDeleteFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "QuoteDeleteResponse" (
    "createdAt" TEXT,
    "description" TEXT,
    "id" TEXT NOT NULL,
    "items" TEXT,
    "status" TEXT,
    "subTotal" TEXT,
    "tax" TEXT,
    "title" TEXT,
    "total" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "QuoteDeleteResponse_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "QuoteFilter" (
    "and" TEXT,
    "company" TEXT,
    "contact" TEXT,
    "createdAt" TEXT,
    "createdBy" TEXT,
    "id" TEXT NOT NULL,
    "or" TEXT,
    "salesOwner" TEXT,
    "status" TEXT,
    "title" TEXT,
    "total" TEXT,
    "updatedAt" TEXT,
    "updatedBy" TEXT,

    CONSTRAINT "QuoteFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "QuoteFilterCompanyFilter" (
    "and" TEXT,
    "businessType" TEXT,
    "companySize" TEXT,
    "country" TEXT,
    "createdAt" TEXT,
    "id" TEXT NOT NULL,
    "industry" TEXT,
    "name" TEXT,
    "or" TEXT,
    "totalRevenue" TEXT,
    "updatedAt" TEXT,
    "website" TEXT,

    CONSTRAINT "QuoteFilterCompanyFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "QuoteFilterContactFilter" (
    "and" TEXT,
    "createdAt" TEXT,
    "email" TEXT,
    "id" TEXT NOT NULL,
    "jobTitle" TEXT,
    "name" TEXT,
    "or" TEXT,
    "phone" TEXT,
    "score" TEXT,
    "stage" TEXT,
    "status" TEXT,
    "timezone" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "QuoteFilterContactFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "QuoteFilterUserFilter" (
    "and" TEXT,
    "createdAt" TEXT,
    "email" TEXT,
    "id" TEXT NOT NULL,
    "jobTitle" TEXT,
    "name" TEXT,
    "or" TEXT,
    "phone" TEXT,
    "role" TEXT,
    "timezone" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "QuoteFilterUserFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "QuoteItem" (
    "id" TEXT NOT NULL,
    "discount" TEXT NOT NULL,
    "quantity" TEXT NOT NULL,
    "title" TEXT NOT NULL,
    "totalPrice" TEXT NOT NULL,
    "unitPrice" TEXT NOT NULL,

    CONSTRAINT "QuoteItem_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "QuoteItemInput" (
    "id" TEXT NOT NULL,
    "discount" TEXT NOT NULL,
    "quantity" TEXT NOT NULL,
    "title" TEXT NOT NULL,
    "unitPrice" TEXT NOT NULL,

    CONSTRAINT "QuoteItemInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "QuoteSort" (
    "id" TEXT NOT NULL,
    "direction" TEXT NOT NULL,
    "field" TEXT NOT NULL,
    "nulls" TEXT,

    CONSTRAINT "QuoteSort_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "QuoteStatusFilterComparison" (
    "id" TEXT NOT NULL,
    "eq" TEXT,
    "gt" TEXT,
    "gte" TEXT,
    "iLike" TEXT,
    "in" TEXT,
    "is" TEXT,
    "isNot" TEXT,
    "like" TEXT,
    "lt" TEXT,
    "lte" TEXT,
    "neq" TEXT,
    "notILike" TEXT,
    "notIn" TEXT,
    "notLike" TEXT,

    CONSTRAINT "QuoteStatusFilterComparison_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "QuoteSubscriptionFilter" (
    "and" TEXT,
    "createdAt" TEXT,
    "id" TEXT NOT NULL,
    "or" TEXT,
    "status" TEXT,
    "title" TEXT,
    "total" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "QuoteSubscriptionFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "QuoteUpdateFilter" (
    "and" TEXT,
    "createdAt" TEXT,
    "id" TEXT NOT NULL,
    "or" TEXT,
    "status" TEXT,
    "title" TEXT,
    "total" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "QuoteUpdateFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "QuoteUpdateInput" (
    "id" TEXT NOT NULL,
    "companyId" TEXT,
    "contactId" TEXT,
    "description" TEXT,
    "items" TEXT,
    "salesOwnerId" TEXT,
    "status" TEXT,
    "tax" TEXT,
    "title" TEXT,

    CONSTRAINT "QuoteUpdateInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "RegisterInput" (
    "id" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "password" TEXT NOT NULL,

    CONSTRAINT "RegisterInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "StringFieldComparison" (
    "id" TEXT NOT NULL,
    "eq" TEXT,
    "gt" TEXT,
    "gte" TEXT,
    "iLike" TEXT,
    "in" TEXT,
    "is" TEXT,
    "isNot" TEXT,
    "like" TEXT,
    "lt" TEXT,
    "lte" TEXT,
    "neq" TEXT,
    "notILike" TEXT,
    "notIn" TEXT,
    "notLike" TEXT,

    CONSTRAINT "StringFieldComparison_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Subscription" (
    "id" TEXT NOT NULL,
    "createdAudit" TEXT NOT NULL,
    "createdCompany" TEXT NOT NULL,
    "createdCompanyNote" TEXT NOT NULL,
    "createdContact" TEXT NOT NULL,
    "createdContactNote" TEXT NOT NULL,
    "createdDeal" TEXT NOT NULL,
    "createdDealStage" TEXT NOT NULL,
    "createdEvent" TEXT NOT NULL,
    "createdEventCategory" TEXT NOT NULL,
    "createdQuote" TEXT NOT NULL,
    "createdTask" TEXT NOT NULL,
    "createdTaskComment" TEXT NOT NULL,
    "createdTaskStage" TEXT NOT NULL,
    "createdUser" TEXT NOT NULL,
    "deletedManyAudits" TEXT NOT NULL,
    "deletedManyCompanies" TEXT NOT NULL,
    "deletedManyCompanyNotes" TEXT NOT NULL,
    "deletedManyContactNotes" TEXT NOT NULL,
    "deletedManyContacts" TEXT NOT NULL,
    "deletedManyDealStages" TEXT NOT NULL,
    "deletedManyDeals" TEXT NOT NULL,
    "deletedManyEventCategories" TEXT NOT NULL,
    "deletedManyEvents" TEXT NOT NULL,
    "deletedManyQuotes" TEXT NOT NULL,
    "deletedManyTaskComments" TEXT NOT NULL,
    "deletedManyTaskStages" TEXT NOT NULL,
    "deletedManyTasks" TEXT NOT NULL,
    "deletedManyUsers" TEXT NOT NULL,
    "deletedOneAudit" TEXT NOT NULL,
    "deletedOneCompany" TEXT NOT NULL,
    "deletedOneCompanyNote" TEXT NOT NULL,
    "deletedOneContact" TEXT NOT NULL,
    "deletedOneContactNote" TEXT NOT NULL,
    "deletedOneDeal" TEXT NOT NULL,
    "deletedOneDealStage" TEXT NOT NULL,
    "deletedOneEvent" TEXT NOT NULL,
    "deletedOneEventCategory" TEXT NOT NULL,
    "deletedOneQuote" TEXT NOT NULL,
    "deletedOneTask" TEXT NOT NULL,
    "deletedOneTaskComment" TEXT NOT NULL,
    "deletedOneTaskStage" TEXT NOT NULL,
    "deletedOneUser" TEXT NOT NULL,
    "updatedManyAudits" TEXT NOT NULL,
    "updatedManyCompanies" TEXT NOT NULL,
    "updatedManyCompanyNotes" TEXT NOT NULL,
    "updatedManyContactNotes" TEXT NOT NULL,
    "updatedManyContacts" TEXT NOT NULL,
    "updatedManyDealStages" TEXT NOT NULL,
    "updatedManyDeals" TEXT NOT NULL,
    "updatedManyEventCategories" TEXT NOT NULL,
    "updatedManyEvents" TEXT NOT NULL,
    "updatedManyQuotes" TEXT NOT NULL,
    "updatedManyTaskComments" TEXT NOT NULL,
    "updatedManyTaskStages" TEXT NOT NULL,
    "updatedManyTasks" TEXT NOT NULL,
    "updatedManyUsers" TEXT NOT NULL,
    "updatedOneAudit" TEXT NOT NULL,
    "updatedOneCompany" TEXT NOT NULL,
    "updatedOneCompanyNote" TEXT NOT NULL,
    "updatedOneContact" TEXT NOT NULL,
    "updatedOneContactNote" TEXT NOT NULL,
    "updatedOneDeal" TEXT NOT NULL,
    "updatedOneDealStage" TEXT NOT NULL,
    "updatedOneEvent" TEXT NOT NULL,
    "updatedOneEventCategory" TEXT NOT NULL,
    "updatedOneQuote" TEXT NOT NULL,
    "updatedOneTask" TEXT NOT NULL,
    "updatedOneTaskComment" TEXT NOT NULL,
    "updatedOneTaskStage" TEXT NOT NULL,
    "updatedOneUser" TEXT NOT NULL,

    CONSTRAINT "Subscription_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SubscriptionCreatedAuditArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT,

    CONSTRAINT "SubscriptionCreatedAuditArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SubscriptionCreatedCompanyArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT,

    CONSTRAINT "SubscriptionCreatedCompanyArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SubscriptionCreatedCompanyNoteArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT,

    CONSTRAINT "SubscriptionCreatedCompanyNoteArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SubscriptionCreatedContactArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT,

    CONSTRAINT "SubscriptionCreatedContactArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SubscriptionCreatedContactNoteArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT,

    CONSTRAINT "SubscriptionCreatedContactNoteArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SubscriptionCreatedDealArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT,

    CONSTRAINT "SubscriptionCreatedDealArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SubscriptionCreatedDealStageArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT,

    CONSTRAINT "SubscriptionCreatedDealStageArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SubscriptionCreatedEventArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT,

    CONSTRAINT "SubscriptionCreatedEventArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SubscriptionCreatedEventCategoryArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT,

    CONSTRAINT "SubscriptionCreatedEventCategoryArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SubscriptionCreatedQuoteArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT,

    CONSTRAINT "SubscriptionCreatedQuoteArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SubscriptionCreatedTaskArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT,

    CONSTRAINT "SubscriptionCreatedTaskArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SubscriptionCreatedTaskCommentArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT,

    CONSTRAINT "SubscriptionCreatedTaskCommentArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SubscriptionCreatedTaskStageArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT,

    CONSTRAINT "SubscriptionCreatedTaskStageArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SubscriptionCreatedUserArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT,

    CONSTRAINT "SubscriptionCreatedUserArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SubscriptionDeletedOneAuditArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT,

    CONSTRAINT "SubscriptionDeletedOneAuditArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SubscriptionDeletedOneCompanyArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT,

    CONSTRAINT "SubscriptionDeletedOneCompanyArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SubscriptionDeletedOneCompanyNoteArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT,

    CONSTRAINT "SubscriptionDeletedOneCompanyNoteArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SubscriptionDeletedOneContactArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT,

    CONSTRAINT "SubscriptionDeletedOneContactArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SubscriptionDeletedOneContactNoteArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT,

    CONSTRAINT "SubscriptionDeletedOneContactNoteArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SubscriptionDeletedOneDealArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT,

    CONSTRAINT "SubscriptionDeletedOneDealArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SubscriptionDeletedOneDealStageArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT,

    CONSTRAINT "SubscriptionDeletedOneDealStageArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SubscriptionDeletedOneEventArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT,

    CONSTRAINT "SubscriptionDeletedOneEventArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SubscriptionDeletedOneEventCategoryArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT,

    CONSTRAINT "SubscriptionDeletedOneEventCategoryArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SubscriptionDeletedOneQuoteArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT,

    CONSTRAINT "SubscriptionDeletedOneQuoteArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SubscriptionDeletedOneTaskArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT,

    CONSTRAINT "SubscriptionDeletedOneTaskArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SubscriptionDeletedOneTaskCommentArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT,

    CONSTRAINT "SubscriptionDeletedOneTaskCommentArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SubscriptionDeletedOneTaskStageArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT,

    CONSTRAINT "SubscriptionDeletedOneTaskStageArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SubscriptionDeletedOneUserArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT,

    CONSTRAINT "SubscriptionDeletedOneUserArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SubscriptionUpdatedOneAuditArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT,

    CONSTRAINT "SubscriptionUpdatedOneAuditArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SubscriptionUpdatedOneCompanyArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT,

    CONSTRAINT "SubscriptionUpdatedOneCompanyArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SubscriptionUpdatedOneCompanyNoteArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT,

    CONSTRAINT "SubscriptionUpdatedOneCompanyNoteArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SubscriptionUpdatedOneContactArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT,

    CONSTRAINT "SubscriptionUpdatedOneContactArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SubscriptionUpdatedOneContactNoteArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT,

    CONSTRAINT "SubscriptionUpdatedOneContactNoteArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SubscriptionUpdatedOneDealArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT,

    CONSTRAINT "SubscriptionUpdatedOneDealArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SubscriptionUpdatedOneDealStageArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT,

    CONSTRAINT "SubscriptionUpdatedOneDealStageArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SubscriptionUpdatedOneEventArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT,

    CONSTRAINT "SubscriptionUpdatedOneEventArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SubscriptionUpdatedOneEventCategoryArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT,

    CONSTRAINT "SubscriptionUpdatedOneEventCategoryArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SubscriptionUpdatedOneQuoteArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT,

    CONSTRAINT "SubscriptionUpdatedOneQuoteArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SubscriptionUpdatedOneTaskArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT,

    CONSTRAINT "SubscriptionUpdatedOneTaskArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SubscriptionUpdatedOneTaskCommentArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT,

    CONSTRAINT "SubscriptionUpdatedOneTaskCommentArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SubscriptionUpdatedOneTaskStageArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT,

    CONSTRAINT "SubscriptionUpdatedOneTaskStageArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SubscriptionUpdatedOneUserArgs" (
    "id" TEXT NOT NULL,
    "input" TEXT,

    CONSTRAINT "SubscriptionUpdatedOneUserArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Task" (
    "checklist" TEXT NOT NULL,
    "comments" TEXT NOT NULL,
    "commentsAggregate" TEXT NOT NULL,
    "completed" TEXT NOT NULL,
    "createdAt" TEXT NOT NULL,
    "createdBy" TEXT NOT NULL,
    "description" TEXT,
    "dueDate" TEXT,
    "id" TEXT NOT NULL,
    "stage" TEXT,
    "stageId" TEXT,
    "title" TEXT NOT NULL,
    "updatedAt" TEXT NOT NULL,
    "updatedBy" TEXT,
    "users" TEXT NOT NULL,
    "usersAggregate" TEXT NOT NULL,

    CONSTRAINT "Task_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskCommentsArgs" (
    "id" TEXT NOT NULL,
    "filter" TEXT,
    "paging" TEXT,
    "sorting" TEXT,

    CONSTRAINT "TaskCommentsArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskCommentsAggregateArgs" (
    "id" TEXT NOT NULL,
    "filter" TEXT,

    CONSTRAINT "TaskCommentsAggregateArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskUsersArgs" (
    "id" TEXT NOT NULL,
    "filter" TEXT,
    "sorting" TEXT,

    CONSTRAINT "TaskUsersArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskUsersAggregateArgs" (
    "id" TEXT NOT NULL,
    "filter" TEXT,

    CONSTRAINT "TaskUsersAggregateArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskAggregateFilter" (
    "and" TEXT,
    "completed" TEXT,
    "createdAt" TEXT,
    "description" TEXT,
    "dueDate" TEXT,
    "id" TEXT NOT NULL,
    "or" TEXT,
    "stageId" TEXT,
    "title" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "TaskAggregateFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskAggregateGroupBy" (
    "completed" TEXT,
    "createdAt" TEXT,
    "description" TEXT,
    "dueDate" TEXT,
    "id" TEXT NOT NULL,
    "stageId" TEXT,
    "title" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "TaskAggregateGroupBy_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskAggregateGroupByCreatedAtArgs" (
    "id" TEXT NOT NULL,
    "by" TEXT,

    CONSTRAINT "TaskAggregateGroupByCreatedAtArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskAggregateGroupByDueDateArgs" (
    "id" TEXT NOT NULL,
    "by" TEXT,

    CONSTRAINT "TaskAggregateGroupByDueDateArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskAggregateGroupByUpdatedAtArgs" (
    "id" TEXT NOT NULL,
    "by" TEXT,

    CONSTRAINT "TaskAggregateGroupByUpdatedAtArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskAggregateResponse" (
    "id" TEXT NOT NULL,
    "avg" TEXT,
    "count" TEXT,
    "groupBy" TEXT,
    "max" TEXT,
    "min" TEXT,
    "sum" TEXT,

    CONSTRAINT "TaskAggregateResponse_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskAvgAggregate" (
    "id" TEXT NOT NULL,
    "stageId" TEXT,

    CONSTRAINT "TaskAvgAggregate_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskComment" (
    "comment" TEXT NOT NULL,
    "createdAt" TEXT NOT NULL,
    "createdBy" TEXT NOT NULL,
    "id" TEXT NOT NULL,
    "task" TEXT NOT NULL,
    "updatedAt" TEXT NOT NULL,
    "updatedBy" TEXT,

    CONSTRAINT "TaskComment_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskCommentAggregateFilter" (
    "and" TEXT,
    "createdAt" TEXT,
    "id" TEXT NOT NULL,
    "or" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "TaskCommentAggregateFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskCommentConnection" (
    "id" TEXT NOT NULL,
    "nodes" TEXT NOT NULL,
    "pageInfo" TEXT NOT NULL,
    "totalCount" TEXT NOT NULL,

    CONSTRAINT "TaskCommentConnection_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskCommentCreateInput" (
    "id" TEXT NOT NULL,
    "comment" TEXT NOT NULL,
    "taskId" TEXT NOT NULL,

    CONSTRAINT "TaskCommentCreateInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskCommentDeleteFilter" (
    "and" TEXT,
    "createdAt" TEXT,
    "id" TEXT NOT NULL,
    "or" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "TaskCommentDeleteFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskCommentDeleteResponse" (
    "comment" TEXT,
    "createdAt" TEXT,
    "id" TEXT NOT NULL,
    "updatedAt" TEXT,

    CONSTRAINT "TaskCommentDeleteResponse_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskCommentFilter" (
    "and" TEXT,
    "createdAt" TEXT,
    "createdBy" TEXT,
    "id" TEXT NOT NULL,
    "or" TEXT,
    "task" TEXT,
    "updatedAt" TEXT,
    "updatedBy" TEXT,

    CONSTRAINT "TaskCommentFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskCommentFilterTaskFilter" (
    "and" TEXT,
    "completed" TEXT,
    "createdAt" TEXT,
    "description" TEXT,
    "dueDate" TEXT,
    "id" TEXT NOT NULL,
    "or" TEXT,
    "stageId" TEXT,
    "title" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "TaskCommentFilterTaskFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskCommentFilterUserFilter" (
    "and" TEXT,
    "createdAt" TEXT,
    "email" TEXT,
    "id" TEXT NOT NULL,
    "jobTitle" TEXT,
    "name" TEXT,
    "or" TEXT,
    "phone" TEXT,
    "role" TEXT,
    "timezone" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "TaskCommentFilterUserFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskCommentSort" (
    "id" TEXT NOT NULL,
    "direction" TEXT NOT NULL,
    "field" TEXT NOT NULL,
    "nulls" TEXT,

    CONSTRAINT "TaskCommentSort_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskCommentSubscriptionFilter" (
    "and" TEXT,
    "createdAt" TEXT,
    "id" TEXT NOT NULL,
    "or" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "TaskCommentSubscriptionFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskCommentUpdateFilter" (
    "and" TEXT,
    "createdAt" TEXT,
    "id" TEXT NOT NULL,
    "or" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "TaskCommentUpdateFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskCommentUpdateInput" (
    "id" TEXT NOT NULL,
    "comment" TEXT NOT NULL,

    CONSTRAINT "TaskCommentUpdateInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskCommentsAggregateGroupBy" (
    "createdAt" TEXT,
    "id" TEXT NOT NULL,
    "updatedAt" TEXT,

    CONSTRAINT "TaskCommentsAggregateGroupBy_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskCommentsAggregateResponse" (
    "id" TEXT NOT NULL,
    "avg" TEXT,
    "count" TEXT,
    "groupBy" TEXT,
    "max" TEXT,
    "min" TEXT,
    "sum" TEXT,

    CONSTRAINT "TaskCommentsAggregateResponse_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskCommentsAvgAggregate" (
    "id" TEXT NOT NULL,

    CONSTRAINT "TaskCommentsAvgAggregate_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskCommentsConnection" (
    "id" TEXT NOT NULL,
    "nodes" TEXT NOT NULL,
    "pageInfo" TEXT NOT NULL,
    "totalCount" TEXT NOT NULL,

    CONSTRAINT "TaskCommentsConnection_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskCommentsCountAggregate" (
    "createdAt" TEXT,
    "id" TEXT NOT NULL,
    "updatedAt" TEXT,

    CONSTRAINT "TaskCommentsCountAggregate_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskCommentsMaxAggregate" (
    "createdAt" TEXT,
    "id" TEXT NOT NULL,
    "updatedAt" TEXT,

    CONSTRAINT "TaskCommentsMaxAggregate_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskCommentsMinAggregate" (
    "createdAt" TEXT,
    "id" TEXT NOT NULL,
    "updatedAt" TEXT,

    CONSTRAINT "TaskCommentsMinAggregate_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskCommentsSumAggregate" (
    "id" TEXT NOT NULL,

    CONSTRAINT "TaskCommentsSumAggregate_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskConnection" (
    "id" TEXT NOT NULL,
    "nodes" TEXT NOT NULL,
    "pageInfo" TEXT NOT NULL,
    "totalCount" TEXT NOT NULL,

    CONSTRAINT "TaskConnection_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskCountAggregate" (
    "completed" TEXT,
    "createdAt" TEXT,
    "description" TEXT,
    "dueDate" TEXT,
    "id" TEXT NOT NULL,
    "stageId" TEXT,
    "title" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "TaskCountAggregate_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskCreateInput" (
    "id" TEXT NOT NULL,
    "checklist" TEXT,
    "description" TEXT,
    "dueDate" TEXT,
    "stageId" TEXT,
    "title" TEXT NOT NULL,
    "userIds" TEXT,

    CONSTRAINT "TaskCreateInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskDeleteFilter" (
    "and" TEXT,
    "completed" TEXT,
    "createdAt" TEXT,
    "description" TEXT,
    "dueDate" TEXT,
    "id" TEXT NOT NULL,
    "or" TEXT,
    "stageId" TEXT,
    "title" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "TaskDeleteFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskDeleteResponse" (
    "checklist" TEXT,
    "completed" TEXT,
    "createdAt" TEXT,
    "description" TEXT,
    "dueDate" TEXT,
    "id" TEXT NOT NULL,
    "stageId" TEXT,
    "title" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "TaskDeleteResponse_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskFilter" (
    "and" TEXT,
    "comments" TEXT,
    "completed" TEXT,
    "createdAt" TEXT,
    "createdBy" TEXT,
    "description" TEXT,
    "dueDate" TEXT,
    "id" TEXT NOT NULL,
    "or" TEXT,
    "stage" TEXT,
    "stageId" TEXT,
    "title" TEXT,
    "updatedAt" TEXT,
    "updatedBy" TEXT,

    CONSTRAINT "TaskFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskFilterTaskCommentFilter" (
    "and" TEXT,
    "createdAt" TEXT,
    "id" TEXT NOT NULL,
    "or" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "TaskFilterTaskCommentFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskFilterTaskStageFilter" (
    "and" TEXT,
    "createdAt" TEXT,
    "id" TEXT NOT NULL,
    "or" TEXT,
    "title" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "TaskFilterTaskStageFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskFilterUserFilter" (
    "and" TEXT,
    "createdAt" TEXT,
    "email" TEXT,
    "id" TEXT NOT NULL,
    "jobTitle" TEXT,
    "name" TEXT,
    "or" TEXT,
    "phone" TEXT,
    "role" TEXT,
    "timezone" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "TaskFilterUserFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskMaxAggregate" (
    "createdAt" TEXT,
    "description" TEXT,
    "dueDate" TEXT,
    "id" TEXT NOT NULL,
    "stageId" TEXT,
    "title" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "TaskMaxAggregate_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskMinAggregate" (
    "createdAt" TEXT,
    "description" TEXT,
    "dueDate" TEXT,
    "id" TEXT NOT NULL,
    "stageId" TEXT,
    "title" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "TaskMinAggregate_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskSort" (
    "id" TEXT NOT NULL,
    "direction" TEXT NOT NULL,
    "field" TEXT NOT NULL,
    "nulls" TEXT,

    CONSTRAINT "TaskSort_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskStage" (
    "createdAt" TEXT NOT NULL,
    "createdBy" TEXT NOT NULL,
    "id" TEXT NOT NULL,
    "tasks" TEXT NOT NULL,
    "tasksAggregate" TEXT NOT NULL,
    "title" TEXT NOT NULL,
    "updatedAt" TEXT NOT NULL,
    "updatedBy" TEXT,

    CONSTRAINT "TaskStage_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskStageTasksArgs" (
    "id" TEXT NOT NULL,
    "filter" TEXT,
    "sorting" TEXT,

    CONSTRAINT "TaskStageTasksArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskStageTasksAggregateArgs" (
    "id" TEXT NOT NULL,
    "filter" TEXT,

    CONSTRAINT "TaskStageTasksAggregateArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskStageAggregateFilter" (
    "and" TEXT,
    "createdAt" TEXT,
    "id" TEXT NOT NULL,
    "or" TEXT,
    "title" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "TaskStageAggregateFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskStageAggregateGroupBy" (
    "createdAt" TEXT,
    "id" TEXT NOT NULL,
    "title" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "TaskStageAggregateGroupBy_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskStageAggregateGroupByCreatedAtArgs" (
    "id" TEXT NOT NULL,
    "by" TEXT,

    CONSTRAINT "TaskStageAggregateGroupByCreatedAtArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskStageAggregateGroupByUpdatedAtArgs" (
    "id" TEXT NOT NULL,
    "by" TEXT,

    CONSTRAINT "TaskStageAggregateGroupByUpdatedAtArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskStageAggregateResponse" (
    "id" TEXT NOT NULL,
    "avg" TEXT,
    "count" TEXT,
    "groupBy" TEXT,
    "max" TEXT,
    "min" TEXT,
    "sum" TEXT,

    CONSTRAINT "TaskStageAggregateResponse_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskStageAvgAggregate" (
    "id" TEXT NOT NULL,

    CONSTRAINT "TaskStageAvgAggregate_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskStageConnection" (
    "id" TEXT NOT NULL,
    "nodes" TEXT NOT NULL,
    "pageInfo" TEXT NOT NULL,
    "totalCount" TEXT NOT NULL,

    CONSTRAINT "TaskStageConnection_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskStageCountAggregate" (
    "createdAt" TEXT,
    "id" TEXT NOT NULL,
    "title" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "TaskStageCountAggregate_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskStageCreateInput" (
    "id" TEXT NOT NULL,
    "title" TEXT NOT NULL,

    CONSTRAINT "TaskStageCreateInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskStageDeleteFilter" (
    "and" TEXT,
    "createdAt" TEXT,
    "id" TEXT NOT NULL,
    "or" TEXT,
    "title" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "TaskStageDeleteFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskStageDeleteResponse" (
    "createdAt" TEXT,
    "id" TEXT NOT NULL,
    "title" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "TaskStageDeleteResponse_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskStageFilter" (
    "and" TEXT,
    "createdAt" TEXT,
    "createdBy" TEXT,
    "id" TEXT NOT NULL,
    "or" TEXT,
    "title" TEXT,
    "updatedAt" TEXT,
    "updatedBy" TEXT,

    CONSTRAINT "TaskStageFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskStageFilterUserFilter" (
    "and" TEXT,
    "createdAt" TEXT,
    "email" TEXT,
    "id" TEXT NOT NULL,
    "jobTitle" TEXT,
    "name" TEXT,
    "or" TEXT,
    "phone" TEXT,
    "role" TEXT,
    "timezone" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "TaskStageFilterUserFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskStageMaxAggregate" (
    "createdAt" TEXT,
    "id" TEXT NOT NULL,
    "title" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "TaskStageMaxAggregate_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskStageMinAggregate" (
    "createdAt" TEXT,
    "id" TEXT NOT NULL,
    "title" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "TaskStageMinAggregate_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskStageSort" (
    "id" TEXT NOT NULL,
    "direction" TEXT NOT NULL,
    "field" TEXT NOT NULL,
    "nulls" TEXT,

    CONSTRAINT "TaskStageSort_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskStageSubscriptionFilter" (
    "and" TEXT,
    "createdAt" TEXT,
    "id" TEXT NOT NULL,
    "or" TEXT,
    "title" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "TaskStageSubscriptionFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskStageSumAggregate" (
    "id" TEXT NOT NULL,

    CONSTRAINT "TaskStageSumAggregate_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskStageTasksAggregateGroupBy" (
    "completed" TEXT,
    "createdAt" TEXT,
    "description" TEXT,
    "dueDate" TEXT,
    "id" TEXT NOT NULL,
    "stageId" TEXT,
    "title" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "TaskStageTasksAggregateGroupBy_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskStageTasksAggregateResponse" (
    "id" TEXT NOT NULL,
    "avg" TEXT,
    "count" TEXT,
    "groupBy" TEXT,
    "max" TEXT,
    "min" TEXT,
    "sum" TEXT,

    CONSTRAINT "TaskStageTasksAggregateResponse_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskStageTasksAvgAggregate" (
    "id" TEXT NOT NULL,
    "stageId" TEXT,

    CONSTRAINT "TaskStageTasksAvgAggregate_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskStageTasksCountAggregate" (
    "completed" TEXT,
    "createdAt" TEXT,
    "description" TEXT,
    "dueDate" TEXT,
    "id" TEXT NOT NULL,
    "stageId" TEXT,
    "title" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "TaskStageTasksCountAggregate_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskStageTasksMaxAggregate" (
    "createdAt" TEXT,
    "description" TEXT,
    "dueDate" TEXT,
    "id" TEXT NOT NULL,
    "stageId" TEXT,
    "title" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "TaskStageTasksMaxAggregate_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskStageTasksMinAggregate" (
    "createdAt" TEXT,
    "description" TEXT,
    "dueDate" TEXT,
    "id" TEXT NOT NULL,
    "stageId" TEXT,
    "title" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "TaskStageTasksMinAggregate_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskStageTasksSumAggregate" (
    "id" TEXT NOT NULL,
    "stageId" TEXT,

    CONSTRAINT "TaskStageTasksSumAggregate_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskStageUpdateFilter" (
    "and" TEXT,
    "createdAt" TEXT,
    "id" TEXT NOT NULL,
    "or" TEXT,
    "title" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "TaskStageUpdateFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskStageUpdateInput" (
    "id" TEXT NOT NULL,
    "title" TEXT NOT NULL,

    CONSTRAINT "TaskStageUpdateInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskSubscriptionFilter" (
    "and" TEXT,
    "completed" TEXT,
    "createdAt" TEXT,
    "description" TEXT,
    "dueDate" TEXT,
    "id" TEXT NOT NULL,
    "or" TEXT,
    "stageId" TEXT,
    "title" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "TaskSubscriptionFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskSumAggregate" (
    "id" TEXT NOT NULL,
    "stageId" TEXT,

    CONSTRAINT "TaskSumAggregate_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskUpdateFilter" (
    "and" TEXT,
    "completed" TEXT,
    "createdAt" TEXT,
    "description" TEXT,
    "dueDate" TEXT,
    "id" TEXT NOT NULL,
    "or" TEXT,
    "stageId" TEXT,
    "title" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "TaskUpdateFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskUpdateInput" (
    "id" TEXT NOT NULL,
    "checklist" TEXT,
    "completed" TEXT,
    "description" TEXT,
    "dueDate" TEXT,
    "stageId" TEXT,
    "title" TEXT,
    "userIds" TEXT,

    CONSTRAINT "TaskUpdateInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskUsersAggregateGroupBy" (
    "createdAt" TEXT,
    "email" TEXT,
    "id" TEXT NOT NULL,
    "jobTitle" TEXT,
    "name" TEXT,
    "phone" TEXT,
    "role" TEXT,
    "timezone" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "TaskUsersAggregateGroupBy_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskUsersAggregateResponse" (
    "id" TEXT NOT NULL,
    "avg" TEXT,
    "count" TEXT,
    "groupBy" TEXT,
    "max" TEXT,
    "min" TEXT,
    "sum" TEXT,

    CONSTRAINT "TaskUsersAggregateResponse_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskUsersAvgAggregate" (
    "id" TEXT NOT NULL,

    CONSTRAINT "TaskUsersAvgAggregate_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskUsersCountAggregate" (
    "createdAt" TEXT,
    "email" TEXT,
    "id" TEXT NOT NULL,
    "jobTitle" TEXT,
    "name" TEXT,
    "phone" TEXT,
    "role" TEXT,
    "timezone" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "TaskUsersCountAggregate_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskUsersMaxAggregate" (
    "createdAt" TEXT,
    "email" TEXT,
    "id" TEXT NOT NULL,
    "jobTitle" TEXT,
    "name" TEXT,
    "phone" TEXT,
    "role" TEXT,
    "timezone" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "TaskUsersMaxAggregate_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskUsersMinAggregate" (
    "createdAt" TEXT,
    "email" TEXT,
    "id" TEXT NOT NULL,
    "jobTitle" TEXT,
    "name" TEXT,
    "phone" TEXT,
    "role" TEXT,
    "timezone" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "TaskUsersMinAggregate_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskUsersSumAggregate" (
    "id" TEXT NOT NULL,

    CONSTRAINT "TaskUsersSumAggregate_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UpdateManyCompaniesInput" (
    "id" TEXT NOT NULL,
    "filter" TEXT NOT NULL,
    "update" TEXT NOT NULL,

    CONSTRAINT "UpdateManyCompaniesInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UpdateManyCompanyNotesInput" (
    "id" TEXT NOT NULL,
    "filter" TEXT NOT NULL,
    "update" TEXT NOT NULL,

    CONSTRAINT "UpdateManyCompanyNotesInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UpdateManyContactNotesInput" (
    "id" TEXT NOT NULL,
    "filter" TEXT NOT NULL,
    "update" TEXT NOT NULL,

    CONSTRAINT "UpdateManyContactNotesInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UpdateManyContactsInput" (
    "id" TEXT NOT NULL,
    "filter" TEXT NOT NULL,
    "update" TEXT NOT NULL,

    CONSTRAINT "UpdateManyContactsInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UpdateManyDealStagesInput" (
    "id" TEXT NOT NULL,
    "filter" TEXT NOT NULL,
    "update" TEXT NOT NULL,

    CONSTRAINT "UpdateManyDealStagesInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UpdateManyDealsInput" (
    "id" TEXT NOT NULL,
    "filter" TEXT NOT NULL,
    "update" TEXT NOT NULL,

    CONSTRAINT "UpdateManyDealsInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UpdateManyEventCategoriesInput" (
    "id" TEXT NOT NULL,
    "filter" TEXT NOT NULL,
    "update" TEXT NOT NULL,

    CONSTRAINT "UpdateManyEventCategoriesInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UpdateManyEventsInput" (
    "id" TEXT NOT NULL,
    "filter" TEXT NOT NULL,
    "update" TEXT NOT NULL,

    CONSTRAINT "UpdateManyEventsInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UpdateManyQuotesInput" (
    "id" TEXT NOT NULL,
    "filter" TEXT NOT NULL,
    "update" TEXT NOT NULL,

    CONSTRAINT "UpdateManyQuotesInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UpdateManyResponse" (
    "id" TEXT NOT NULL,
    "updatedCount" TEXT NOT NULL,

    CONSTRAINT "UpdateManyResponse_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UpdateManyTaskCommentsInput" (
    "id" TEXT NOT NULL,
    "filter" TEXT NOT NULL,
    "update" TEXT NOT NULL,

    CONSTRAINT "UpdateManyTaskCommentsInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UpdateManyTaskStagesInput" (
    "id" TEXT NOT NULL,
    "filter" TEXT NOT NULL,
    "update" TEXT NOT NULL,

    CONSTRAINT "UpdateManyTaskStagesInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UpdateManyTasksInput" (
    "id" TEXT NOT NULL,
    "filter" TEXT NOT NULL,
    "update" TEXT NOT NULL,

    CONSTRAINT "UpdateManyTasksInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UpdateManyUsersInput" (
    "id" TEXT NOT NULL,
    "filter" TEXT NOT NULL,
    "update" TEXT NOT NULL,

    CONSTRAINT "UpdateManyUsersInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UpdateOneAuditSubscriptionFilterInput" (
    "id" TEXT NOT NULL,
    "filter" TEXT NOT NULL,

    CONSTRAINT "UpdateOneAuditSubscriptionFilterInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UpdateOneCompanyInput" (
    "id" TEXT NOT NULL,
    "update" TEXT NOT NULL,

    CONSTRAINT "UpdateOneCompanyInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UpdateOneCompanyNoteInput" (
    "id" TEXT NOT NULL,
    "update" TEXT NOT NULL,

    CONSTRAINT "UpdateOneCompanyNoteInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UpdateOneCompanyNoteSubscriptionFilterInput" (
    "id" TEXT NOT NULL,
    "filter" TEXT NOT NULL,

    CONSTRAINT "UpdateOneCompanyNoteSubscriptionFilterInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UpdateOneCompanySubscriptionFilterInput" (
    "id" TEXT NOT NULL,
    "filter" TEXT NOT NULL,

    CONSTRAINT "UpdateOneCompanySubscriptionFilterInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UpdateOneContactInput" (
    "id" TEXT NOT NULL,
    "update" TEXT NOT NULL,

    CONSTRAINT "UpdateOneContactInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UpdateOneContactNoteInput" (
    "id" TEXT NOT NULL,
    "update" TEXT NOT NULL,

    CONSTRAINT "UpdateOneContactNoteInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UpdateOneContactNoteSubscriptionFilterInput" (
    "id" TEXT NOT NULL,
    "filter" TEXT NOT NULL,

    CONSTRAINT "UpdateOneContactNoteSubscriptionFilterInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UpdateOneContactSubscriptionFilterInput" (
    "id" TEXT NOT NULL,
    "filter" TEXT NOT NULL,

    CONSTRAINT "UpdateOneContactSubscriptionFilterInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UpdateOneDealInput" (
    "id" TEXT NOT NULL,
    "update" TEXT NOT NULL,

    CONSTRAINT "UpdateOneDealInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UpdateOneDealStageInput" (
    "id" TEXT NOT NULL,
    "update" TEXT NOT NULL,

    CONSTRAINT "UpdateOneDealStageInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UpdateOneDealStageSubscriptionFilterInput" (
    "id" TEXT NOT NULL,
    "filter" TEXT NOT NULL,

    CONSTRAINT "UpdateOneDealStageSubscriptionFilterInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UpdateOneDealSubscriptionFilterInput" (
    "id" TEXT NOT NULL,
    "filter" TEXT NOT NULL,

    CONSTRAINT "UpdateOneDealSubscriptionFilterInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UpdateOneEventCategoryInput" (
    "id" TEXT NOT NULL,
    "update" TEXT NOT NULL,

    CONSTRAINT "UpdateOneEventCategoryInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UpdateOneEventCategorySubscriptionFilterInput" (
    "id" TEXT NOT NULL,
    "filter" TEXT NOT NULL,

    CONSTRAINT "UpdateOneEventCategorySubscriptionFilterInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UpdateOneEventInput" (
    "id" TEXT NOT NULL,
    "update" TEXT NOT NULL,

    CONSTRAINT "UpdateOneEventInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UpdateOneEventSubscriptionFilterInput" (
    "id" TEXT NOT NULL,
    "filter" TEXT NOT NULL,

    CONSTRAINT "UpdateOneEventSubscriptionFilterInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UpdateOneQuoteInput" (
    "id" TEXT NOT NULL,
    "update" TEXT NOT NULL,

    CONSTRAINT "UpdateOneQuoteInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UpdateOneQuoteSubscriptionFilterInput" (
    "id" TEXT NOT NULL,
    "filter" TEXT NOT NULL,

    CONSTRAINT "UpdateOneQuoteSubscriptionFilterInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UpdateOneTaskCommentInput" (
    "id" TEXT NOT NULL,
    "update" TEXT NOT NULL,

    CONSTRAINT "UpdateOneTaskCommentInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UpdateOneTaskCommentSubscriptionFilterInput" (
    "id" TEXT NOT NULL,
    "filter" TEXT NOT NULL,

    CONSTRAINT "UpdateOneTaskCommentSubscriptionFilterInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UpdateOneTaskInput" (
    "id" TEXT NOT NULL,
    "update" TEXT NOT NULL,

    CONSTRAINT "UpdateOneTaskInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UpdateOneTaskStageInput" (
    "id" TEXT NOT NULL,
    "update" TEXT NOT NULL,

    CONSTRAINT "UpdateOneTaskStageInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UpdateOneTaskStageSubscriptionFilterInput" (
    "id" TEXT NOT NULL,
    "filter" TEXT NOT NULL,

    CONSTRAINT "UpdateOneTaskStageSubscriptionFilterInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UpdateOneTaskSubscriptionFilterInput" (
    "id" TEXT NOT NULL,
    "filter" TEXT NOT NULL,

    CONSTRAINT "UpdateOneTaskSubscriptionFilterInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UpdateOneUserInput" (
    "id" TEXT NOT NULL,
    "update" TEXT NOT NULL,

    CONSTRAINT "UpdateOneUserInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UpdateOneUserSubscriptionFilterInput" (
    "id" TEXT NOT NULL,
    "filter" TEXT NOT NULL,

    CONSTRAINT "UpdateOneUserSubscriptionFilterInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "User" (
    "avatarUrl" TEXT,
    "companies" TEXT NOT NULL,
    "contacts" TEXT NOT NULL,
    "createdAt" TEXT NOT NULL,
    "createdBy" TEXT,
    "deals" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "events" TEXT NOT NULL,
    "id" TEXT NOT NULL,
    "jobTitle" TEXT,
    "name" TEXT NOT NULL,
    "phone" TEXT,
    "role" TEXT NOT NULL,
    "tasks" TEXT NOT NULL,
    "timezone" TEXT,
    "updatedAt" TEXT NOT NULL,
    "updatedBy" TEXT,

    CONSTRAINT "User_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UserCompaniesArgs" (
    "id" TEXT NOT NULL,
    "filter" TEXT,
    "paging" TEXT,
    "sorting" TEXT,

    CONSTRAINT "UserCompaniesArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UserContactsArgs" (
    "id" TEXT NOT NULL,
    "filter" TEXT,
    "paging" TEXT,
    "sorting" TEXT,

    CONSTRAINT "UserContactsArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UserDealsArgs" (
    "id" TEXT NOT NULL,
    "filter" TEXT,
    "paging" TEXT,
    "sorting" TEXT,

    CONSTRAINT "UserDealsArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UserEventsArgs" (
    "id" TEXT NOT NULL,
    "filter" TEXT,
    "paging" TEXT,
    "sorting" TEXT,

    CONSTRAINT "UserEventsArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UserTasksArgs" (
    "id" TEXT NOT NULL,
    "filter" TEXT,
    "paging" TEXT,
    "sorting" TEXT,

    CONSTRAINT "UserTasksArgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UserAggregateFilter" (
    "and" TEXT,
    "createdAt" TEXT,
    "email" TEXT,
    "id" TEXT NOT NULL,
    "jobTitle" TEXT,
    "name" TEXT,
    "or" TEXT,
    "phone" TEXT,
    "role" TEXT,
    "timezone" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "UserAggregateFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UserCompaniesConnection" (
    "id" TEXT NOT NULL,
    "nodes" TEXT NOT NULL,
    "pageInfo" TEXT NOT NULL,
    "totalCount" TEXT NOT NULL,

    CONSTRAINT "UserCompaniesConnection_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UserConnection" (
    "id" TEXT NOT NULL,
    "nodes" TEXT NOT NULL,
    "pageInfo" TEXT NOT NULL,
    "totalCount" TEXT NOT NULL,

    CONSTRAINT "UserConnection_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UserContactsConnection" (
    "id" TEXT NOT NULL,
    "nodes" TEXT NOT NULL,
    "pageInfo" TEXT NOT NULL,
    "totalCount" TEXT NOT NULL,

    CONSTRAINT "UserContactsConnection_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UserCreateInput" (
    "id" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "jobTitle" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "phone" TEXT NOT NULL,
    "role" TEXT NOT NULL,
    "timezone" TEXT NOT NULL,

    CONSTRAINT "UserCreateInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UserDealsConnection" (
    "id" TEXT NOT NULL,
    "nodes" TEXT NOT NULL,
    "pageInfo" TEXT NOT NULL,
    "totalCount" TEXT NOT NULL,

    CONSTRAINT "UserDealsConnection_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UserDeleteFilter" (
    "and" TEXT,
    "createdAt" TEXT,
    "email" TEXT,
    "id" TEXT NOT NULL,
    "jobTitle" TEXT,
    "name" TEXT,
    "or" TEXT,
    "phone" TEXT,
    "role" TEXT,
    "timezone" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "UserDeleteFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UserDeleteResponse" (
    "avatarUrl" TEXT,
    "createdAt" TEXT,
    "email" TEXT,
    "id" TEXT NOT NULL,
    "jobTitle" TEXT,
    "name" TEXT,
    "phone" TEXT,
    "role" TEXT,
    "timezone" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "UserDeleteResponse_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UserEventsConnection" (
    "id" TEXT NOT NULL,
    "nodes" TEXT NOT NULL,
    "pageInfo" TEXT NOT NULL,
    "totalCount" TEXT NOT NULL,

    CONSTRAINT "UserEventsConnection_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UserFilter" (
    "and" TEXT,
    "companies" TEXT,
    "contacts" TEXT,
    "createdAt" TEXT,
    "createdBy" TEXT,
    "deals" TEXT,
    "email" TEXT,
    "events" TEXT,
    "id" TEXT NOT NULL,
    "jobTitle" TEXT,
    "name" TEXT,
    "or" TEXT,
    "phone" TEXT,
    "role" TEXT,
    "tasks" TEXT,
    "timezone" TEXT,
    "updatedAt" TEXT,
    "updatedBy" TEXT,

    CONSTRAINT "UserFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UserFilterCompanyFilter" (
    "and" TEXT,
    "businessType" TEXT,
    "companySize" TEXT,
    "country" TEXT,
    "createdAt" TEXT,
    "id" TEXT NOT NULL,
    "industry" TEXT,
    "name" TEXT,
    "or" TEXT,
    "totalRevenue" TEXT,
    "updatedAt" TEXT,
    "website" TEXT,

    CONSTRAINT "UserFilterCompanyFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UserFilterContactFilter" (
    "and" TEXT,
    "createdAt" TEXT,
    "email" TEXT,
    "id" TEXT NOT NULL,
    "jobTitle" TEXT,
    "name" TEXT,
    "or" TEXT,
    "phone" TEXT,
    "score" TEXT,
    "stage" TEXT,
    "status" TEXT,
    "timezone" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "UserFilterContactFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UserFilterDealFilter" (
    "and" TEXT,
    "closeDateDay" TEXT,
    "closeDateMonth" TEXT,
    "closeDateYear" TEXT,
    "companyId" TEXT,
    "createdAt" TEXT,
    "dealOwnerId" TEXT,
    "id" TEXT NOT NULL,
    "or" TEXT,
    "stageId" TEXT,
    "title" TEXT,
    "updatedAt" TEXT,
    "value" TEXT,

    CONSTRAINT "UserFilterDealFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UserFilterEventFilter" (
    "and" TEXT,
    "createdAt" TEXT,
    "description" TEXT,
    "endDate" TEXT,
    "id" TEXT NOT NULL,
    "or" TEXT,
    "startDate" TEXT,
    "title" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "UserFilterEventFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UserFilterTaskFilter" (
    "and" TEXT,
    "completed" TEXT,
    "createdAt" TEXT,
    "description" TEXT,
    "dueDate" TEXT,
    "id" TEXT NOT NULL,
    "or" TEXT,
    "stageId" TEXT,
    "title" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "UserFilterTaskFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UserFilterUserFilter" (
    "and" TEXT,
    "createdAt" TEXT,
    "email" TEXT,
    "id" TEXT NOT NULL,
    "jobTitle" TEXT,
    "name" TEXT,
    "or" TEXT,
    "phone" TEXT,
    "role" TEXT,
    "timezone" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "UserFilterUserFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UserRoleFilterComparison" (
    "id" TEXT NOT NULL,
    "eq" TEXT,
    "in" TEXT,
    "neq" TEXT,
    "notIn" TEXT,

    CONSTRAINT "UserRoleFilterComparison_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UserSort" (
    "id" TEXT NOT NULL,
    "direction" TEXT NOT NULL,
    "field" TEXT NOT NULL,
    "nulls" TEXT,

    CONSTRAINT "UserSort_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UserSubscriptionFilter" (
    "and" TEXT,
    "createdAt" TEXT,
    "email" TEXT,
    "id" TEXT NOT NULL,
    "jobTitle" TEXT,
    "name" TEXT,
    "or" TEXT,
    "phone" TEXT,
    "role" TEXT,
    "timezone" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "UserSubscriptionFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UserTasksConnection" (
    "id" TEXT NOT NULL,
    "nodes" TEXT NOT NULL,
    "pageInfo" TEXT NOT NULL,
    "totalCount" TEXT NOT NULL,

    CONSTRAINT "UserTasksConnection_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UserUpdateFilter" (
    "and" TEXT,
    "createdAt" TEXT,
    "email" TEXT,
    "id" TEXT NOT NULL,
    "jobTitle" TEXT,
    "name" TEXT,
    "or" TEXT,
    "phone" TEXT,
    "role" TEXT,
    "timezone" TEXT,
    "updatedAt" TEXT,

    CONSTRAINT "UserUpdateFilter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UserUpdateInput" (
    "id" TEXT NOT NULL,
    "email" TEXT,
    "jobTitle" TEXT,
    "name" TEXT,
    "phone" TEXT,
    "role" TEXT,
    "timezone" TEXT,

    CONSTRAINT "UserUpdateInput_pkey" PRIMARY KEY ("id")
);
