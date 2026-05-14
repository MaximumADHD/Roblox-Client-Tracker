local Main = script:FindFirstAncestor("StudioFoundation")
local Packages = Main.Parent
local React = require(Packages.React)
local ReactRoblox = require(Packages.ReactRoblox)

local Framework = require(Packages.Framework)
local ContextServices: any = Framework.ContextServices
local Design = ContextServices.Design

type PopoverContentProps = {
	isOpen: boolean,
	panel: { container: PluginGui, [any]: any }?,
	children: React.ReactNode,
}

local function PopoverContent(props: PopoverContentProps)
	local design = Design.use():get()

	if not props.isOpen or not props.panel then
		return nil
	end

	return ReactRoblox.createPortal(
		React.createElement(
			React.Fragment,
			nil,
			React.createElement(React.Fragment, nil, props.children),
			React.createElement("StyleLink", {
				StyleSheet = design,
			})
		),
		props.panel.container
	)
end

return PopoverContent
