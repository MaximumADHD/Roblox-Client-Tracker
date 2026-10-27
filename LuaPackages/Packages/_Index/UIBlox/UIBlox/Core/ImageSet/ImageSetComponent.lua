local createImageSetComponent = require(script.Parent.createImageSetComponent)

local ImageSet = script.Parent
local Core = ImageSet.Parent
local UIBlox = Core.Parent
local Images = require(UIBlox.App.ImageSet.Images)

--TODO: When Studio wants to use imageset components,
-- We will need a different way to get the correct image scale value for the images
local scale = Images.ImagesResolutionScale

return {
	Button = createImageSetComponent("ImageButton", scale),
	Label = createImageSetComponent("ImageLabel", scale),
}
