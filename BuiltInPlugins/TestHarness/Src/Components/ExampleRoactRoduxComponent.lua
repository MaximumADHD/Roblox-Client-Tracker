--[[
	An empty example component, which appears in the main plugin.
	Contains a connection to rodux.
	Renders a blank background of the default background color.
]]
local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices

local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local Container = UI.Container
local Decoration = UI.Decoration

local Actions = Plugin.Src.Actions
local ExampleAction = require(Actions.ExampleAction)

local ExampleRoactRoduxComponent = Roact.PureComponent:extend("ExampleRoactRoduxComponent")

function ExampleRoactRoduxComponent:render()
	return Roact.createElement(Container, {
		-- Background = Decoration.Box,
	})
end

ContextServices.mapToProps(ExampleRoactRoduxComponent, {
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
