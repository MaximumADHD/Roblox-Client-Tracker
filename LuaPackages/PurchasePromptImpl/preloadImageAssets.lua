local ContentProvider = game:GetService("ContentProvider")

local function preloadImageAssets(images)
	spawn(function()
		local assets = {}

		for _, image in pairs(images) do
			local decal = Instance.new("Decal")
			decal.Texture = image.Path
			table.insert(assets, decal)
		end

		ContentProvider:PreloadAsync(assets)

		for _,asset in pairs(assets) do
			asset:Destroy()
		end
	end)
end

return preloadImageAssets