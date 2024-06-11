--!strict

local root = script.Parent.Parent

local Analytics = require(root.Analytics)
local Constants = require(root.Constants)

local validateSingleInstance = require(root.validation.validateSingleInstance)
local validateAssetCreator = require(root.validation.validateAssetCreator)
local ParseContentIds = require(root.util.ParseContentIds)

local Types = require(root.util.Types)

local function validatePackage(validationContext: Types.ValidationContext): (boolean, { string }?)
	assert(validationContext.instances ~= nil, "instances required in validationContext for validatePackage")
	local allSelectedInstances = validationContext.instances :: { Instance }
	local restrictedUserIds = validationContext.restrictedUserIds

	local result, failureReasons = validateSingleInstance(allSelectedInstances, validationContext)
	if not result then
		return result, failureReasons
	end

	local instance = allSelectedInstances[1]
	local contentIds = {}
	local contentIdMap = {}

	if not restrictedUserIds or #restrictedUserIds == 0 then
		return true
	end

	local parseSuccess =
		ParseContentIds.parseWithErrorCheck(contentIds, contentIdMap, instance, Constants.PACKAGE_CONTENT_ID_FIELDS)

	if not parseSuccess then
		Analytics.reportFailure(Analytics.ErrorType.validatePackage_FailedToParse)
		return false,
			{
				string.format(
					"Failed to parse package data for model '%s'. Make sure the packageId is valid and try again.",
					instance:GetFullName()
				),
			}
	end

	return validateAssetCreator(contentIdMap, validationContext :: Types.ValidationContext)
end

return validatePackage
