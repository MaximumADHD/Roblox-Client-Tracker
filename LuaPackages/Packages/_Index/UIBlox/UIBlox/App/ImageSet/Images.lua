-- This file just provides a convenient interface to query for images
local ImageSet = script.Parent
local UIBlox = ImageSet.Parent.Parent
local FoundationImages = require(UIBlox.Parent.FoundationImages)

export type ImageSetImage = FoundationImages.ImageSetImage
export type Images = FoundationImages.Images

local Images = FoundationImages.Images

Images.ImagesResolutionScale = FoundationImages.getResolutionScale()

return FoundationImages.Images
