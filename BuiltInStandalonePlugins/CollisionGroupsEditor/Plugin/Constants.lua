local GridCellSize = UDim2.fromOffset(85, 34)

return {
	GroupCountMax = 32,
	GroupRowHeight = 35,
	GroupRowWidth = 120,
	ControlsHeaderButtonWidth = 106,
	GroupLabelFixedSize = UDim2.fromOffset(120, 35),
	GroupListRowHeight = 24,
	GridCellWidth = 85,
	GridHeaderLabelSize = UDim2.fromOffset(86, 35),
	GridCellSize = GridCellSize,
	CalculateTableSize = function(groupCount)
		if groupCount == nil then
			return UDim2.fromScale(0, 0)
		else
			return UDim2.fromOffset(((1 + GridCellSize.X.Offset) * groupCount) + 1,
				((1 + GridCellSize.Y.Offset) * groupCount) + 1)
		end
	end,
}
