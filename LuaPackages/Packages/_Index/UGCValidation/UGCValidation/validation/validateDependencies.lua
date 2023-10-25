--!strict

--[[
	validateDependencies.lua checks that all the properties in the hierarchy tree of an asset that should contain a value, do contain an asset id, and
	that asset id points to an asset that exists (and when used from Studio, it uses validateModeration.lua which ensures the assets are created by the
	currently logged in Studio user)
]]

local root = script.Parent.Parent

local getFFlagDebugUGCDisableRCCOwnershipCheck = require(root.flags.getFFlagDebugUGCDisableRCCOwnershipCheck)
local getFFlagUGCValidateBodyPartsModeration = require(root.flags.getFFlagUGCValidateBodyPartsModeration)
local getFFlagUGCValidateAssetStatusNameChange = require(root.flags.getFFlagUGCValidateAssetStatusNameChange)
local getFFlagUGCValidationAnalytics = require(root.flags.getFFlagUGCValidationAnalytics)
local FFlagValidateUserAndUniverseNoModeration = game:DefineFastFlag("ValidateUserAndUniverseNoModeration", false)

local Analytics = require(root.Analytics)
local Constants = require(root.Constants)

local ParseContentIds = require(root.util.ParseContentIds)
local FailureReasonsAccumulator = require(root.util.FailureReasonsAccumulator)
local getAssetCreationDetailsRCC = require(root.util.getAssetCreationDetailsRCC)
local Types = require(root.util.Types)

local validateModeration = require(root.validation.validateModeration)
local validateCanLoad = require(root.validation.validateCanLoad)
local validateAssetCreator = require(root.validation.validateAssetCreator)

local function validateExistance(contentIdMap: any)
	for _, data in pairs(contentIdMap) do
		if not validateCanLoad(data.instance[data.fieldName]) then
			-- loading a mesh/texture can fail for many reasons, therefore we throw an error here, which means that the validation of this asset
			-- will be run again, rather than returning false. This is because we can't conclusively say it failed. It's inconclusive. This throwing
			-- of an error should only happen when validation is called from RCC
			error("Failed to load asset")
		end
	end
end

local ASSET_STATUS_RCC = nil
local ASSET_STATUS_RCC_deprecated = nil
if getFFlagUGCValidateAssetStatusNameChange() then
	ASSET_STATUS_RCC = {
		MODERATION_STATE_REVIEWING = { ["MODERATION_STATE_REVIEWING"] = true, ["Reviewing"] = true },
		MODERATION_STATE_APPROVED = { ["MODERATION_STATE_APPROVED"] = true, ["Approved"] = true },
	}
else
	ASSET_STATUS_RCC_deprecated = {
		MODERATION_STATE_REVIEWING = "MODERATION_STATE_REVIEWING",
		MODERATION_STATE_REJECTED = "MODERATION_STATE_REJECTED",
		MODERATION_STATE_APPROVED = "MODERATION_STATE_APPROVED",
	}
end

local function validateCreatorId(idsHashTable, creatorId, instance, fieldName, id): (boolean, { string }?)
	if not idsHashTable[tonumber(creatorId)] then
		Analytics.reportFailure(Analytics.ErrorType.validateDependencies_IsRestrictedUserId)
		return false, { `{instance:GetFullName()}.{fieldName} ( {id} ) is not owned by the developer` }
	end
	return true
end

local function validateModerationState(moderationState, instance, fieldName, id): (boolean, { string }?)
	local isReviewing = if getFFlagUGCValidateAssetStatusNameChange()
		then ASSET_STATUS_RCC.MODERATION_STATE_REVIEWING[moderationState]
		else ASSET_STATUS_RCC_deprecated.MODERATION_STATE_REVIEWING == moderationState
	if isReviewing then
		-- throw an error here, which means that the validation of this asset will be run again, rather than returning false. This is because we can't
		-- conclusively say it failed. It's inconclusive / in-progress, so we need to try again later
		Analytics.reportFailure(Analytics.ErrorType.validateDependencies_IsReviewing)
		error("Asset is under review")
	end

	local isApproved = if getFFlagUGCValidateAssetStatusNameChange()
		then ASSET_STATUS_RCC.MODERATION_STATE_APPROVED[moderationState]
		else ASSET_STATUS_RCC_deprecated.MODERATION_STATE_APPROVED == moderationState

	if not isApproved then
		Analytics.reportFailure(Analytics.ErrorType.validateDependencies_IsNotApproved)
		return false, { `{instance:GetFullName()}.{fieldName} ( {id} ) is not owned by the developer` }
	end

	return true
