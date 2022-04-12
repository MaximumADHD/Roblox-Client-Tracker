local Plugin = script.Parent.Parent.Parent

local Packages = Plugin.Packages
local Cryo = require(Packages.Cryo)

local Util = Plugin.Core.Util

local Actions = Plugin.Core.Actions
local GetAssets = require(Actions.GetAssets)
local SetAssetPreview = require(Actions.SetAssetPreview)

local Analytics = require(Plugin.Core.Util.Analytics.Analytics)

local FFlagToolboxFixTryInStudioContextMenu = game:GetFastFlag("ToolboxFixTryInStudioContextMenu")

return function(assetId, tryInsert, localization, networkInterface)
	return function(store)
		local ok, result = pcall(function()
			local requestPromise = networkInterface:getItemDetails({
				{
					id = assetId,
					itemType = "Asset",
				},
			})

			requestPromise:andThen(function(response)
				local responseItem = response.responseBody.data[1]

				if not responseItem then
					-- TODO STM-135: Replace these warnings with Lumberyak logs
					warn("Could not find asset information in response for", tostring(assetId))

					Analytics.onTryAssetFailure(assetId)
					return
				end

				local assetData = {
					Asset = {
						Id = responseItem.asset.id,
						TypeId = responseItem.asset.typeId,
						AssetGenres = responseItem.asset.assetGenres,
						Name = responseItem.asset.name,
						Description = responseItem.asset.description,
						Created = responseItem.asset.createdUtc,
						Updated = responseItem.asset.updatedUtc,
					},
					Context = FFlagToolboxFixTryInStudioContextMenu and {} or nil, -- TODO: STM-828 Add currentCategory and other context item Analytics
					Creator = {
						Name = responseItem.creator.name,
						Id = responseItem.creator.id,
						TypeId = not FFlagToolboxFixTryInStudioContextMenu and responseItem.creator.type or nil,
						Type = FFlagToolboxFixTryInStudioContextMenu and responseItem.creator.type or nil,
					},
				}

				-- Add the asset data to the store, so that we can open AssetPreview
				store:dispatch(GetAssets({
					assetData,
				}))

				store:dispatch(SetAssetPreview(true, assetId))

				-- TODO: Make this is into a thunk & call it via that instead of a parameter:
				tryInsert(assetData, false)

				Analytics.onTryAsset(assetId)
			end, function(err)
				-- TODO STM-135: Replace these warnings with Lumberyak logs
				warn("Could not load asset information for", tostring(assetId), err)

				Analytics.onTryAssetFailure(assetId)
			end)
			return nil
		end)

		if not ok then
			-- TODO STM-135: Replace these warnings with Lumberyak logs
			warn("Failed to try asset", tostring(assetId), tostring(result))
			Analytics.onTryAssetFailure(assetId)
		end
	end
end
