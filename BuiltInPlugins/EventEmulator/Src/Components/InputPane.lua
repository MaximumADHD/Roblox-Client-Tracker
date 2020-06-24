--[[
	An empty example component, which appears in the main plugin.
	Renders a blank background of the default background color.
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local ContextServices = require(Plugin.Packages.Framework.ContextServices)

local UI = require(Plugin.Packages.Framework.UI)
local Container = UI.Container
local Decoration = UI.Decoration

local Components = Plugin.Src.Components
local Dropdown = require(Components.Dropdown)
local RBXEventView = require(Components.Views.RBXEventView)
local ThemeView = require(Components.Views.ThemeView)
local MemStorageEventView = require(Components.Views.MemStorageEventView)


local Constants = require(Plugin.Src.Util.Constants)
local VIEW_ID = Constants.VIEW_ID

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
	local activeView = props.ActiveView

	local theme = props.Theme
	local sizes = theme:get("Sizes")
	local layout = theme:get("Layout")

	return Roact.createElement(Container, {
		Size = UDim2.new(1, 0, 0, sizes.InputPaneLength),
		Background = Decoration.Box,
	}, {
		Layout = Roact.createElement("UIListLayout", layout.Vertical),
		Dropdown = Roact.createElement(Dropdown),
		View = self.getView(),
	})
end

ContextServices.mapToProps(InputPane, {
	Theme = ContextServices.Theme,
})

return RoactRodux.connect(
	function(state, props)
		return {
			ActiveView = state.Status.ActiveView,
		}
	end
)(InputPane)