end

local function validateModerationRCC(
	restrictedUserIds: Types.RestrictedUserIds?,
	contentIdMap: any
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
				validateCreatorId(idsHashTable, creatorId, data.instance, data.fieldName, id)
			)

			reasonsAccumulator:updateReasons(
				validateModerationState(response.moderationResult.moderationState, data.instance, data.fieldName, id)
			)
		else
			local failureMessage = string.format(
				"%s.%s ( %s ) is not owned by the developer",
				data.instance:GetFullName(),
				data.fieldName,
				id
			)

			reasonsAccumulator:updateReasons(idsHashTable[tonumber(creatorId)], { failureMessage })

			local isReviewing = if getFFlagUGCValidateAssetStatusNameChange()
				then ASSET_STATUS_RCC.MODERATION_STATE_REVIEWING[response.moderationResult.moderationState]
				else ASSET_STATUS_RCC_deprecated.MODERATION_STATE_REVIEWING == response.moderationResult.moderationState
			if isReviewing then
				-- throw an error here, which means that the validation of this asset will be run again, rather than returning false. This is because we can't
				-- conclusively say it failed. It's inconclusive / in-progress, so we need to try again later
				error("Asset is under review")
			end

			local isApproved = if getFFlagUGCValidateAssetStatusNameChange()
				then ASSET_STATUS_RCC.MODERATION_STATE_APPROVED[response.moderationResult.moderationState]
				else ASSET_STATUS_RCC_deprecated.MODERATION_STATE_APPROVED == response.moderationResult.moderationState
			reasonsAccumulator:updateReasons(isApproved, { failureMessage })
		end
	end
	return reasonsAccumulator:getFinalResults()
end

local function validateAssetCreatorsRCC(
	restrictedUserIds: Types.RestrictedUserIds?,
	contentIdMap: any,
	universeId: number
)
	return validateAssetCreator(contentIdMap, true --[[isServer]], restrictedUserIds or {}, "" --[[token]], universeId)
end

local function validateDependencies(
	instance: Instance,
	isServer: boolean?,
	allowUnreviewedAssets: boolean?,
	restrictedUserIds: Types.RestrictedUserIds?,
	universeId: number?
): (boolean, { string }?)
	local contentIdMap = {}
	local contentIds = {}

	local parseSuccess, parseReasons = ParseContentIds.parseWithErrorCheck(
		contentIds,
		contentIdMap,
		instance,
		nil,
		Constants.CONTENT_ID_REQUIRED_FIELDS
	)
	if not parseSuccess then
		Analytics.reportFailure(Analytics.ErrorType.validateDependencies_ParseFailure)
		return false, parseReasons
	end

	if isServer then
		validateExistance(contentIdMap)
	end

	local reasonsAccumulator = FailureReasonsAccumulator.new()

	if not getFFlagDebugUGCDisableRCCOwnershipCheck() then
		if isServer then
			-- This block will check user and universe permissions without considering moderation
			-- This is from in experience creation, assets may not be moderated yet
			if FFlagValidateUserAndUniverseNoModeration and universeId then
				reasonsAccumulator:updateReasons(validateAssetCreatorsRCC(restrictedUserIds, contentIdMap, universeId))
			else
				reasonsAccumulator:updateReasons(
					validateModerationRCC(restrictedUserIds :: Types.RestrictedUserIds, contentIdMap)
				)
			end
		end
	end

	if not getFFlagUGCValidateBodyPartsModeration() then
		local checkModeration = not isServer
		if allowUnreviewedAssets then
			checkModeration = false
		end
		if checkModeration then
			reasonsAccumulator:updateReasons(validateModeration(instance, restrictedUserIds))
		end
	end

	return reasonsAccumulator:getFinalResults()
end

return validateDependencies
