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
local ScreenKind = TenFootUiCommon.TenFootUiRNTypes.ScreenKind

type Descriptor = TenFootUiCommon.Descriptor
type ScreenKind = TenFootUiCommon.ScreenKind
type AnimationStyle = TenFootUiCommon.AnimationStyle
type ScreenProps = TenFootUiCommon.ScreenProps
type XDirectionAnimationConfig = useXDirectionAnimation.XDirectionAnimationConfig

export type Props = {
	isActiveKey: boolean,
	isFocusable: boolean,
	index: number,
	descriptor: Descriptor,
	adorneeParent: Instance,
	surfaceGuiParent: Instance,
	screenProps: ScreenProps?,
}

local MemoizedTenFootUiBaseViewCard = React.memo(TenFootUiBaseViewCard)

local function TenFootUiSwitchViewCard(props: Props)
	local isActiveKey = props.isActiveKey
	local index = props.index
	local descriptor = props.descriptor
	local screenKind: ScreenKind = descriptor.options.screenKind or ScreenKind.Default
	local animationStyle: AnimationStyle = descriptor.options.animationStyle or AnimationStyleEnum.XDirection

	local screenPropsState, setScreenPropsState = React.useState(props.screenProps or {})

	local adornee, setAdornee = React.useState(nil)
	local surfaceGui, setSurfaceGui = React.useState(nil)

	local visible, cframe, groupTransparency
	if animationStyle == AnimationStyleEnum.XDirection then
		local xDirectionAnimationConfig: XDirectionAnimationConfig = useXDirectionAnimation({
			isActiveKey = isActiveKey,
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
		visible = isActiveKey
		groupTransparency = 0
	end

	local screenProps = table.clone(screenPropsState)
	screenProps.isActiveKey = isActiveKey

	local newProps = Object.assign(table.clone(props), {
		isVisible = visible,
		setAdornee = setAdornee,
		setSurfaceGui = setSurfaceGui,
		screenProps = screenProps,
		adorneeCFrame = cframe,
		groupTransparency = groupTransparency,
		adorneeAnchored = true,
	})

	return React.createElement(MemoizedTenFootUiBaseViewCard, newProps)
end

return TenFootUiSwitchViewCard
