local main = script.Parent.Parent.Parent
local Packages = main.Parent
local Framework = require(Packages.Framework)

local StyleKey = Framework.Style.StyleKey

local ViewType = require(main.Enums.ViewType)

local LABEL_PADDING = UDim.new(0, 6)

return {
	BackgroundColor = StyleKey.ScrollBarBackground,
	GridItemBackgroundColor = StyleKey.Button,
	GridItemBackgroundColorApplied = StyleKey.BackgroundDefault,
	GridItemBackgroundColorHovered = StyleKey.ButtonHover,
	GridItemBorderColor = StyleKey.Border,
	GridItemBorderColorSelected = StyleKey.InputFieldBorderSelected,
	GridItemCornerRadius = UDim.new(0, 6),
	GridItemPadding = 4,
	GridItemSize = 128,
	GridItemLabelPadding = {
		PaddingBottom = LABEL_PADDING,
		PaddingLeft = LABEL_PADDING,
		PaddingRight = LABEL_PADDING,
	},
	ListItemBackgroundColor = StyleKey.Button,
	ListItemHeight = 40,
	ListItemPadding = 0,
	ListItemSpacing = 4,
	MaterialPreviewStyle = "CornerBox",
	Padding = 0,
	ShimmerSizeOffset = 2,
	SnapshotSize = UDim2.fromOffset(64, 64),
	TextSize = 20,
	TooltipDelay = 0.3,
	ViewType = ViewType.Grid,
}
