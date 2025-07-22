--[[
	validateDependencies.lua checks that all the properties in the hierarchy tree of an asset that should contain a value, do contain an asset id, and
	that asset id points to an asset that exists
]]

local root = script.Parent.Parent

local RunService = game:GetService("RunService")

local getFFlagUGCValidationAnalytics = require(root.flags.getFFlagUGCValidationAnalytics)
local FFlagValidateUserAndUniverseNoModeration = game:DefineFastFlag("ValidateUserAndUniverseNoModeration", false)
local FFlagNoStudioOwnershipCheck = game:DefineFastFlag("NoStudioOwnershipCheck", false)

local Analytics = require(root.Analytics)
local Constants = require(root.Constants)

local ParseContentIds = require(root.util.ParseContentIds)
local FailureReasonsAccumulator = require(root.util.FailureReasonsAccumulator)
local getAssetCreationDetailsRCC = require(root.util.getAssetCreationDetailsRCC)
local Types = require(root.util.Types)

local validateCanLoad = require(root.validation.validateCanLoad)
local validateAssetCreator = require(root.validation.validateAssetCreator)

local function validateExistance(contentIdMap: any, validationContext: Types.ValidationContext)
	for _, data in pairs(contentIdMap) do
		if not validateCanLoad(data.instance[data.fieldName], validationContext) then
			-- loading a mesh/texture can fail for many reasons, therefore we throw an error here, which means that the validation of this asset
			-- will be run again, rather than returning false. This is because we can't conclusively say it failed. It's inconclusive. This throwing
			-- of an error should only happen when validation is called from RCC
			error(
				string.format(
					"Failed to load children assets (Meshes, Textures, etc.) for '%s'. Make sure the assets exist and try again.",
					data.instance.Name
				)
			)
		end
	end
end

local ASSET_STATUS_RCC = {
	MODERATION_STATE_REVIEWING = { ["MODERATION_STATE_REVIEWING"] = true, ["Reviewing"] = true },
	MODERATION_STATE_APPROVED = { ["MODERATION_STATE_APPROVED"] = true, ["Approved"] = true },
}

local function validateCreatorId(
	idsHashTable,
	creatorId,
	instance,
	fieldName,
	id,
	validationContext
): (boolean, { string }?)
	if not idsHashTable[tonumber(creatorId)] then
		Analytics.reportFailure(Analytics.ErrorType.validateDependencies_IsRestrictedUserId, nil, validationContext)
		return false,
			{
				`{instance:GetFullName()}.{fieldName} ( {id} ) is not owned by the current user. You can only validate assets that you or a group you belong to owns.`,
			}
	end
	return true
end

local function validateModerationState(
	moderationState,
	instance,
	fieldName,
	id,
	validationContext
): (boolean, { string }?)
	local isReviewing = ASSET_STATUS_RCC.MODERATION_STATE_REVIEWING[moderationState]
	if isReviewing then
		-- throw an error here, which means that the validation of this asset will be run again, rather than returning false. This is because we can't
		-- conclusively say it failed. It's inconclusive / in-progress, so we need to try again later
		Analytics.reportFailure(Analytics.ErrorType.validateDependencies_IsReviewing, nil, validationContext)
		error(
			"Failed to load asset {instance:GetFullName()}.{fieldName} ( {id} ) that is still going through the review process. Please, wait for a notification of completion from the review process and try again."
		)
	end

	local isApproved = ASSET_STATUS_RCC.MODERATION_STATE_APPROVED[moderationState]
	if not isApproved then
		Analytics.reportFailure(Analytics.ErrorType.validateDependencies_IsNotApproved, nil, validationContext)
		return false,
			{
				`{instance:GetFullName()}.{fieldName} ( {id} ) is not owned by the current user. You can only validate assets that you or a group you belong to owns.`,
			}
	end

	return true
end

