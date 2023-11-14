--!nonstrict

local root = script.Parent.Parent

local APIUtil = require(root.util.APIUtil)

local HttpService = game:GetService("HttpService")

local BASE_DOMAIN = APIUtil.getBaseDomain()
local ITEM_CONFIGURATION_URL = string.format("https://itemconfiguration.%s", BASE_DOMAIN)
local GET_ASSET_CREATION_DETAILS_URL = ITEM_CONFIGURATION_URL .. "v1/creations/get-asset-details"

local function getAssetCreationDetails(assetIds)
	local success, response =
		APIUtil.requestAndRetryPost(GET_ASSET_CREATION_DETAILS_URL, HttpService:JSONEncode({ assetIds = assetIds }))

	if success then
		return true, HttpService:JSONDecode(response)
	else
		return false, response
	end
end

return getAssetCreationDetails
