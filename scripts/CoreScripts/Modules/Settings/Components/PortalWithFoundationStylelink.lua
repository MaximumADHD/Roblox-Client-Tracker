local CorePackages = game:GetService("CorePackages")

local Cryo = require(CorePackages.Packages.Cryo)
local Foundation = require(CorePackages.Packages.Foundation)
local React = require(CorePackages.Packages.React)
local ReactRoblox = require(CorePackages.Packages.ReactRoblox)

local View = Foundation.View
local useStyleSheet = Foundation.Hooks.useStyleSheet

export type Props = {
	children: React.ReactNode?,
	parent: GuiObject,
}

local function PortalWithFoundationStylelink(props: Props)
	local styleSheet = useStyleSheet()
	local children = Cryo.Dictionary.join({
		StyleLink = React.createElement("StyleLink", {
			StyleSheet = styleSheet,
		}),
	}, props.children)

	return ReactRoblox.createPortal(
		React.createElement(View, {
			tag="auto-xy"
		}, children), 
	props.parent)
end

return PortalWithFoundationStylelink
