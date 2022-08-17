--[[
	Multi-Touch Pane
]]

local StudioDeviceEmulatorService = game:GetService("StudioDeviceEmulatorService")

local main = script.Parent.Parent.Parent
local Roact = require(main.Packages.Roact)

local Framework = require(main.Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Localization = ContextServices.Localization

local UI = Framework.UI
local Pane = UI.Pane
local SimpleExpandablePane = UI.SimpleExpandablePane
local Checkbox = UI.Checkbox

local MultiTouchPane = Roact.PureComponent:extend("MultiTouchPane")

export type Props = {
	OnClick: () -> (),
	Text: string,
}

type _Props = Props & {
	Localization: any,
	Stylizer: any,
}

function MultiTouchPane:init(_props)
	self.state = {
		multiTouchEmulationOn = StudioDeviceEmulatorService.IsMultiTouchEmulationOn,
	}

	self.toggleMultiTouchEmulationOn = function()
		local newMultiTouchEmulationOn = not self.state.multiTouchEmulationOn
		StudioDeviceEmulatorService.IsMultiTouchEmulationOn = newMultiTouchEmulationOn
		self:setState({
			multiTouchEmulationOn = newMultiTouchEmulationOn,
		})
	end
end

function MultiTouchPane:render()
	local props = self.props
	local state = self.state
	local localization = props.Localization

	return Roact.createElement(Pane, {
		AutomaticSize = Enum.AutomaticSize.Y,
		Layout = Enum.FillDirection.Vertical,
		Padding = 10,
		Spacing = 10,
	}, {
		MultiTouchPane = Roact.createElement(SimpleExpandablePane, {
			AlwaysExpanded = true,
			LayoutOrder = 3,
			Style = "Box",
			Text = localization:getText("MultiTouchPane", "MultiTouchPaneLabel"),
		}, {
			Roact.createElement(Checkbox, {
				Checked = state["multiTouchEmulationOn"],
				Key = "multiTouchEmulationOn",
				OnClick = self.toggleMultiTouchEmulationOn,
				Text = localization:getText("MultiTouchPane", "MultiTouchPaneCheckboxLabel"),
			}),
		}),
	})
end

MultiTouchPane = withContext({
	Localization = Localization,
	Stylizer = ContextServices.Stylizer,
})(MultiTouchPane)

return MultiTouchPane
