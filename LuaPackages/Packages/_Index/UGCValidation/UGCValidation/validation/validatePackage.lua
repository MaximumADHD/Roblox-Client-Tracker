--!strict

local root = script.Parent.Parent

local Analytics = require(root.Analytics)
local Constants = require(root.Constants)

local validateSingleInstance = require(root.validation.validateSingleInstance)
local validateAssetCreator = require(root.validation.validateAssetCreator)
local ParseContentIds = require(root.util.ParseContentIds)

local Types = require(root.util.Types)

local function validatePackage(
	allSelectedInstances: { Instance },
	isServer: boolean?,
	restrictedUserIds: Types.RestrictedUserIds?,
	token: string?
): (boolean, { string }?)
	local result, failureReasons = validateSingleInstance(allSelectedInstances)
	if not result then
		return result, failureReasons
	end

	local instance = allSelectedInstances[1]
	local contentIds = {}
	local contentIdMap = {}

	if not restrictedUserIds or #restrictedUserIds == 0 then
		return true
	end

	local parseSuccess, parseReasons =
		ParseContentIds.parseWithErrorCheck(contentIds, contentIdMap, instance, Constants.PACKAGE_CONTENT_ID_FIELDS)

	if not parseSuccess then
		Analytics.reportFailure(Analytics.ErrorType.validatePackage_FailedToParse)
		return false, parseReasons
	end

	return validateAssetCreator(contentIdMap, isServer, restrictedUserIds :: Types.RestrictedUserIds, token :: string)
end

return validatePackage
