local FoundationCloudAssets = script.Parent
local Assets = require(FoundationCloudAssets.Generated.ConsolidatedAssets)
local ContentProvider = game:GetService("ContentProvider")

local function preloadAsset(assetKey: string)
	-- create image label instance
	local assetImage = Instance.new("ImageLabel")
	assetImage.Image = Assets[assetKey].assetId

	-- preload asset
	task.spawn(function()
		ContentProvider:PreloadAsync({ assetImage })
		assetImage:Destroy()
	end)
end

return preloadAsset
