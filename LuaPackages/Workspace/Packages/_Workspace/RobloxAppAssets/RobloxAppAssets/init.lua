local GetImageData = require(script.GetImageData)
local GetImageSetData = require(script.GetImageSetData)
local GetImageSetPathPattern = require(script.GetImageSetPathPattern)

local types = require(script.types)

export type ImageSetData = types.ImageSetData
export type ImageData = types.ImageData

return {
	GetImageData = GetImageData,
	GetImageSetData = GetImageSetData,
	GetImageSetPathPattern = GetImageSetPathPattern,
}
