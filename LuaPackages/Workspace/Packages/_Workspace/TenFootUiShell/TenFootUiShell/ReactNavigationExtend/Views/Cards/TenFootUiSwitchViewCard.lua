local TenFootUiShell = script:FindFirstAncestor("TenFootUiShell")
local Packages = TenFootUiShell.Parent
local React = require(Packages.React)
local LuauPolyfill = require(Packages.LuauPolyfill)
local Object = LuauPolyfill.Object
local ReactNavigationExtend = TenFootUiShell.ReactNavigationExtend
local useXDirectionAnimation = require(ReactNavigationExtend.Hooks.useXDirectionAnimation)
local TenFootUiBaseViewCard = require(ReactNavigationExtend.Views.Cards.TenFootUiBaseViewCard)
local TenFootUiCommon = require(Packages.TenFootUiCommon)
local AnimationStyleEnum = TenFootUiCommon.TenFootUiRNTypes.AnimationStyleEnum

type Descriptor = TenFootUiCommon.Descriptor
type ScreenKind = TenFootUiCommon.ScreenKind
type AnimationStyle = TenFootUiCommon.AnimationStyle
type XDirectionAnimationConfig = useXDirectionAnimation.XDirectionAnimationConfig

export type Props = {
	isVisible: boolean,
	index: number,
	descriptor: Descriptor,
	adorneeParent: Instance,
	surfaceGuiParent: Instance,
	screenProps: { [any]: any }?,
}

local MemoizedTenFootUiBaseViewCard = React.memo(TenFootUiBaseViewCard)

local function TenFootUiSwitchViewCard(props: Props)
	local isVisible = props.isVisible
	local index = props.index
	local descriptor = props.descriptor
	local screenKind: ScreenKind = descriptor.options.screenKind or "Default"
	local animationStyle: AnimationStyle = descriptor.options.animationStyle or AnimationStyleEnum.XDirection

	-- Initialize initial screenProps
	local screenProps: { [any]: any } = if props.screenProps then table.clone(props.screenProps) else {}
	screenProps.isVisible = false
	local screenPropsState, setScreenPropsState = React.useState(props.screenProps or {})

	local adornee, setAdornee = React.useState(nil)
	local surfaceGui, setSurfaceGui = React.useState(nil)

	local visible, cframe, groupTransparency
	if animationStyle == AnimationStyleEnum.XDirection then
		local xDirectionAnimationConfig: XDirectionAnimationConfig = useXDirectionAnimation({
			isVisible = isVisible,
			index = index,
			screenKind = screenKind,
			setScreenPropsState = setScreenPropsState,
			adornee = adornee,
			surfaceGui = surfaceGui,
		})
		visible = xDirectionAnimationConfig.visible
		cframe = xDirectionAnimationConfig.cframe
		groupTransparency = xDirectionAnimationConfig.groupTransparency
	elseif animationStyle == AnimationStyleEnum.ZDirection then
		-- TODO with stack view navigation
	else -- animationStyle == AnimationStyleEnum.None
		visible = isVisible
		groupTransparency = 0
	end

	local newProps = Object.assign(table.clone(props), {
		isVisible = visible,
		setAdornee = setAdornee,
		setSurfaceGui = setSurfaceGui,
		screenProps = screenPropsState,
		adorneeCFrame = cframe,
		groupTransparency = groupTransparency,
	})

	return React.createElement(MemoizedTenFootUiBaseViewCard, newProps)
end

return TenFootUiSwitchViewCard
