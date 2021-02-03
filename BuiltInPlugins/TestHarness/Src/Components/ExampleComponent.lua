--[[
	An empty example component, which appears in the main plugin.
	Renders a blank background of the default background color.
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices

local UI = Framework.UI
local Container = UI.Container
local Decoration = UI.Decoration

local ExampleComponent = Roact.PureComponent:extend("ExampleComponent")

function ExampleComponent:render()
	return Roact.createElement(Container, {
		-- Background = Decoration.Box,
	})
end

ContextServices.mapToProps(ExampleComponent, {
	Stylizer = ContextServices.Stylizer,
})

return ExampleComponent
