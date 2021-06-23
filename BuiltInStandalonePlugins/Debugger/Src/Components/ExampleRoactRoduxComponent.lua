--[[
	An empty example component, which appears in the main plugin.
	Contains a connection to rodux.
	Renders a blank background of the default background color.
	New Plugin Setup: Delete or modify this component
]]
local Plugin = script.Parent.Parent.Parent
-- local Types = require(Plugin.Src.Types) -- Uncomment to access types
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local Analytics = ContextServices.Analytics
local Localization = ContextServices.Localization

local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local Pane = UI.Pane

local Actions = Plugin.Src.Actions
local ExampleAction = require(Actions.ExampleAction)

local ExampleRoactRoduxComponent = Roact.PureComponent:extend("ExampleRoactRoduxComponent")

function ExampleRoactRoduxComponent:render()
	return Roact.createElement(Pane)
end

ContextServices.mapToProps(ExampleRoactRoduxComponent, {
	-- New Plugin Setup: Use Analytics to handle plugin events
	Analytics = Analytics,
	-- New Plugin Setup: Use Localization for any raw string value displayed in the plugin
	Localization = Localization,
	Stylizer = Stylizer,
})

return RoactRodux.connect(
	function(state, props)
		return {
			DefaultStateObject = state.DefaultStateObject,
		}
	end,
	function(dispatch)
		return {
			dispatchExampleAction = function (something)
				dispatch(ExampleAction(something))
			end,
		}
	end
)(ExampleRoactRoduxComponent)
