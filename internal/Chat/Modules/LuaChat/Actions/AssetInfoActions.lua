local MarketplaceService = game:GetService("MarketplaceService")

local Modules = script.Parent.Parent

local WebApi = require(Modules.WebApi)
local ActionType = require(Modules.ActionType)

local ASSET_THUMBNAIL_URL = "https://www.roblox.com/Thumbs/Asset.ashx?width=%u&height=%u&assetId=%u"
local ICON_SIZE = 64

local UrlSupportNewGamesAPI = settings():GetFFlag("UrlSupportNewGamesAPI")

local AssetActions = {}

function AssetActions.GetAssetInformation(assetId)
	return function(store)
		spawn(function()
			if store:GetState().AssetInfo[assetId] then
				return
			end

			local info = nil
			local success, errorMessage = pcall(function()
				info = MarketplaceService:GetProductInfo(assetId)
				-- The games endpoint uses asset ids as a string.
				info.AssetId = tostring(info.AssetId)
			end)

			if success == true and info then

				if info.AssetTypeId == Enum.AssetType.Place.Value then
					if UrlSupportNewGamesAPI == false then
						local _, iconId = WebApi.GetGameIcon(assetId)
						info.Icon = iconId
					end
				else
					info.Icon = string.format(ASSET_THUMBNAIL_URL, ICON_SIZE, ICON_SIZE, info.AssetId)
				end

				store:Dispatch({
					type = ActionType.FetchedAssetCardInfo,
					assetInfo = info,
				})
			else
				warn("GetAssetInformation -", errorMessage)
			end
		end)
	end
end



return AssetActions