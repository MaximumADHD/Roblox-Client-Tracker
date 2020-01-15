local Plugin = script.Parent.Parent.Parent

local FetchMarketplaceAssetInfo = require(Plugin.Src.Thunks.FetchMarketplaceAssetInfo)
local cleanTimestamp = require(Plugin.Src.Util.cleanTimestamp)

local MAX_IDS_PER_REQUESTS = 50


-- apiImpl : (Http.API)
-- marketplaceService : (Service) something that implements GetProductInfo
-- assetIds : (array<numbers>) a list of assetIds of plugins
-- storedPluginData : (array<table>) a list of maps holding information about installed plugins
local function multigetPluginInfoRequest(apiImpl, marketplaceService, assetIds, storedPluginData)
	return function(store)
		-- these urls do not support excessive numbers of ids, so break it up
		if #assetIds > MAX_IDS_PER_REQUESTS then
			local extraIds = {}
			for i = #assetIds, MAX_IDS_PER_REQUESTS, -1 do
				table.insert(extraIds, i)
				table.remove(assetIds, i)

				if #extraIds == MAX_IDS_PER_REQUESTS then
					store:dispatch(multigetPluginInfoRequest(apiImpl, marketplaceService, extraIds, storedPluginData))
					extraIds = {}
				end
			end

			if #extraIds > 0 then
				store:dispatch(multigetPluginInfoRequest(apiImpl, marketplaceService, extraIds, storedPluginData))
			end
		end

		return apiImpl.Develop.v1.Plugins(assetIds):andThen(function(pluginsResult)
			local response = pluginsResult.responseBody

			local pluginInfo = {}
			for _, entry in pairs(response.data) do
				pluginInfo[entry.id] = {
					assetId = entry.id,
					name = entry.name,
					description = entry.description,
					latestVersion = entry.versionId,
					updated = cleanTimestamp(entry.updated),

					-- fields merged from StudioService.InstalledPlugins...
					-- enabled
					-- installedVersion
					-- isModerated

					-- fields to include from MarketplaceService:GetProductInfo...
					-- creator
				}
			end

			-- merge this data with the information we already have
			local assetsMerged = 0
			for _, entry in pairs(storedPluginData) do
				if pluginInfo[entry.assetId] then
					local p = pluginInfo[entry.assetId]
					p.enabled = entry.enabled
					p.installedVersion = entry.installedVersion
					p.isModerated = entry.isModerated

					if assetsMerged == #assetIds then
						break
					end
				end
			end

			-- pass all this data to the next thunk to fetch creator information
			store:dispatch(FetchMarketplaceAssetInfo(marketplaceService, pluginInfo))
		end, function(_)
			--warn("Failed to fetch info about plugins : ", err.responseBody)
		end)
	end
end



return multigetPluginInfoRequest
