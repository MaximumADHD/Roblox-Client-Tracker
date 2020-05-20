--[[
	The top level view for the alignment plugin.

	Contains a UI section for each alignment setting, and button for aligning
	the selection using the current settings.
]]

local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local ContextServices = require(Plugin.Packages.Framework.ContextServices)

local UI = require(Plugin.Packages.Framework.UI)
local Button = UI.Button
local Container = UI.Container
local Decoration = UI.Decoration

local Util = require(Plugin.Packages.Framework.Util)
local LayoutOrderIterator = Util.LayoutOrderIterator

local ModeSection = require(Plugin.Src.Components.ModeSection)
local AxesSection = require(Plugin.Src.Components.AxesSection)
local RelativeToSection = require(Plugin.Src.Components.RelativeToSection)

local MainView = Roact.PureComponent:extend("MainView")

function MainView:render()
	local props = self.props

	local localization = props.Localization
	local theme = props.Theme:get("Plugin")

	local layoutOrderIterator = LayoutOrderIterator.new()

	return Roact.createElement(Container, {
		Background = Decoration.Box,
		Padding = theme.MainView.Padding,
	}, {
		Layout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			Padding = theme.MainView.ListItemPadding,
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),

		ModeSection = Roact.createElement(ModeSection, {
			LayoutOrder = layoutOrderIterator:getNextOrder(),
		}),

		AxesSection = Roact.createElement(AxesSection, {
			LayoutOrder = layoutOrderIterator:getNextOrder(),
		}),

		RelativeToSection = Roact.createElement(RelativeToSection, {
			LayoutOrder = layoutOrderIterator:getNextOrder(),
		}),

		-- Element intentionally empty to add a gap before the apply button.
		Spacer = Roact.createElement(Container, {
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			Size = UDim2.new(1, 0, 0, theme.MainView.SeparatorHeight),
		}),

		ButtonContainer = Roact.createElement(Container, {
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			Padding = theme.MainView.PrimaryButtonPadding,
			Size = UDim2.new(1, 0, 0, theme.MainView.PrimaryButtonHeight),
		}, {
			Button = Roact.createElement(Button, {
				Style = "RoundPrimary",
				Text = localization:getText("MainView", "AlignButton"),
				OnClick = function() end,
			}),
		}),
	})
end

ContextServices.mapToProps(MainView, {
	Localization = ContextServices.Localization,
	Plugin = ContextServices.Plugin,
	Theme = ContextServices.Theme,
})

local function mapDispatchToProps(dispatch)
	return {
		updateAlignment = function()
			-- TODO: dispatch to alignment logic
		end,
	}
end

return RoactRodux.connect(nil, mapDispatchToProps)(MainView)
