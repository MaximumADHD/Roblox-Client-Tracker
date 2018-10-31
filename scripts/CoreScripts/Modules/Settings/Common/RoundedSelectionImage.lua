--[[
    Returns a selection image with rounded corners.
]]
local Settings = script.Parent.Parent
local Constants = require(Settings.Pages.LeaveGameScreen.Constants)

return function()
	local RoundedSelectionImage = Instance.new("ImageLabel")
	RoundedSelectionImage.Name = "SelectorImage"
	RoundedSelectionImage.Image = Constants.Image.BUTTON_SELECTOR
	RoundedSelectionImage.Position = UDim2.new(0, -7, 0, -7)
	RoundedSelectionImage.Size = UDim2.new(1, 14, 1, 14)
	RoundedSelectionImage.BackgroundTransparency = 1
	RoundedSelectionImage.ScaleType = Enum.ScaleType.Slice
	RoundedSelectionImage.SliceCenter = Rect.new(31, 31, 63, 63)
	return RoundedSelectionImage
end
