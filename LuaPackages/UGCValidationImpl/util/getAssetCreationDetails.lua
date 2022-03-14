local HttpService = game:GetService("HttpService")
local HttpRbxApiService = game:GetService("HttpRbxApiService")
local ContentProvider = game:GetService("ContentProvider")

local function getBaseDomain()
	local baseUrl = ContentProvider.BaseUrl
	if string.sub(baseUrl, #baseUrl) ~= "/" then
		baseUrl = baseUrl .. "/"
	end
	local _, schemeEnd = string.find(baseUrl, "://")
	local _, prefixEnd = string.find(baseUrl, "%.", schemeEnd + 1)
	return string.sub(baseUrl, prefixEnd + 1)
end

local MAX_RETRIES = 5

local function requestAndRetry(apiUrl, data, attempt)
	if attempt == nil then
		attempt = 0
	end

	local success, response = pcall(function()
		return HttpRbxApiService:PostAsyncFullUrl(apiUrl, data)
	end)

	if success then
		return true, response
	elseif attempt >= MAX_RETRIES then
		return false, response
	else
		local timeToWait = 2^(attempt - 1)
		wait(timeToWait)
		return requestAndRetry(apiUrl, data, attempt + 1)
	end
end

local BASE_DOMAIN = getBaseDomain()
local ITEM_CONFIGURATION_URL = string.format("https://itemconfiguration.%s", BASE_DOMAIN)
local GET_ASSET_CREATION_DETAILS_URL = ITEM_CONFIGURATION_URL .. "v1/creations/get-asset-details"

local function getAssetCreationDetails(assetIds)
	local success, response = requestAndRetry(
		GET_ASSET_CREATION_DETAILS_URL,
		HttpService:JSONEncode({ assetIds = assetIds })
	)

	if success then
		return true, HttpService:JSONDecode(response)
	else
		return false, response
	end
end

return getAssetCreationDetails
