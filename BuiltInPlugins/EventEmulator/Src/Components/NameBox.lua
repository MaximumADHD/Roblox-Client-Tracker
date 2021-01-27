local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local Framework = require(Plugin.Packages.Framework)
local THEME_REFACTOR = Framework.Util.RefactorFlags.THEME_REFACTOR
local ContextServices = Framework.ContextServices

local Components = Plugin.Src.Components
local TextInput = require(Components.TextInput)

local Actions = Plugin.Src.Actions
local ChangeCurrentEventName = require(Actions.ChangeCurrentEventName)

local Constants = require(Plugin.Src.Util.Constants)
local LAYOUT = Constants.INPUT_PANE_LAYOUT

local NameBox = Roact.PureComponent:extend("NameBox")

function NameBox:init()
	self.OnChange = function (text)
		self.props.ChangeCurrentEventName(text)
	end
end

function NameBox:render()
	local currentEventName = self.props.CurrentEventName
	return Roact.createElement(TextInput, {
		Label = "Name",
		Text = currentEventName,
		LayoutOrder = LAYOUT.NameBox,
		OnChange = self.OnChange,
	})
end

ContextServices.mapToProps(NameBox, {
	Stylizer = THEME_REFACTOR and ContextServices.Stylizer or nil,
	Theme = (not THEME_REFACTOR) and ContextServices.Theme or nil,
})

return RoactRodux.connect(
	function(state, props)
		return {
			CurrentEventName = state.Status.CurrentEventName,
		}
	end,
	function(dispatch)
		return {
			ChangeCurrentEventName = function (name)
				dispatch(ChangeCurrentEventName(name))
			end
		}
	end
)(NameBox)