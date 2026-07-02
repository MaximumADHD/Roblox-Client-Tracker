local FoundationImages = script.Parent

local GetDeprecatedImageSetData = require(FoundationImages.Deprecated.GetDeprecatedIconImageSetData)
local DEPRECATED_FALLBACK_IMAGES = require(FoundationImages.Deprecated.StaticFallbackImages)

local getResolutionScale = require(FoundationImages.getResolutionScale)

local resolutionScale = getResolutionScale()
local sourceData = GetDeprecatedImageSetData(resolutionScale)

local Packages = FoundationImages.Parent
local BuilderIcons = require(Packages.BuilderIcons)
local deprecatedUIBloxIcons = BuilderIcons.Migration["uiblox"]
local whitelistedIconDeprecations = require(FoundationImages.whitelistedIconAssets)

local DeprecatedImages = {}

for imageKey, imageSetData in sourceData do
	if deprecatedUIBloxIcons[imageKey] and whitelistedIconDeprecations[imageKey] == nil then
		local formattedData = {}
		for key, value in imageSetData do
			-- use image key to map to StaticFallback Images
			if key == "ImageSet" then
				formattedData.Image = DEPRECATED_FALLBACK_IMAGES[value]
			else
				formattedData[key] = value
			end
		end
		DeprecatedImages[imageKey] = formattedData
	end
end

return DeprecatedImages
