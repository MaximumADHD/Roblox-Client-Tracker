local GridCellSize = UDim2.fromOffset(86, 35)

return {
	GroupCountMax = 32,
	GroupRowHeight = 34,
	GroupRowWidth = 120,
	ControlsHeaderButtonWidth = 106,
	GroupLabelFixedSize = UDim2.new(0, 120, 0, 34),
	GroupListRowHeight = 24,
	GridCellWidth = 85,
	GridHeaderLabelSize = UDim2.fromOffset(86, 35),
	GridCellSize = GridCellSize,
	CalculateTableSize = function(groupCount)
		return UDim2.fromOffset((GridCellSize.X.Offset - 1) * groupCount,
			(GridCellSize.Y.Offset - 1) * groupCount)
	end,
}
