local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local View = require(Foundation.Components.View)
local Types = require(Foundation.Components.Types)
local withCommonProps = require(Foundation.Utility.withCommonProps)
type StateChangedCallback = Types.StateChangedCallback
type Bindable<T> = Types.Bindable<T>

local withDefaults = require(Foundation.Utility.withDefaults)
local TileLayoutContext = require(script.Parent.TileLayoutContext)

local FillBehavior = require(Foundation.Enums.FillBehavior)
type FillBehavior = FillBehavior.FillBehavior
type Padding = Types.Padding
type ColorStyle = Types.ColorStyle

type TileProps = {
	fillDirection: Enum.FillDirection?,
	fillBehavior: FillBehavior?,
	spacing: number?,
	padding: Padding?,
	backgroundStyle: ColorStyle?,
	onStateChanged: StateChangedCallback?,
	Size: Bindable<UDim2>,
	AnchorPoint: Bindable<Vector2>?,
	children: React.ReactElement<any, string>?,
} & Types.CommonProps

local defaultProps = {
	fillDirection = Enum.FillDirection.Vertical,
	fillBehavior = FillBehavior.Fit,
	spacing = 0,
	padding = nil,
}

local function Tile(tileProps: TileProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(tileProps, defaultProps)

	return React.createElement(
		View,
		withCommonProps(props, {
			backgroundStyle = props.backgroundStyle,
			Size = props.Size,
			AnchorPoint = props.AnchorPoint,
			onStateChanged = props.onStateChanged,
			layout = {
				FillDirection = props.fillDirection,
				Padding = UDim.new(0, props.spacing),
				SortOrder = Enum.SortOrder.LayoutOrder,
			},
			padding = props.padding,
			ref = ref,
		}),
		{
			TileContext = if props.children
				then React.createElement(TileLayoutContext.Provider, {
					value = {
						fillDirection = props.fillDirection,
						fillBehavior = props.fillBehavior,
						tileSpacing = props.spacing,
						tilePadding = props.padding,
						hasBackground = props.backgroundStyle ~= nil,
					},
				}, props.children)
				else nil,
		}
	)
end

return React.forwardRef(Tile)
