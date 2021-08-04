--[[
	Handles user input
]]
local FFlagEventEmulatorWithContext = game:GetFastFlag("EventEmulatorWithContext")

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local UI = Framework.UI
local Container = UI.Container
local Decoration = UI.Decoration

local Components = Plugin.Src.Components
local NameBox = require(Components.NameBox)
local Dropdown = require(Components.Dropdown)
local RBXEventView = require(Components.Views.RBXEventView)
local ThemeView = require(Components.Views.ThemeView)
local MemStorageEventView = require(Components.Views.MemStorageEventView)

local Constants = require(Plugin.Src.Util.Constants)
local VIEW_ID = Constants.VIEW_ID
local ORDER = Constants.INPUT_PANE_LAYOUT

local InputPane = Roact.PureComponent:extend("InputPane")

function InputPane:init()
	self.getView = function ()
		local props = self.props
		local activeView = props.ActiveView

		local view = "Frame" -- uses default to avoid runtime error
		if activeView == VIEW_ID.RBXEvent then
			view = RBXEventView
		end
		if activeView == VIEW_ID.Theme then
			view = ThemeView
		end
		if activeView == VIEW_ID.MemStorage then
			view = MemStorageEventView
		end

		return Roact.createElement(view)
	end
end

function InputPane:render()
	local props = self.props

	local theme = props.Stylizer
	local sizes = theme.Sizes
	local layout = theme.Layout.Vertical

	return Roact.createElement(Container, {
		Size = UDim2.new(1, 0, 0, sizes.InputPaneLength),
		Background = Decoration.Box,
		LayoutOrder = ORDER.InputPane
	}, {
		Layout = Roact.createElement("UIListLayout", layout),
		Dropdown = Roact.createElement(Dropdown),
		Name = Roact.createElement(NameBox),
		View = self.getView(),
	})
end

if FFlagEventEmulatorWithContext then
	InputPane = withContext({
		Stylizer = ContextServices.Stylizer,
	})(InputPane)
else
	ContextServices.mapToProps(InputPane, {
		Stylizer = ContextServices.Stylizer,
	})
end


return RoactRodux.connect(
	function(state, props)
		return {
			ActiveView = state.Status.ActiveView,
		}
	end
)(InputPane)
