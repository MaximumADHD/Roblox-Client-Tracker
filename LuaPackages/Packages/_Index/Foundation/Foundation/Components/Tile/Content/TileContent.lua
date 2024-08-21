local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local FillBehavior = require(Foundation.Enums.FillBehavior)
local useTileLayout = require(Foundation.Components.Tile.useTileLayout)
local withDefaults = require(Foundation.Utility.withDefaults)
local View = require(Foundation.Components.View)

type TileContentProps = {
	padding: number?,
	spacing: number?,
	children: React.ReactElement<any, string>?,
	LayoutOrder: number?,
}

local defaultProps = {
	LayoutOrder = 2,
}

local function TileContent(tileContentProps: TileContentProps)
	local props = withDefaults(tileContentProps, defaultProps)
	local tileLayout = useTileLayout()

	local padding = if props.padding then UDim.new(0, props.padding) else nil
	local spacing = props.spacing or 0

	return React.createElement(View, {
		LayoutOrder = props.LayoutOrder,
		flexItem = {
			FlexMode = if tileLayout.fillBehavior == FillBehavior.Fit
				then Enum.UIFlexMode.Shrink
				else Enum.UIFlexMode.Fill,
		},
		layout = {
			FillDirection = Enum.FillDirection.Vertical,
			VerticalAlignment = Enum.VerticalAlignment.Top,
			VerticalFlex = if tileLayout.fillBehavior == FillBehavior.Fill
				then Enum.UIFlexAlignment.SpaceBetween
				else Enum.UIFlexAlignment.None,
			Padding = UDim.new(0, spacing),
			SortOrder = Enum.SortOrder.LayoutOrder,
		},
		padding = if padding
			then {
				top = if tileLayout.fillDirection == Enum.FillDirection.Horizontal then padding else UDim.new(),
				bottom = padding,
				left = if tileLayout.fillDirection == Enum.FillDirection.Vertical then padding else UDim.new(),
				right = padding,
			}
			else nil,
		tag = "size-full",
	}, props.children)
end

return TileContent
