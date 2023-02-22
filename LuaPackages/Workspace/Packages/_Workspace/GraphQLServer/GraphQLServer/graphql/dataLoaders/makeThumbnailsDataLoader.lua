local Packages = script:FindFirstAncestor("GraphQLServer").Parent
local DataLoaderModule = require(Packages.DataLoader)
local DataLoader = DataLoaderModule.DataLoader

local ExperienceConnector = require(script.Parent.Parent.connectors.ExperienceConnector)
local batchFetchThumbnailsByUniverseId = ExperienceConnector.batchFetchThumbnailsByUniverseId

type options = {
	batchSize: number,
	batchDelay: number,
}

local defaultOptions = {
	batchSize = 100,
	batchDelay = 0,
}

local function makeThumbnailsDataLoader(fetchImpl, options_: options)
	local options = options_ or defaultOptions
	return DataLoader.new(function(universeIds)
		return batchFetchThumbnailsByUniverseId(universeIds, fetchImpl)
	end, {
		maxBatchSize = options.batchSize,
		batchScheduleFn = function(callback)
			task.delay(options.batchDelay, callback)
		end,
	})
end

return makeThumbnailsDataLoader
