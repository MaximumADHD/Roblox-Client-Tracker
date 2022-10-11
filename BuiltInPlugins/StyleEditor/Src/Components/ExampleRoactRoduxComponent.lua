--[[
	An empty example component, which appears in the main plugin.
	Contains a connection to rodux.
	Renders a blank background of the default background color.
	New Plugin Setup: Delete or modify this component
]]
local Plugin = script.Parent.Parent.Parent
-- local _Types = require(Plugin.Src.Types) -- uncomment to use types
local React = require(Plugin.Packages.React)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Analytics = ContextServices.Analytics
local Localization = ContextServices.Localization

local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local Pane = UI.Pane

local Actions = Plugin.Src.Actions
local ExampleAction = require(Actions.ExampleAction)

local Reducers = Plugin.Src.Reducers
local ExampleReducer = require(Reducers.ExampleReducer)

-- Put all the props that aren't defined in withContext or RoactRodux into this Luau type
export type Props = {}

-- Any props defined in withContext should be added here, the underscore denotes this as a privately used type
-- Props defined by RoactRodux should also be included
type _Props = Props & {
	Analytics: any,
	DefaultStateObject: string,
	dispatchExampleAction: (something: string) -> (),
	Localization: any,
	Stylizer: any,
}

-- If the component has a specific style associated with it in makeTheme, define those values here
type _Style = {}

local ExampleRoactRoduxComponent = React.PureComponent:extend("ExampleRoactRoduxComponent")

function ExampleRoactRoduxComponent:render()
	-- local props: _Props = self.props -- uncomment to access props in the render function
	-- local style: _Style = props.Stylizer.ExampleRoactRoduxComponent -- uncomment for access to styles in the render function

	return React.createElement(Pane)
end

ExampleRoactRoduxComponent = withContext({
	-- New Plugin Setup: Use Analytics to handle plugin events
	Analytics = Analytics,
	-- New Plugin Setup: Use Localization for any raw string value displayed in the plugin
	Localization = Localization,
	-- New Plugin Setup: Use Stylizer for any theming and styling in the plugin
	Stylizer = Stylizer,
})(ExampleRoactRoduxComponent)

return RoactRodux.connect(
	function(state: ExampleReducer.State, props: Props)
		return {
			DefaultStateObject = state.DefaultStateObject,
		}
	end,
	function(dispatch)
		return {
			dispatchExampleAction = function (something: string)
				dispatch(ExampleAction(something))
			end,
		}
	end
)(ExampleRoactRoduxComponent)
