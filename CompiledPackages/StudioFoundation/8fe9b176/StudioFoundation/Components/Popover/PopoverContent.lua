local Main = script:FindFirstAncestor("StudioFoundation")
local Packages = Main.Parent
local React = require(Packages.React)
local ReactRoblox = require(Packages.ReactRoblox)
local Foundation = require(Packages.Foundation)

local Framework = require(Packages.Framework)
local ContextServices: any = Framework.ContextServices
local Design = ContextServices.Design

local FFlagStudioFoundationPopupTooltipFix = require(Main.SharedFlags.getFFlagStudioFoundationPopupTooltipFix)()

type PopoverContentProps = {
	isOpen: boolean,
	panel: { container: PluginGui, [any]: any }?,
	children: React.ReactNode,
}

local function PopoverContent(props: PopoverContentProps)
	local design = Design.use():get()
	-- Only call useStyleSheet when the fix is enabled; flag-off preserves the original
	-- single-StyleLink behaviour and avoids touching Foundation hooks at all.
	local foundationStyleSheet = if FFlagStudioFoundationPopupTooltipFix then Foundation.Hooks.useStyleSheet() else nil

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
			}),
			if foundationStyleSheet
				then React.createElement("StyleLink", {
					StyleSheet = foundationStyleSheet,
				})
				else nil
		),
		props.panel.container
	)
end

return PopoverContent
