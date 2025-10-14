local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local View = require(Foundation.Components.View)
local Types = require(Foundation.Components.Types)
local withCommonProps = require(Foundation.Utility.withCommonProps)
type StateChangedCallback = Types.StateChangedCallback
type Bindable<T> = Types.Bindable<T>

local withDefaults = require(Foundation.Utility.withDefaults)
local TileContext = require(script.Parent.TileContext)

local StateLayerAffordance = require(Foundation.Enums.StateLayerAffordance)
local FillBehavior = require(Foundation.Enums.FillBehavior)
type FillBehavior = FillBehavior.FillBehavior

type Padding = Types.Padding
type ColorStyle = Types.ColorStyle

type TileProps = {
	isContained: boolean?,
	onStateChanged: StateChangedCallback?,
	FillDirection: Enum.FillDirection?,
	Size: Bindable<UDim2>,
	children: React.ReactNode?,
} & Types.CommonProps

local defaultProps = {
	FillDirection = Enum.FillDirection.Vertical,
	isContained = false,
	testId = "--foundation-tile",
}

local function Tile(tileProps: TileProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(tileProps, defaultProps)

	return React.createElement(
		View,
		withCommonProps(props, {
			tag = {
				["bg-shift-200"] = props.isContained,
				["gap-small"] = not props.isContained,
				["radius-medium"] = true,
			},
			stateLayer = {
				affordance = StateLayerAffordance.None,
			},
			onStateChanged = props.onStateChanged,
			layout = {
				FillDirection = props.FillDirection,
				SortOrder = Enum.SortOrder.LayoutOrder,
			},
			Size = props.Size,
			ref = ref,
		}),
		{
			TileContext = if props.children
				then React.createElement(TileContext.Provider, {
					value = {
						isContained = props.isContained,
						fillDirection = props.FillDirection,
						testId = props.testId,
					},
				}, props.children)
				else nil,
		}
	)
end

return React.forwardRef(Tile)
