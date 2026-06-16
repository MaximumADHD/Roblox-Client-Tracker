local root = script.Parent.Parent.Parent

local Constants = require(root.Constants)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)

local canPublishAssets = require(root.util.canPublishAssets)
local getAssetCreationDetails = require(root.util.getAssetCreationDetails)
local getAssetCreationDetailsRCC = require(root.util.getAssetCreationDetailsRCC)
local getFFlagUGCValidateMigrateSchemaProperties = require(root.flags.getFFlagUGCValidateMigrateSchemaProperties)

-- Accept both proto-enum and legacy camel-case labels.
local RCC_MODERATION_REVIEWING = { ["MODERATION_STATE_REVIEWING"] = true, ["Reviewing"] = true }
local RCC_MODERATION_APPROVED = { ["MODERATION_STATE_APPROVED"] = true, ["Approved"] = true }

local function collectContentIdsArray(contentIdMap: Types.ContentIdEntriesMap): { string }
	local contentIds: { string } = {}
	for assetId, _ in contentIdMap do
		table.insert(contentIds, assetId)
	end
	return contentIds
end

local function runStudio(
	reporter: Types.ValidationReporter,
	rootInstance: Instance,
	contentIdMap: Types.ContentIdEntriesMap
)
	local contentIds = collectContentIdsArray(contentIdMap)
	if #contentIds == 0 then
		return
	end

	local fetchSuccess, response = getAssetCreationDetails(contentIds)
	if not fetchSuccess or #response ~= #contentIds then
		reporter:fail(ErrorSourceStrings.Keys.DescendantIdFetchFailed, {
			InstanceFullName = rootInstance:GetFullName(),
		})
		return
	end

	for _, details in response do
		local moderated = details.status == Constants.ASSET_STATUS.UNKNOWN
			or details.status == Constants.ASSET_STATUS.REVIEW_PENDING
			or details.status == Constants.ASSET_STATUS.MODERATED
		if not moderated then
			continue
		end

		local assetId = tostring(details.assetId)
		local entries = contentIdMap[assetId]
		local message = if entries
			then string.format("%s.%s ( %s )", entries[1].instance:GetFullName(), entries[1].fieldName, assetId)
			else assetId

		reporter:fail(ErrorSourceStrings.Keys.DescendantIdNotApproved, {
			ModerationMessages = message,
		})
	end
end

local function buildOwnerLookup(restrictedUserIds: Types.RestrictedUserIds): { [number]: boolean }
	local lookup: { [number]: boolean } = {}
	for _, entry in restrictedUserIds do
		lookup[tonumber(entry.id) :: number] = true
	end
	return lookup
end

local function runBackend(
	reporter: Types.ValidationReporter,
	contentIdMap: Types.ContentIdEntriesMap,
	backendConfigs: Types.BackendConfigs
)
	local restrictedUserIds = backendConfigs.restrictedUserIds
	if not restrictedUserIds or #restrictedUserIds == 0 then
		return
	end

	local ownerLookup = buildOwnerLookup(restrictedUserIds)

	for assetId, entries in contentIdMap do
		local firstEntry = entries[1]
		local fetchSuccess, response = getAssetCreationDetailsRCC(assetId)
		if not fetchSuccess then
			-- Transient backend failure → escape so RCC reschedules.
			reporter:forceError("Failed to load asset")
		end

		local creator = response.creationContext.creator
		local creatorId = if creator.userId then creator.userId else creator.groupId

		if not ownerLookup[tonumber(creatorId) :: number] then
			reporter:fail(ErrorSourceStrings.Keys.DescendantIdNotOwned, {
				AssetId = assetId,
				InstanceFullName = firstEntry.instance:GetFullName(),
				FieldName = firstEntry.fieldName,
			})
		end

		local moderationState = response.moderationResult.moderationState
		if RCC_MODERATION_REVIEWING[moderationState] then
			-- Review-in-progress: throw so RCC retries after moderation completes.
			reporter:forceError(
				"Failed to load asset "
					.. firstEntry.instance:GetFullName()
					.. "."
					.. firstEntry.fieldName
					.. " ( "
					.. assetId
					.. " ) that is still going through the review process. Please, wait for a notification of completion from the review process and try again."
			)
		end

		if not RCC_MODERATION_APPROVED[moderationState] then
			reporter:fail(ErrorSourceStrings.Keys.DescendantIdNotApproved, {
				ModerationMessages = string.format(
					"%s.%s ( %s )",
					firstEntry.instance:GetFullName(),
					firstEntry.fieldName,
					assetId
				),
			})
		end
	end
end

local function runIEC(
	reporter: Types.ValidationReporter,
	rootInstance: Instance,
	contentIdMap: Types.ContentIdEntriesMap,
	iecConfigs: Types.IECConfigs
)
	if not iecConfigs.token then
		return
	end

	-- IEC never has restrictedUserIds; canPublishAssets is token-scoped.
	local outcome =
		canPublishAssets(contentIdMap, {} :: Types.RestrictedUserIds, iecConfigs.token, iecConfigs.universeId, true)

	if outcome.status == "tooManyAssets" then
		reporter:fail(ErrorSourceStrings.Keys.DescendantIdsTooMany, { InstanceFullName = rootInstance:GetFullName() })
		return
	end

	if outcome.status == "loadFailed" then
		reporter:fail(ErrorSourceStrings.Keys.DescendantIdFetchFailed, {
			InstanceFullName = rootInstance:GetFullName(),
		})
		return
	end

	local verdicts = outcome.verdicts
	if not verdicts then
		return
	end

	for _, verdict in verdicts do
		if not verdict.allowed then
			reporter:fail(ErrorSourceStrings.Keys.DescendantIdNotOwned, {
				AssetId = verdict.assetId,
				InstanceFullName = verdict.entry.instance:GetFullName(),
				FieldName = verdict.entry.fieldName,
			})
		end
	end
end

local DescendantIdsAllowed = {}

-- MAKEUP included for parity with legacy validateMakeupAsset's descendant checks.
DescendantIdsAllowed.categories = Constants.AllAssetUploadCategoriesIncludingMakeup
DescendantIdsAllowed.requiredData = {
	ValidationEnums.SharedDataMember.rootInstance,
	ValidationEnums.SharedDataMember.consumerConfig,
	ValidationEnums.SharedDataMember.contentIds,
}
DescendantIdsAllowed.fflag = getFFlagUGCValidateMigrateSchemaProperties
DescendantIdsAllowed.expectedFailures = {}

DescendantIdsAllowed.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local consumerConfig = data.consumerConfig

	-- AutoSetup uploads pre-moderation batches; legacy gated on allowUnreviewedAssets.
	if consumerConfig.source == "AutoSetup" then
		return
	end

	local rootInstance = data.rootInstance
	local contentIdMap = data.contentIds

	if consumerConfig.consumerEnv == ValidationEnums.ConsumerEnv.Studio then
		runStudio(reporter, rootInstance, contentIdMap)
	elseif consumerConfig.consumerEnv == ValidationEnums.ConsumerEnv.Backend then
		runBackend(reporter, contentIdMap, consumerConfig.backendConfigs)
	elseif consumerConfig.consumerEnv == ValidationEnums.ConsumerEnv.IEC then
		runIEC(reporter, rootInstance, contentIdMap, consumerConfig.iecConfigs)
	end
end

return DescendantIdsAllowed :: Types.ValidationModule
