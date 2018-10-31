--[[
    Returns a blank selector image.
]]
return function()
	local BlankSelectionImage = Instance.new("ImageLabel")
	BlankSelectionImage.Name = "BlankSelectorImage"
	BlankSelectionImage.Position = UDim2.new(0, 0, 0, 0)
	BlankSelectionImage.Size = UDim2.new(1, 0, 1, 0)
	BlankSelectionImage.BackgroundTransparency = 1
	return BlankSelectionImage
end