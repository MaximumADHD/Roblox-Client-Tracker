local GuiService = game:GetService("GuiService")

local GetImageSetData = require(script.Parent.GetImageSetData)
local GetImageSetPathPattern = require(script.Parent.GetImageSetPathPattern)

local types = require(script.Parent.types)

type ImageData = types.ImageData

local function GetImageData(image: string, resolutionScale: number?): ImageData?
	local imageSetData = GetImageSetData(resolutionScale or GuiService:GetResolutionScale())
	local imageData = imageSetData[image]

	return if imageData == nil then nil else {
		Image = GetImageSetPathPattern(imageData.ImageSet),
		ImageRectSize = imageData.ImageRectSize,
		ImageRectOffset = imageData.ImageRectOffset,
	}
end

return GetImageData
