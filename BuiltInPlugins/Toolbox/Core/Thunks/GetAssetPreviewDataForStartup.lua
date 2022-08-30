local Plugin = script.Parent.Parent.Parent

local Actions = Plugin.Core.Actions
local MarkTryInStudioDone = require(Actions.MarkTryInStudioDone)

local Analytics = require(Plugin.Core.Util.Analytics.Analytics)

return function(assetId, tryInsert, localization, networkInterface, setAssetPreview)
	return function(store)
		local ok, result = pcall(function()
			if store:getState().tryInStudio.triedInStudio[assetId] then
				-- Every time the tab or category is remounted, this thunk is being called again, but we only want to try the asset
				-- once per-session to avoid it being reinserted and opening the preview every time you change category or tab
				-- If the user actually clicks "Try in Studio" again on the website, it will open a new session.
				return
			end

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
					Context = {}, -- TODO: STM-828 Add currentCategory and other context item Analytics
					Creator = {
						Name = responseItem.creator.name,
						Id = responseItem.creator.id,
						Type = responseItem.creator.type,
					},
				}

				setAssetPreview(assetData)

				-- TODO: Make this is into a thunk & call it via that instead of a parameter:
				tryInsert(assetData, false)

				Analytics.onTryAsset(assetId)

				store:dispatch(MarkTryInStudioDone(assetId))
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
