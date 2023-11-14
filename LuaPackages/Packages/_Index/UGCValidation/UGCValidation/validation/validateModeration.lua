--!nonstrict
local root = script.Parent.Parent

local Analytics = require(root.Analytics)
local Constants = require(root.Constants)

local getAssetCreationDetails = require(root.util.getAssetCreationDetails)
local ParseContentIds = require(root.util.ParseContentIds)
local Types = require(root.util.Types)

local function validateUser(
	restrictedUserIds: Types.RestrictedUserIds?,
	endPointResponse: any,
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

	for _, individualAssetResponse in ipairs(endPointResponse) do
		if not idsHashTable[tonumber(individualAssetResponse.creatorTargetId)] then
			local mapped = contentIdMap[tostring(individualAssetResponse.assetId)]
			assert(mapped)
			return false,
				{
					string.format(
						"%s.%s ( %s ) is not owned by the developer",
						mapped.instance:GetFullName(),
						mapped.fieldName,
						tostring(individualAssetResponse.assetId)
					),
				}
		end
	end
	return true
end

-- ensures accessory content ids have all passed moderation review
local function validateModeration(
	instance: Instance,
	restrictedUserIds: Types.RestrictedUserIds?
): (boolean, { string }?)
	local contentIdMap = {}
	local contentIds = {}

	local parseSuccess, parseReasons = ParseContentIds.parseWithErrorCheck(contentIds, contentIdMap, instance)
	if not parseSuccess then
		Analytics.reportFailure(Analytics.ErrorType.validateModeration_FailedToParse)
		return false, parseReasons
	end

	local moderatedIds = {}

	local success, response = getAssetCreationDetails(contentIds)

	if not success or #response ~= #contentIds then
		Analytics.reportFailure(Analytics.ErrorType.validateModeration_CouldNotFetchModerationDetails)
		if game:GetFastFlag("UGCBetterModerationErrorText") then
			return false,
				{
					"Could not fetch moderation details for assets.",
					"Make sure all assets are created by the current user.",
				}
		else
			return false, { "Could not fetch details for assets" }
		end
	end

	local passedUserCheck, reasons = validateUser(restrictedUserIds, response, contentIdMap)
	if not passedUserCheck then
		Analytics.reportFailure(Analytics.ErrorType.validateModeration_ValidateUser)
		return passedUserCheck, reasons
	end

	for _, details in pairs(response) do
		if
			details.status == Constants.ASSET_STATUS.UNKNOWN
			or details.status == Constants.ASSET_STATUS.REVIEW_PENDING
			or details.status == Constants.ASSET_STATUS.MODERATED
		then
			table.insert(moderatedIds, details.assetId)
		end
	end

	if #moderatedIds > 0 then
		local moderationMessages = {}
		for idx, id in pairs(moderatedIds) do
			local mapped = contentIdMap[id]
			if mapped then
				moderationMessages[idx] =
					string.format("%s.%s ( %s )", mapped.instance:GetFullName(), mapped.fieldName, id)
			else
				moderationMessages[idx] = id
			end
		end
		Analytics.reportFailure(Analytics.ErrorType.validateModeration_AssetsHaveNotPassedModeration)
		return false, {
			"The following asset IDs have not passed moderation:",
			unpack(moderationMessages),
		}
	end

	return true
end

return validateModeration
