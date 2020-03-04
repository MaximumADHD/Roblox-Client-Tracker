local Plugin = script.Parent.Parent.Parent
local Promise = require(Plugin.Packages.Promise)
local SetLoadedPluginData = require(Plugin.Src.Actions.SetLoadedPluginData)

local CONSTANT_BACKOFF_TIME = 8 -- seconds
local MAX_ATTEMPTS = 4

local function FetchMarketplaceAssetInfo(marketplaceService, fetchedPluginData, currentAttempt)
	return function(store)
		if not currentAttempt then
			currentAttempt = 1
		else
			currentAttempt = currentAttempt + 1
			if currentAttempt > MAX_ATTEMPTS then
				-- TODO : fill in the incomplete data with placeholders and dispatch what we have
				return
			end
		end

		local numCompletedPlugins = 0
		local numFailedPlugins = 0
		local completePluginInfo = {}
		local incompletePluginInfo = {}

		local allFetchPromises = {}
		for assetId, entry in pairs(fetchedPluginData) do
			-- GetProductInfo is a blocking call, use promises to parallelize the work
			local fetchPromise = Promise.new(function(resolve, reject)
				spawn(function()
					-- too many requests in a short time can cause this call to fail
					local success, productInfo = pcall(marketplaceService.GetProductInfo,
						marketplaceService,
						entry.assetId)

					if success then
						resolve(productInfo)
					else
						reject()
					end
				end)
			end):andThen(function(productInfo)
				if productInfo then
					entry.creator = productInfo.Creator
				end
				completePluginInfo[assetId] = entry
				numCompletedPlugins = numCompletedPlugins + 1
			end, function()
				incompletePluginInfo[assetId] = entry
				numFailedPlugins = numFailedPlugins + 1
			end)
			table.insert(allFetchPromises, fetchPromise)
		end

		-- wait for all promises to resolve
		Promise.all(allFetchPromises):await()

		if numCompletedPlugins > 0 then
			store:dispatch(SetLoadedPluginData(completePluginInfo))
		end

		if numFailedPlugins > 0 then
			spawn(function()
				local backoff = (currentAttempt - 1) * CONSTANT_BACKOFF_TIME
				wait(backoff)
				store:dispatch(FetchMarketplaceAssetInfo(marketplaceService, incompletePluginInfo, currentAttempt))
			end)
		end
	end
end

return FetchMarketplaceAssetInfo