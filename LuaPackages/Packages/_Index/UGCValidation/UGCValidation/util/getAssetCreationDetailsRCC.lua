--!strict

--[[
	get the back-end response for https://apis.roblox.com/assets/rcc/v1/assets/{assetId}
]]

local root = script.Parent.Parent

local APIUtil = require(root.util.APIUtil)

local HttpService = game:GetService("HttpService")

local BASE_DOMAIN = APIUtil.getBaseDomain()
local API_URL = string.format("https://apis.%s", BASE_DOMAIN)
local GET_API_ASSETS_FORMAT_URL = API_URL .. "assets/rcc/v1/assets/%s"

local function getAssetCreationDetailsRCC(assetId: string)
	local urlToUse = string.format(GET_API_ASSETS_FORMAT_URL, assetId)
	local success, response = APIUtil.requestAndRetryGet(urlToUse)

	if success then
		return true, HttpService:JSONDecode(response)
	else
		return false, response
	end
end

return getAssetCreationDetailsRCC