local function validateModerationRCC(
	restrictedUserIds: Types.RestrictedUserIds?,
	contentIdMap: any,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	-- if there are no users to validate against, we assume, it's not needed
	if not restrictedUserIds or #restrictedUserIds == 0 then
		return true
	end

	local idsHashTable = {}
	for _, entry in ipairs(restrictedUserIds :: Types.RestrictedUserIds) do
		idsHashTable[tonumber(entry.id)] = true
	end

	local reasonsAccumulator = FailureReasonsAccumulator.new()

	for id, data in pairs(contentIdMap) do
		local success, response = getAssetCreationDetailsRCC(id)
		if not success then
			-- requesting from the back-end can fail for many reasons, therefore we throw an error here, which means that the validation of this asset
			-- will be run again, rather than returning false. This is because we can't conclusively say it failed. It's inconclusive. This throwing
			-- of an error should only happen when validation is called from RCC
			error("Failed to load asset")
		end

		local creatorTable = response.creationContext.creator
		local creatorId = if creatorTable.userId then creatorTable.userId else creatorTable.groupId
		if getFFlagUGCValidationAnalytics() then
			reasonsAccumulator:updateReasons(
				validateCreatorId(idsHashTable, creatorId, data.instance, data.fieldName, id, validationContext)
			)

			reasonsAccumulator:updateReasons(
				validateModerationState(
					response.moderationResult.moderationState,
					data.instance,
					data.fieldName,
					id,
					validationContext
				)
			)
		else
			local failureMessage = string.format(
				"%s.%s ( %s ) is not owned by the developer",
				data.instance:GetFullName(),
				data.fieldName,
				id
			)

			reasonsAccumulator:updateReasons(idsHashTable[tonumber(creatorId)], { failureMessage })

			local isReviewing = ASSET_STATUS_RCC.MODERATION_STATE_REVIEWING[response.moderationResult.moderationState]
			if isReviewing then
				-- throw an error here, which means that the validation of this asset will be run again, rather than returning false. This is because we can't
				-- conclusively say it failed. It's inconclusive / in-progress, so we need to try again later
				error("Asset is under review")
			end

			local isApproved = ASSET_STATUS_RCC.MODERATION_STATE_APPROVED[response.moderationResult.moderationState]
			reasonsAccumulator:updateReasons(isApproved, { failureMessage })
		end
	end
	return reasonsAccumulator:getFinalResults()
end

local function validateAssetCreatorsRCC(contentIdMap: any, validationContext: Types.ValidationContext)
	assert(validationContext.isServer, "isServer must be true for validateAssetCreatorsRCC")
	return validateAssetCreator(contentIdMap, validationContext)
end

local function validateDependencies(
	instance: Instance,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local startTime = tick()

	local isServer = if validationContext then validationContext.isServer else nil
	local allowEditableInstances = validationContext.allowEditableInstances
	local restrictedUserIds = if validationContext then validationContext.restrictedUserIds else nil
	local universeId = if validationContext then validationContext.universeId else nil

	local contentIdMap = {}
	local contentIds = {}

	local parseSuccess, parseReasons = ParseContentIds.parseWithErrorCheck(
		contentIds,
		contentIdMap,
		instance,
		nil,
		Constants.CONTENT_ID_REQUIRED_FIELDS,
		validationContext
	)
	if not parseSuccess then
		Analytics.reportFailure(Analytics.ErrorType.validateDependencies_ParseFailure, nil, validationContext)
		return false, parseReasons
	end

	if isServer and not allowEditableInstances then
		validateExistance(contentIdMap, validationContext)
	end

	local reasonsAccumulator = FailureReasonsAccumulator.new()

	if not FFlagNoStudioOwnershipCheck or (FFlagNoStudioOwnershipCheck and not RunService:IsStudio()) then
		if isServer then
			-- This block will check user and universe permissions without considering moderation
			-- This is from in experience creation, assets may not be moderated yet
			if FFlagValidateUserAndUniverseNoModeration and universeId then
				reasonsAccumulator:updateReasons(
					validateAssetCreatorsRCC(contentIdMap, validationContext :: Types.ValidationContext)
				)
			else
				reasonsAccumulator:updateReasons(
					validateModerationRCC(restrictedUserIds :: Types.RestrictedUserIds, contentIdMap, validationContext)
				)
			end
		end
	end

	if validationContext then
		Analytics.recordScriptTime(script.Name, startTime, validationContext :: Types.ValidationContext)
	end

	return reasonsAccumulator:getFinalResults()
end

return validateDependencies
