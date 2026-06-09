--!nonstrict

local root = script.Parent.Parent

local Promise = require(root.Parent.Promise)

game:DefineFastInt("UGCValidationCanPublishRequestPageSize", 50)
game:DefineFastInt("UGCValidationMaxAssetSizeAllowed", 500)

local APIUtil = require(root.util.APIUtil)
local Constants = require(root.Constants)
local getFStringUGCValidationReferenceMeshIdWhitelistForIEC =
	require(root.flags.getFStringUGCValidationReferenceMeshIdWhitelistForIEC)
local Types = require(root.util.Types)

local HttpService = game:GetService("HttpService")

local BASE_DOMAIN = APIUtil.getBaseDomain()
local API_URL = string.format("https://apis.%s", BASE_DOMAIN)

local SERVER_URL = "packages-api/v1/rcc/canPublish"
local CLIENT_URL = "packages-api/v1/canPublish"

export type ContentIdEntry = { instance: Instance, fieldName: string }
export type ContentIdMap = { [string]: ContentIdEntry }

export type AssetVerdict = {
	assetId: string,
	allowed: boolean,
	entry: ContentIdEntry,
}

export type CanPublishOutcome = {
	status: "ok" | "tooManyAssets" | "loadFailed",
	verdicts: { AssetVerdict }?,
}

local function getWhitelistIds(): { [string]: boolean }
	local whitelistIds = {}
	local whitelistString = getFStringUGCValidationReferenceMeshIdWhitelistForIEC()
	if #whitelistString == 0 then
		return whitelistIds
	end

	for id in string.gmatch(whitelistString, "([^,%s]+)") do
		whitelistIds[id] = true
	end

	return whitelistIds
end

local function createCanPublishPromise(
	url: string,
	assetIds: { string },
	restrictedIds: Types.RestrictedUserIds,
	token: string,
	universeId: number?
)
	if #assetIds == 0 then
		return Promise.resolve()
	end
	return Promise.new(function(resolve, reject)
		local data = HttpService:JSONEncode({
			assetIds = assetIds,
			restrictedEntities = restrictedIds,
			universeId = universeId,
		})

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
				resolve(HttpService:JSONDecode(response.Body))
			else
				reject()
			end
		end)
	end)
end

local function canPublishAssets(
	contentIdMap: ContentIdMap,
	restrictedUserIds: Types.RestrictedUserIds,
	token: string,
	universeId: number?,
	isServer: boolean
): CanPublishOutcome
	local pageSize = game:GetFastInt("UGCValidationCanPublishRequestPageSize")
	local maxAssetIdSize = game:GetFastInt("UGCValidationMaxAssetSizeAllowed")

	local canPublishUrl = API_URL .. if isServer then SERVER_URL else CLIENT_URL
	local seen: { [string]: boolean } = {}
	local uniqueIds: { string } = {}

	for assetId, _ in contentIdMap do
		if seen[assetId] then
			continue
		end
		seen[assetId] = true
		table.insert(uniqueIds, assetId)
	end

	if #uniqueIds > maxAssetIdSize then
		return { status = "tooManyAssets" }
	end

	local promises = {}
	local page: { string } = {}
	for _, assetId in uniqueIds do
		table.insert(page, assetId)
		if #page >= pageSize then
			table.insert(promises, createCanPublishPromise(canPublishUrl, page, restrictedUserIds, token, universeId))
			page = {}
		end
	end
	if #page > 0 then
		table.insert(promises, createCanPublishPromise(canPublishUrl, page, restrictedUserIds, token, universeId))
	end

	local complete, responses = Promise.all(promises):await()
	if not complete then
		return { status = "loadFailed" }
	end

	local hasWhitelistedIds = getFStringUGCValidationReferenceMeshIdWhitelistForIEC() ~= ""
	local whitelistIds = if hasWhitelistedIds then getWhitelistIds() else {}

	local verdicts: { AssetVerdict } = {}
	for _, response in responses do
		for instanceId, allowed in response.result do
			local entry = contentIdMap[instanceId]
			if not entry then
				continue
			end
			local effectiveAllowed = allowed
			if hasWhitelistedIds and not allowed and whitelistIds[instanceId] then
				effectiveAllowed = true
			end
			table.insert(verdicts, {
				assetId = instanceId,
				allowed = effectiveAllowed,
				entry = entry,
			})
		end
	end

	return { status = "ok", verdicts = verdicts }
end

return canPublishAssets
