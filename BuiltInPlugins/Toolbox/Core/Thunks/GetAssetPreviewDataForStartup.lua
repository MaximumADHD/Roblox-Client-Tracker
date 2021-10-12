local Plugin = script.Parent.Parent.Parent

local Libs = Plugin.Libs
local Cryo = require(Libs.Cryo)

local Util = Plugin.Core.Util

local Actions = Plugin.Core.Actions
local GetAssets = require(Actions.GetAssets)
local SetAssetPreview = require(Actions.SetAssetPreview)

local Analytics = require(Plugin.Core.Util.Analytics.Analytics)

return function(assetId, tryInsert, localization, api)
	return function(store)
		local ok, result = pcall(function()
			-- There is no API to get individual Toolbox item details in the same format as that which
			-- we use for fetching the whole page of Toolbox assets, so we map the fields from this API
			-- to the expected format from the whole-page batch API (IDE/Toolbox/Items)
			api.ToolboxService.V1.Items.details({
				items = {
					{
						id = assetId,
						itemType = "Asset",
					}
				}
			}):makeRequest():andThen(function(response)
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
					Creator = {
						Name = responseItem.creator.name,
						Id = responseItem.creator.id,
						TypeId = responseItem.creator.type,
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
