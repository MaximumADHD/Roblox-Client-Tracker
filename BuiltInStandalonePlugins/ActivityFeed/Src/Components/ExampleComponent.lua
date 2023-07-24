--[[
	An empty example component, which appears in the main plugin.
	Renders a blank background of the default background color.
	New Plugin Setup: Delete or modify this component
]]

local Plugin = script.Parent.Parent.Parent
-- local _Types = require(Plugin.Src.Types) -- uncomment to use types
local React = require(Plugin.Packages.React)
local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Analytics = ContextServices.Analytics
local Localization = ContextServices.Localization

local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local Pane = UI.Pane
local TextLabel = UI.TextLabel

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

local ExampleComponent = React.PureComponent:extend("ExampleComponent")

function ExampleComponent:render()
	local props = self.props
	local localization = props.Localization
	-- local style: _Style = props.Stylizer.ExampleComponent -- uncomment for access to styles in the render function

	return React.createElement(Pane, {
		Style = "Box",
		Padding = 10,
	}, {
		Text = React.createElement(TextLabel, {
			AutomaticSize = Enum.AutomaticSize.XY,
			Style = "Title",
			Text = localization:getText("Plugin", "Text"),
		}),
	})
end

ExampleComponent = withContext({
	-- New Plugin Setup: Use Analytics to handle plugin events
	Analytics = Analytics,
	-- New Plugin Setup: Use Localization for any raw string value displayed in the plugin
	Localization = Localization,
	-- New Plugin Setup: Use Stylizer for any theming and styling in the plugin
	Stylizer = Stylizer,
})(ExampleComponent)

return ExampleComponent
