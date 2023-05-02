local createImageSetComponent = require(script.Parent.createImageSetComponent)

local GuiService = game:GetService("GuiService")

local CorePackages = script:FindFirstAncestor("CorePackages")
local ImageSet = script.Parent
local Core = ImageSet.Parent
local UIBlox = Core.Parent
local Images = require(UIBlox.App.ImageSet.Images)

local success, scale = pcall(GuiService.GetResolutionScale, GuiService)
if not success or not CorePackages then
	scale = 1
end

--TODO: When Studio wants to use imageset components,
-- We will need a different way to get the correct image scale value for the images
scale = Images.ImagesResolutionScale

return {
	Button = createImageSetComponent("ImageButton", scale),
	Label = createImageSetComponent("ImageLabel", scale),
}
