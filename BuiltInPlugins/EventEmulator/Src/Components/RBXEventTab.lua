local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local ContextServices = require(Plugin.Packages.Framework.ContextServices)
local Cryo = require(Plugin.Packages.Cryo)

local UI = require(Plugin.Packages.Framework.UI)
local Container = UI.Container
local Decoration = UI.Decoration

local Components = Plugin.Src.Components
local TextInput = require(Components.TextInput)

local Actions = Plugin.Src.Actions
local SetRBXParameters = require(Actions.SetRBXParameters)

local RBXEventTab = Roact.PureComponent:extend("RBXEventTab")

function RBXEventTab:init()
	self.OnFocusLost = function (field, textBox)
		local params = Cryo.Dictionary.join(self.props.Parameters, {
			[field] = textBox.Text,
		})
		self.props.setRBXParameters(params)
	end
	self.textBoxes = {
		Namespace = {
			Title = "Namespace",
			Dispatch = function (...)
				self.OnFocusLost("Namespace", ...)
			end,
		},
		Detail = {
			Title = "Detail",
			Dispatch = function (...)
				self.OnFocusLost("Detail", ...)
			end,
		},
		DetailType = {
			Title = "DetailType",
			Dispatch = function (...)
				self.OnFocusLost("DetailType", ...)
			end,
		},
	}
	self.createChildren = function()
		-- TODO: y u no render properly??
		-- TODO: Will detailType be deprecated? If so notify users
		-- sworzalla 4/24/20
		local props = self.props
		local params = props.Parameters
		local layout = props.Theme:get("Layout")

		local children = {
			Layout = Roact.createElement("UIListLayout", layout.Vertical)
		}

		for i, key in ipairs({"Namespace", "Detail", "DetailType"}) do
			children[key] = Roact.createElement(TextInput, {
				LayoutOrder = i,
				Label = self.textBoxes[key].Title,
				Text = params[key],
				OnFocusLost = self.textBoxes[key].Dispatch,
			})
		end

		return children
	end
end



function RBXEventTab:render()
	local props = self.props
	local position = props.Theme:get("Position")

	return Roact.createElement(Container, {
		Size = UDim2.new(1, 0, 1, 0),
		Background = Decoration.Box,
		Position = position.RBXEventTab,
	}, self.createChildren())
end

ContextServices.mapToProps(RBXEventTab,{
	Theme = ContextServices.Theme,
})

return RoactRodux.connect(
	function(state, props)
		return {
			Parameters = state.Status.Parameters,
		}
	end,
	function(dispatch)
		return {
			setRBXParameters = function(parameters)
				dispatch(SetRBXParameters(parameters))
			end,
		}
	end
)(RBXEventTab)