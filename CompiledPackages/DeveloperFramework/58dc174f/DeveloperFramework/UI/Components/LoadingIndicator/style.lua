local Framework = script:FindFirstAncestor("UI").Parent

local StyleKey = require(Framework.Style.StyleKey)

return {
	StartColor = StyleKey.DimmedText,
	EndColor = StyleKey.DialogMainButtonSelected,
	Size = UDim2.new(0, 92, 0, 24),
}
