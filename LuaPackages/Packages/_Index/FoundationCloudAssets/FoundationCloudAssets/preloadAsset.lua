local FoundationCloudAssets = script.Parent
local Assets = require(FoundationCloudAssets.Generated.Assets)
local ContentProvider = game:GetService("ContentProvider")

local function preloadAsset(assetName: string)
	-- create image label instance
	local assetImage = Instance.new("ImageLabel")
	assetImage.Image = Assets[assetName]

	-- preload asset
	task.spawn(function()
		ContentProvider:PreloadAsync({ assetImage })
		assetImage:Destroy()
	end)
end

return preloadAsset
