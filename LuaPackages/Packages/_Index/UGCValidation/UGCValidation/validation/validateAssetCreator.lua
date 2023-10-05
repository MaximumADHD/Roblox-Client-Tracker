--!nonstrict

--[[
	validateAssetCreator.lua validates that the asset passed in are created by user/group in restrictedUserIds
]]

local root = script.Parent.Parent

local Promise = require(root.Parent.Promise)

game:DefineFastInt("UGCValidationCanPublishRequestPageSize", 50)
game:DefineFastInt("UGCValidationMaxAssetSizeAllowed", 500)

local Analytics = require(root.Analytics)

local APIUtil = require(root.util.APIUtil)
local Types = require(root.util.Types)

local HttpService = game:GetService("HttpService")

local BASE_DOMAIN = APIUtil.getBaseDomain()
local API_URL = string.format("https://apis.%s", BASE_DOMAIN)

local SERVER_URL = "packages-api/v1/rcc/canPublish"
local CLIENT_URL = "packages-api/v1/canPublish"
local pageSize = game:GetFastInt("UGCValidationCanPublishRequestPageSize")
local maxAssetIdSize = game:GetFastInt("UGCValidationMaxAssetSizeAllowed")
local Constants = require(root.Constants)

local FailureReasonsAccumulator = require(root.util.FailureReasonsAccumulator)
local getFFlagFixPackageIDFieldName = require(root.flags.getFFlagFixPackageIDFieldName)
local getFFlagUGCValidationAnalytics = require(root.flags.getFFlagUGCValidationAnalytics)

local function createCanPublishPromise(url, assetIds, restrictedIds, token)
	if #assetIds == 0 then
		return Promise.resolve()
	else
		return Promise.new(function(resolve, reject)
			local data = HttpService:JSONEncode({ assetIds = assetIds, restrictedEntities = restrictedIds })

			local httpRequest = HttpService:RequestInternal({
				Url = url,
				Method = "POST",
				Body = data,
				Headers = {
					[Constants.ExperienceAuthHeaderKey] = token,
					[Constants.ContentType] = Constants.ApplicationJson,
				},
			})

			httpRequest:Start(function(success, response)
				if success and response.StatusCode == 200 then
					local result = HttpService:JSONDecode(response.Body)
					resolve(result)
				else
					reject()
				end
			end)
		end)
	end
end

local function validateAssetCreator(
	contentIdMap: any,
	isServer: boolean?,
	restrictedUserIds: Types.RestrictedUserIds,
	token: string
): (boolean, { string }?)
	local canPublishUrl = API_URL .. if isServer then SERVER_URL else CLIENT_URL
	local idsHashTable = { User = {}, Group = {} }
	local reasonsAccumulator = FailureReasonsAccumulator.new()
	local assetIdTable = {}
	local promises = {}
	local count = 0

	for _, restrictedUserId in ipairs(restrictedUserIds) do
		idsHashTable[restrictedUserId.creatorType][tonumber(restrictedUserId.id)] = true
	end

	-- deduplicate the assetIds
	for assetId, _ in contentIdMap do
		if assetIdTable[assetId] then
			continue
		end

		count = count + 1
		assetIdTable[assetId] = true
	end

	if count > maxAssetIdSize then
		Analytics.reportFailure(Analytics.ErrorType.validateAssetCreator_TooManyDependencies)
		return false, { "Too many mesh/texture dependencies" }
	end

	local assetIdList = {}

	for assetId, _ in assetIdTable do
		if getFFlagFixPackageIDFieldName() then
			if assetId == 0 then
				continue
			end
		end

		table.insert(assetIdList, assetId)

		if #assetIdList >= pageSize then
			local promise = createCanPublishPromise(canPublishUrl, assetIdList, restrictedUserIds, token)
			table.insert(promises, promise)
			assetIdList = {}
		end
	end

	if #assetIdList > 0 then
		local promise = createCanPublishPromise(canPublishUrl, assetIdList, restrictedUserIds, token)
		table.insert(promises, promise)
	end

	local complete, responses = Promise.all(promises):await()

	if not complete then
		Analytics.reportFailure(Analytics.ErrorType.validateAssetCreator_FailedToLoad)
		return false, { "Failed to load asset detail" }
	end

	for _, response in responses do
		local results = response.result
		for instanceId, allowed in pairs(results) do
			if getFFlagUGCValidationAnalytics() and not allowed then
				Analytics.reportFailure(Analytics.ErrorType.validateAssetCreator_DependencyNotOwnedByCreator)
			end
			local data = contentIdMap[instanceId]
			local failureMessage = string.format(
				"%s.%s ( %s ) is not owned by the experience creator or player",
				data.instance:GetFullName(),
				data.fieldName,
				instanceId
			)
			reasonsAccumulator:updateReasons(allowed, { failureMessage })
		end
	end

	return reasonsAccumulator:getFinalResults()
end

return validateAssetCreator
