-- This file just provides a convenient interface to query for images
export type ImageSetImage = {
	ImageRectOffset: Vector2,
	ImageRectSize: Vector2,
	Image: string,
}

export type Images = {
	ImagesResolutionScale: number,
	[string]: ImageSetImage,
}

return {}
