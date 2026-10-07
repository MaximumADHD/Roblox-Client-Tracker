local FoundationCloudAssets = script

local preloadAsset = require(FoundationCloudAssets.preloadAsset)
local assets = require(FoundationCloudAssets.Generated.ConsolidatedAssets)

return {
	Assets = assets,
	preloadAsset = preloadAsset,
}
