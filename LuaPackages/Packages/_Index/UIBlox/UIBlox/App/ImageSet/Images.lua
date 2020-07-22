-- This file just provides a convenient interface to query for images
local GetImageSetData = require(script.Parent.GetImageSetData)

local GuiService = game:GetService("GuiService")

-- fallback spritesheet image to use if CorePackages is unavailable
local FALLBACK_IMAGES = {
	["./img_set_1x_1"] = "http://www.roblox.com/asset/?id=5346701015",
	["./img_set_1x_2"] = "http://www.roblox.com/asset/?id=5346701241",
	--["./img_set_1x_3"] = "",
}

local CorePackages = script:FindFirstAncestor("CorePackages")
local success, scale = pcall(GuiService.GetResolutionScale, GuiService)

if not success or not CorePackages then
	scale = 1
end

local sourceData = GetImageSetData(scale)

local function getPackagePath()
	local packageRoot = script.Parent

	if CorePackages == nil then
		-- We're not running in CI as a core script, no internal path
		return nil
	end

	local path = {}
	local current = packageRoot
	while current ~= nil and current ~= CorePackages do
		table.insert(path, 1, current.Name)
		current = current.Parent
	end

	return "LuaPackages/" .. table.concat(path, "/")
end

local function getImagePath(packagePath, imageName)
	if packagePath == nil then
		-- fallback to an uploaded image
		return FALLBACK_IMAGES[imageName]
	else
		return string.format("rbxasset://%s/ImageAtlas/%s.png", packagePath, imageName)
	end
end

local packagePath = getPackagePath()
local Images = {
	ImagesResolutionScale = scale,
}

for key, value in pairs(sourceData) do
	assert(typeof(value) == "table")
	local imageProps = {}
	for imageKey, imageValue in pairs(value) do
		if imageKey == "ImageSet" then
			imageProps.Image = getImagePath(packagePath, imageValue)
		else
			imageProps[imageKey] = imageValue
		end
	end
	Images[key] = imageProps
end

-- Attach a metamethod to guard against typos
setmetatable(Images, {
	__index = function(_, key)
		error(("%q is not a valid member of Images"):format(tostring(key)), 2)
	end,
})

return Images
