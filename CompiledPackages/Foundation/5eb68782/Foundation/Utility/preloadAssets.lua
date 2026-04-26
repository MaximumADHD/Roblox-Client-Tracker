local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)
local FoundationCloudAssets = require(Packages.FoundationCloudAssets)
local Assets = FoundationCloudAssets.Assets
local preloadAsset = FoundationCloudAssets.preloadAsset

return function(assets: string | { string })
	assets = if typeof(assets) == "string" then { assets } else assets

	Dash.forEach(assets :: { string }, function(asset)
		assert(
			Assets[asset],
			`preloadAssets should only be used with valid FoundationCloudAssets; {asset} is an invalid name`
		)
		preloadAsset(asset)
	end)
end
