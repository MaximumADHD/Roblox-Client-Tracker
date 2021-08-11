local Plugin = script.Parent.Parent.Parent
-- local _Types = require(Plugin.Src.Types) -- uncomment to use types
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local Analytics = ContextServices.Analytics
local Localization = ContextServices.Localization

local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local Pane = UI.Pane

local ExampleComponent = Roact.PureComponent:extend("ExampleComponent")

function ExampleComponent:render()
	return Roact.createElement(Pane)
end

ContextServices.mapToProps(ExampleComponent, {
	Analytics = Analytics,
	Localization = Localization,
	Stylizer = Stylizer,
})

return ExampleComponent
