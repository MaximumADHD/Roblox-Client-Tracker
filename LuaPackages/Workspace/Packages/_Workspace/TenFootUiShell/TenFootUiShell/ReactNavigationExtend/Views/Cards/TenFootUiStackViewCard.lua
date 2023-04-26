local TenFootUiShell = script:FindFirstAncestor("TenFootUiShell")
local Packages = TenFootUiShell.Parent
local ReactNavigationExtend = TenFootUiShell.ReactNavigationExtend
local React = require(Packages.React)
local ReactRoblox = require(Packages.ReactRoblox)
local AppCommonLib = require(Packages.AppCommonLib)
local LuauPolyfill = require(Packages.LuauPolyfill)
local Object = LuauPolyfill.Object

local TenFootUiBaseViewCard = require(ReactNavigationExtend.Views.Cards.TenFootUiBaseViewCard)
local TenFootUiCommon = require(Packages.TenFootUiCommon)

type Descriptor = TenFootUiCommon.Descriptor
type ScreenKind = TenFootUiCommon.ScreenKind
type Signal = AppCommonLib.Signal

export type Props = {
	isVisible: boolean,
	descriptor: Descriptor,
	adorneeParent: Instance,
	surfaceGuiParent: Instance,
	screenProps: { [any]: any }?,
}

local MemoizedTenFootUiBaseViewCard = React.memo(TenFootUiBaseViewCard)

local function TenFootUiStackViewCard(props: Props)
	local screenProps = props.screenProps
	local adornee, setAdornee = React.useState(nil)
	local groupTransparency, updateGroupTransparency = React.useBinding(0)

	local newProps = Object.assign(table.clone(props), {
		setAdornee = setAdornee,
		groupTransparency = groupTransparency,
	})

	local adorneeParent = props.adorneeParent

	React.useEffect(function()
		local connection
		if screenProps ~= nil and screenProps.groupTransparencyChangedSignal ~= nil then
			local groupTransparencyChangedSignal = screenProps.groupTransparencyChangedSignal
			connection = groupTransparencyChangedSignal:connect(updateGroupTransparency)
		end
		return function()
			if connection then
				connection:disconnect()
			end
		end
	end, { screenProps })

	return React.createElement(React.Fragment, nil, {
		Card = React.createElement(MemoizedTenFootUiBaseViewCard, newProps),
		Constraint = if adornee ~= nil and adorneeParent:IsA("BasePart")
			then ReactRoblox.createPortal({
				Constraint = React.createElement("RigidConstraint", {
					Enabled = true,
					Attachment0 = adorneeParent:FindFirstChildOfClass("Attachment"),
					Attachment1 = adornee:FindFirstChildOfClass("Attachment"),
				}),
			}, adornee)
			else nil,
	})
end

return TenFootUiStackViewCard
