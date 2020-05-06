--[[
	An empty example component, which appears in the main plugin.
	Renders a blank background of the default background color.
]]

local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local ContextServices = require(Plugin.Packages.Framework.ContextServices)

local UI = require(Plugin.Packages.Framework.UI)
local Container = UI.Container
local Decoration = UI.Decoration

local Components = Plugin.Src.Components
local Navigation = require(Components.Navigation)
local ButtonArray = require(Components.ButtonArray)
local RBXEventTab = require(Components.RBXEventTab)


local InputPane = Roact.PureComponent:extend("InputPane")

function InputPane:render()
	local props = self.props
	local sizes = props.Theme:get("Sizes")
	return Roact.createElement(Container, {
		Size = UDim2.new(1, 0, 0, sizes.InputPaneLength),
		Background = Decoration.Box,
	}, {
		Navigation = Roact.createElement(Navigation),
		RBXEvent = Roact.createElement(RBXEventTab),
		ButtonArray = Roact.createElement(ButtonArray),
	})
end

ContextServices.mapToProps(InputPane, {
	Theme = ContextServices.Theme,
})

return InputPane
