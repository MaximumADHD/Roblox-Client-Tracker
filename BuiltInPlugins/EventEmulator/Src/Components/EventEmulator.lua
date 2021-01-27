local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local THEME_REFACTOR = Framework.Util.RefactorFlags.THEME_REFACTOR


local UI = Framework.UI
local Container = UI.Container
local Decoration = UI.Decoration

local Components = Plugin.Src.Components
local InputPane = require(Components.InputPane)
local RepopulatableHistory = require(Components.RepopulatableHistory)

local EventEmulator = Roact.PureComponent:extend("EventEmulator")

function EventEmulator:render()
	local props = self.props

	local theme, layout
	if THEME_REFACTOR then
		theme = props.Stylizer
		layout = theme.Layout.Vertical
	else
		theme = props.Theme
		layout = theme:get("Layout").Vertical
	end

	return Roact.createElement(Container, {
		Size = UDim2.new(1, 0, 1, 0),
		Background = Decoration.Box,
	},{
		Layout = Roact.createElement("UIListLayout", layout),
		InputPane = Roact.createElement(InputPane),
		History = Roact.createElement(RepopulatableHistory)
	})
end

ContextServices.mapToProps(EventEmulator, {
	Stylizer = THEME_REFACTOR and ContextServices.Stylizer or nil,
	Theme = (not THEME_REFACTOR) and ContextServices.Theme or nil,
})

return RoactRodux.connect(
	function(state, props)
		return {
			ActiveView = state.Status.ActiveView,
		}
	end
)(EventEmulator)