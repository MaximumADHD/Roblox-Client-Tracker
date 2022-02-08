--[[
	An empty example component, which appears in the main plugin.
	Renders a blank background of the default background color.
	TODO (rcary): Delete or modify this component
]]

local Plugin = script.Parent.Parent.Parent
-- local _Types = require(Plugin.Src.Types) -- uncomment to use types
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Analytics = ContextServices.Analytics
local Localization = ContextServices.Localization

local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local Pane = UI.Pane

local ExampleComponent = Roact.PureComponent:extend("ExampleComponent")

function ExampleComponent:render()
	return Roact.createElement(Pane)
end

ExampleComponent = withContext({
	-- TODO (rcary): Use Analytics to handle plugin events
	Analytics = Analytics,
	-- TODO (rcary): Use Localization for any raw string value displayed in the plugin
	Localization = Localization,
	Stylizer = Stylizer,
})(ExampleComponent)

return ExampleComponent
