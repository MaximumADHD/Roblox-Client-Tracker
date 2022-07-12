--[[
	An empty example component, which appears in the main plugin.
	Renders a blank background of the default background color.
	New Plugin Setup: Delete or modify this component
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

-- Put all the props that aren't defined in withContext into this Luau type
export type Props = {}

-- Any props defined in withContext should be added here, the underscore denotes this as a privately used type
type _Props = Props & {
	Analytics: any,
	Localization: any,
	Stylizer: any,
}

-- If the component has a specific style associated with it in makeTheme, define those values here
type _Style = {}

local ExampleComponent = Roact.PureComponent:extend("ExampleComponent")

function ExampleComponent:render()
	-- local props: _Props = self.props -- uncomment to access props in the render function
	-- local style: _Style = props.Stylizer.ExampleComponent -- uncomment for access to styles in the render function

	return Roact.createElement(Pane)
end

ExampleComponent = withContext({
	-- New Plugin Setup: Use Analytics to handle plugin events
	Analytics = Analytics,
	-- New Plugin Setup: Use Localization for any raw string value displayed in the plugin
	Localization = Localization,
	Stylizer = Stylizer,
})(ExampleComponent)

return ExampleComponent
