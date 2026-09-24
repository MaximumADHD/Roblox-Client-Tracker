local Main = script:FindFirstAncestor("StudioFoundation")
local Packages = Main.Parent
local React = require(Packages.React)
local Dash = require(Packages.Dash)

local Foundation = require(Packages.Foundation)
local View = Foundation.View

local useUniqueWidget = require(Main.Hooks.useUniqueWidget)

local Tooltip = require(Main.Components.Tooltip)
local TooltipSettingsContext = require(Main.Contexts.TooltipSettingsContext)
local PanelsContext = require(Main.Panels.PanelsContext)

local ControlState = Foundation.Enums.ControlState
local PopoverAlign = Foundation.Enums.PopoverAlign
local PopoverSide = Foundation.Enums.PopoverSide
type PopoverAlign = Foundation.PopoverAlign
type PopoverSide = Foundation.PopoverSide
type ControlState = Foundation.ControlState

local function ElementWithTooltipOnHover(props: { side: PopoverSide, align: PopoverAlign, text: string? })
	local anchor = useUniqueWidget()
	local isOpen, setIsOpen = React.useState(false)

	local onStateChanged = React.useCallback(function(state: ControlState)
		setIsOpen(state == ControlState.Hover)
	end, { setIsOpen })

	local onClose = React.useCallback(function()
		setIsOpen(false)
	end, { setIsOpen })

	return React.createElement(
		React.Fragment,
		nil,
		React.createElement(
			View,
			{ tag = "size-2000-2000 bg-system-emphasis", onStateChanged = onStateChanged, ref = anchor.ref }
		),
		React.createElement(Tooltip, {
			isOpen = isOpen,
			onClose = onClose,
			title = "Title",
			text = props.text or "Text",
			anchorUri = anchor.uri,
			anchorRef = anchor.ref,
			side = props.side,
			align = props.align,
		})
	)
end

return {
	summary = "Tooltip",
	stories = {
		Basic = {
			name = "Basic",
			story = function(props)
				return React.createElement(
					TooltipSettingsContext.Provider,
					nil,
					React.createElement(
						PanelsContext.Provider,
						{ uriScope = "BasicStory" },
						React.createElement(ElementWithTooltipOnHover, props.controls)
					)
				)
			end,
		},
		DelayGroup = {
			name = "DelayGroup",
			story = function(props)
				return React.createElement(
					TooltipSettingsContext.Provider,
					{ showDelay = 0.5, hideDelay = 0.5 },
					React.createElement(
						PanelsContext.Provider,
						{ uriScope = "DelayGroupStory" },
						React.createElement(
							View,
							{ tag = "auto-xy row gap-large" },
							React.createElement(
								ElementWithTooltipOnHover,
								{ side = props.controls.side, align = props.controls.align, text = "Text" }
							),
							React.createElement(ElementWithTooltipOnHover, {
								side = props.controls.side,
								align = props.controls.align,
								text = "Longer text that should most likely wrap into several lines",
							}),
							React.createElement(
								ElementWithTooltipOnHover,
								{ side = props.controls.side, align = props.controls.align, text = "Short again" }
							)
						)
					)
				)
			end,
		},
	},
	controls = {
		side = Dash.values(PopoverSide),
		align = Dash.values(PopoverAlign),
	},
}
