local main = script.Parent.Parent.Parent
local Packages = main.Parent
local Framework = require(Packages.Framework)

local StyleKey = Framework.Style.StyleKey

local ViewType = require(main.Enums.ViewType)

local getFFlagMaterialGridItemLabelFoundationStyle = require(main.Flags.getFFlagMaterialGridItemLabelFoundationStyle)

local LABEL_PADDING = UDim.new(0, 6)

local style = {
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
	-- Foundation Typography.BodyMedium.FontSize (size-400) when getFFlagMaterialGridItemLabelFoundationStyle is on.
	TextSize = if getFFlagMaterialGridItemLabelFoundationStyle() then 14 else 20,
	TooltipDelay = 0.3,
	ViewType = ViewType.Grid,
	-- Grid cell label; list material name (MaterialGridItem; ignored by deprecated item modules).
	ItemLabelTextColor = StyleKey.MainText,
	ItemLabelScrimColor = StyleKey.MainBackground,
	ListItemLabelTextColor = StyleKey.MainText,
}

return style
