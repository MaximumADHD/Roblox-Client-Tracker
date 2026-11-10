local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Constants = require(Foundation.Constants)
local StateLayerAffordance = require(Foundation.Enums.StateLayerAffordance)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local mapBindable = require(Foundation.Utility.mapBindable)
local useTokens = require(Foundation.Providers.Style.useTokens)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

type Bindable<T> = Types.Bindable<T>

export type BackdropProps = {
	-- How far the scrim has faded. `0` shows `Color.Common.Backdrop`. `1` is fully transparent. Defaults to `0`.
	transparency: Bindable<number>?,
	-- Called when the user activates the scrim. When omitted, the scrim sinks the click and stays up.
	onActivated: (() -> ())?,
	-- **Engine**: Size of the scrim. Defaults to `UDim2.fromScale(2, 2)`. `Position` and `AnchorPoint` each default to center when omitted, so a viewport-width scrim such as BottomSheet passes `UDim2.fromScale(1, 2)` with both.
	Size: UDim2?,
} & Types.CommonProps

local defaultProps = {
	transparency = 0,
	Size = UDim2.fromScale(2, 2),
	testId = "--foundation-backdrop",
}

local function Backdrop(backdropProps: BackdropProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(backdropProps, defaultProps)
	local tokens = useTokens()
	return React.createElement(
		View,
		withCommonProps(props, {
			Size = props.Size,
			backgroundStyle = mapBindable(props.transparency, function(value: number)
				return {
					Color3 = tokens.Color.Common.Backdrop.Color3,
					Transparency = math.lerp(tokens.Color.Common.Backdrop.Transparency, 1, value),
				}
			end),
			onActivated = props.onActivated or Dash.noop,
			selection = Constants.MODAL.DISABLE_SELECTION,
			stateLayer = {
				affordance = StateLayerAffordance.None,
			},
			tag = {
				["position-center-center"] = props.Position == nil,
				["anchor-center-center"] = props.AnchorPoint == nil,
			},
			ref = ref,
		})
	)
end

return React.memo(React.forwardRef(Backdrop))
