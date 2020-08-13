local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local ContextServices = require(Plugin.Packages.Framework.ContextServices)

local UI = require(Plugin.Packages.Framework.UI)
local Container = UI.Container
local Decoration = UI.Decoration

local Components = Plugin.Src.Components
local InputPane = require(Components.InputPane)
local RepopulatableHistory = require(Components.RepopulatableHistory)

local EventEmulator = Roact.PureComponent:extend("EventEmulator")


function EventEmulator:render()
	local layout = self.props.Theme:get("Layout")

	return Roact.createElement(Container, {
		Size = UDim2.new(1, 0, 1, 0),
		Background = Decoration.Box,
	},{
		Layout = Roact.createElement("UIListLayout", layout.Vertical),
		InputPane = Roact.createElement(InputPane),
		History = Roact.createElement(RepopulatableHistory)
	})
end

ContextServices.mapToProps(EventEmulator, {
	Theme = ContextServices.Theme,
})

return RoactRodux.connect(
	function(state, props)
		return {
			ActiveView = state.Status.ActiveView,
		}
	end
)(EventEmulator)