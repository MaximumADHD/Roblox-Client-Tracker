local Plugin = script.Parent.Parent.Parent
-- local _Types = require(Plugin.Src.Types) -- uncomment to use types
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
	Analytics = Analytics,
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
