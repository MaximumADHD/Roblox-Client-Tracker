--[[
	Handles user input
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local Framework = require(Plugin.Packages.Framework)
local THEME_REFACTOR = Framework.Util.RefactorFlags.THEME_REFACTOR
local ContextServices = Framework.ContextServices

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

	local theme, sizes, layout
	if THEME_REFACTOR then
		theme = props.Stylizer
		sizes = theme.Sizes
		layout = theme.Layout.Vertical
	else
		theme = props.Theme
		sizes = theme:get("Sizes")
		layout = theme:get("Layout").Vertical
	end

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

ContextServices.mapToProps(InputPane, {
	Stylizer = THEME_REFACTOR and ContextServices.Stylizer or nil,
	Theme = (not THEME_REFACTOR) and ContextServices.Theme or nil,
})

return RoactRodux.connect(
	function(state, props)
		return {
			ActiveView = state.Status.ActiveView,
		}
	end
)(InputPane)