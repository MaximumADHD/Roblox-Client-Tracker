local LABEL_WIDTH = 40
local LABEL_SPACING = 10
local PROGRESS_BAR_OFFSET = 2 * (LABEL_WIDTH + LABEL_SPACING)

return {
	LabelWidth = LABEL_WIDTH,
	LoadingBarSize = UDim2.new(1, -PROGRESS_BAR_OFFSET, 0, 12),
	Size = UDim2.new(1, 0, 0, 32),
	Spacing = LABEL_SPACING,
}
