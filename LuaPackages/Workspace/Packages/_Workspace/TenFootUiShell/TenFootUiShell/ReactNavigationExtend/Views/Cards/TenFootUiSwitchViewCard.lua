local TenFootUiShell = script:FindFirstAncestor("TenFootUiShell")
local Packages = TenFootUiShell.Parent
local ReactNavigationExtend = TenFootUiShell.ReactNavigationExtend
local React = require(Packages.React)
local LuauPolyfill = require(Packages.LuauPolyfill)
local Object = LuauPolyfill.Object

local TenFootUiBaseViewCard = require(ReactNavigationExtend.Views.Cards.TenFootUiBaseViewCard)
local TenFootUiCommon = require(Packages.TenFootUiCommon)

type Descriptor = TenFootUiCommon.Descriptor
type ScreenKind = TenFootUiCommon.ScreenKind

export type Props = {
	isVisible: boolean,
	descriptor: Descriptor,
	adorneeParent: Instance,
	surfaceGuiParent: Instance,
	screenProps: { [any]: any }?,
}

local MemoizedTenFootUiBaseViewCard = React.memo(TenFootUiBaseViewCard)

local function TenFootUiSwitchViewCard(props: Props)
	local adornee, setAdornee = React.useState(nil)
	local surfaceGui, setSurfaceGui = React.useState(nil)
	local isVisible = props.isVisible

	local screenProps: { [any]: any } = if props.screenProps then table.clone(props.screenProps) else {}
	screenProps.isVisible = false
	local screenPropsState, setScreenPropsState = React.useState(props.screenProps or {})

	React.useEffect(function()
		if adornee then
			setScreenPropsState(function(prev)
				local next = table.clone(prev)
				next.adorneeParent = adornee
				next.surfaceGuiParent = surfaceGui
				next.isVisible = isVisible
				return next
			end)
		end
	end, { adornee, surfaceGui, isVisible } :: { any })

	local newProps = Object.assign(table.clone(props), {
		setAdornee = setAdornee,
		setSurfaceGui = setSurfaceGui,
		screenProps = screenPropsState,
	})

	return React.createElement(MemoizedTenFootUiBaseViewCard, newProps)
end

return TenFootUiSwitchViewCard
