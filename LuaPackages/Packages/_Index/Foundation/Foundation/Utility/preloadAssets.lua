local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)
local Flags = require(Foundation.Utility.Flags)
local FoundationCloudAssets = require(Packages.FoundationCloudAssets)
local devAssert = require(Foundation.Utility.devAssert)
local Assets = FoundationCloudAssets.Assets
local preloadAsset = FoundationCloudAssets.preloadAsset

return function(assets: string | { string })
	assets = if typeof(assets) == "string" then { assets } else assets

	Dash.forEach(assets :: { string }, function(asset)
		local message = `preloadAssets should only be used with valid FoundationCloudAssets; {asset} is an invalid name`
		if Flags.FoundationDevOnlyPropAsserts then
			devAssert(Assets[asset], message)
			if not Assets[asset] then
				return
			end
		else
			assert(Assets[asset], message)
		end
		preloadAsset(asset)
	end)
end
