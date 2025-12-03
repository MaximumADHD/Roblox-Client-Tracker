local InspectAndBuyFolder = script.Parent
local Colors = require(InspectAndBuyFolder.Colors)

local function getSelectionImageObjectRounded()
	local selectedImage = Instance.new("ImageLabel")
	selectedImage.Image = "rbxasset://textures/ui/InspectMenu/selection_rounded.png"
	selectedImage.ImageColor3 = Colors.White
	selectedImage.ScaleType = Enum.ScaleType.Slice
	selectedImage.SliceCenter = Rect.new(5, 5, 120, 20)
	selectedImage.BackgroundTransparency = 1
	selectedImage.Size = UDim2.new(1, 0, 1, 0)

	return selectedImage
end

return getSelectionImageObjectRounded
