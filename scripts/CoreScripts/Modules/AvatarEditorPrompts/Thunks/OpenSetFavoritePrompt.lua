local AvatarEditorService = game:GetService("AvatarEditorService")
local CorePackages = game:GetService("CorePackages")
local MarketplaceService = game:GetService("MarketplaceService")

local Promise = require(CorePackages.Packages.Promise)

local AvatarEditorPrompts = script.Parent.Parent
local OpenPrompt = require(AvatarEditorPrompts.Actions.OpenPrompt)

local PromptType = require(AvatarEditorPrompts.PromptType)

return function(itemId, itemType, shouldFavorite)
	return function(store)
		return Promise.new(function(resolve, reject)
			local infoType
			if itemType == Enum.AvatarItemType.Asset then
				infoType = Enum.InfoType.Asset
			else
				infoType = Enum.InfoType.Bundle
			end

			local success, result = pcall(function()
				if game:GetEngineFeature("AsyncRenamesUsedInLuaApps") then
					return MarketplaceService:GetProductInfoAsync(itemId, infoType)
				else
					return (MarketplaceService :: never):GetProductInfo(itemId, infoType)
				end
			end)

			if success then
				store:dispatch(OpenPrompt(PromptType.SetFavorite, {
					itemId = itemId,
					itemName = result.Name,
					itemType = itemType,
					shouldFavorite = shouldFavorite,
				}))

				resolve()
			else
				AvatarEditorService:SignalSetFavoriteFailed()

				reject()
			end
		end)
	end
end
