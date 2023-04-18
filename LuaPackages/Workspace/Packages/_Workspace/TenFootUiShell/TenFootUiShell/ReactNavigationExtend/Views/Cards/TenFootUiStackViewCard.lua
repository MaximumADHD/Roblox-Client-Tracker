local TenFootUiShell = script:FindFirstAncestor("TenFootUiShell")
local Packages = TenFootUiShell.Parent
local ReactNavigationExtend = TenFootUiShell.ReactNavigationExtend
local React = require(Packages.React)
local ReactRoblox = require(Packages.ReactRoblox)
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

local function TenFootUiStackViewCard(props: Props)
	local adornee, setAdornee = React.useState(nil)

	local newProps = Object.assign(table.clone(props), {
		setAdornee = setAdornee,
	})

	local adorneeParent = props.adorneeParent

	return React.createElement(React.Fragment, nil, {
		Card = React.createElement(MemoizedTenFootUiBaseViewCard, newProps),
		Constraint = if adornee ~= nil and adorneeParent:IsA("BasePart")
			then ReactRoblox.createPortal({
				Constraint = React.createElement("WeldConstraint", {
					Enabled = true,
					Part0 = adorneeParent,
					Part1 = adornee,
				}),
			}, adornee)
			else nil,
	})
end

return TenFootUiStackViewCard
