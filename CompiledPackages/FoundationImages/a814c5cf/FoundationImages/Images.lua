local FoundationImages = script.Parent

local GetImageSetData = require(FoundationImages.Generated.GetImageSetData)
local FALLBACK_IMAGES = require(FoundationImages.Generated.FallbackImages)

local ImagesTypes = require(FoundationImages.ImagesTypes)
local getResolutionScale = require(FoundationImages.getResolutionScale)

local CorePackages = script:FindFirstAncestor("CorePackages")
local resolutionScale = getResolutionScale()
local sourceData, sourceScale
-- sourceScale should match the exact image scale used
sourceData, sourceScale = GetImageSetData(resolutionScale)

local function getPackagePath(): string?
	local packageRoot = FoundationImages

	if CorePackages == nil then
		-- We're not running in CI as a core script, no internal path
		return nil
	end

	local path = {}
	local current: Instance? = packageRoot
	while current ~= nil and current ~= CorePackages do
		table.insert(path, 1, current.Name)
		current = current.Parent
	end

	return "LuaPackages/" .. table.concat(path, "/")
end

local function getImagePath(packagePath: string?, imageName: string): string
	if packagePath == nil then
		-- fallback to an uploaded image
		return FALLBACK_IMAGES[imageName]
	else
		return string.format("rbxasset://%s/SpriteSheets/%s.png", packagePath, imageName)
	end
end

local packagePath = getPackagePath()
local Images = {}

for key, value in sourceData do
	assert(typeof(value) == "table", "invalid sourceData from GetImageSetData for scale " .. tostring(sourceScale))
	local imageProps = {}
	for imageKey, imageValue in value :: any do
		if imageKey == "ImageSet" then
			imageProps.Image = getImagePath(packagePath, imageValue)
		else
			imageProps[imageKey] = imageValue
		end
	end
	Images[key] = imageProps :: ImagesTypes.ImageSetImage
end

-- Attach a metamethod to guard against typos
setmetatable(Images, {
	__index = function(_, key)
		error(("%q is not a valid member of Images"):format(tostring(key)), 2)
	end,
})

return Images
