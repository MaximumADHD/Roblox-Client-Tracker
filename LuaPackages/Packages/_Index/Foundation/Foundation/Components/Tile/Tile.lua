local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Flags = require(Foundation.Utility.Flags)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local withCommonProps = require(Foundation.Utility.withCommonProps)
type StateChangedCallback = Types.StateChangedCallback
type Bindable<T> = Types.Bindable<T>

local TileContext = require(script.Parent.TileContext)
local withDefaults = require(Foundation.Utility.withDefaults)

local FillBehavior = require(Foundation.Enums.FillBehavior)
local StateLayerAffordance = require(Foundation.Enums.StateLayerAffordance)
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

	local contextValue = if Flags.FoundationStableContextValues
		then React.useMemo(function()
			return {
				isContained = props.isContained,
				fillDirection = props.FillDirection,
				testId = props.testId,
			}
		end, { props.isContained, props.FillDirection, props.testId } :: { unknown })
		else nil

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
					value = if Flags.FoundationStableContextValues
						then contextValue
						else {
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
