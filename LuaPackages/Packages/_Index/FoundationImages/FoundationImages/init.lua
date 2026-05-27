local ImagesTypes = require(script.ImagesTypes)
export type ImageSetImage = ImagesTypes.ImageSetImage
export type Images = ImagesTypes.Images

return {
	getResolutionScale = require(script.getResolutionScale),
	Images = require(script.Images),
	IconImages_DEPRECATED = require(script.DeprecatedIconImages),
	Flags = require(script.Flags),
}
