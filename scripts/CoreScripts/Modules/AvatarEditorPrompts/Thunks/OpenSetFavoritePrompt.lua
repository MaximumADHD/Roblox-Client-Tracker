local AvatarEditorService = game:GetService("AvatarEditorService")
local CorePackages = game:GetService("CorePackages")
local MarketplaceService = game:GetService("MarketplaceService")

local Promise = require(CorePackages.Promise)

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
				return MarketplaceService:GetProductInfo(itemId, infoType)
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