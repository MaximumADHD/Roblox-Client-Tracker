local Packages = script.Parent.Parent.Parent.Parent.Parent.Parent
local Roact = require(Packages.Roact)

local UIBlox = require(Packages.UIBlox)

local Images = UIBlox.App.ImageSet.Images
local ImageSetLabel = UIBlox.Core.ImageSet.Label

local createImagePalette = function()
	local imagesResolutionScale = Images.ImagesResolutionScale
	local imageItems = {}
	for imageId, data in pairs(Images) do
		if imageId ~= "ImagesResolutionScale" then
			local x = data.ImageRectSize.X / imagesResolutionScale
			local y = data.ImageRectSize.Y / imagesResolutionScale
			imageItems[imageId] = {
				name = imageId,
				summary = x .. " by " .. y,
				story = Roact.createElement(ImageSetLabel, {
					Size = UDim2.fromOffset(x, y),
					BackgroundTransparency = 1,
					Image = Images[imageId],
					LayoutOrder = 4,
				}),
			}
		end
	end

	return imageItems
end

return {
	stories = createImagePalette(),
}
