--[[
	Input Fields:
		Namespace: Type of event to call
		Detail: A json with event fields
		Detail Type: A (soon to be deprecated?) field for events that don't recognize Detail.Type

	Required Props:
		Theme Theme: A Theme ContextItem, which is provided via mapToProps.
		table ViewData: User-inputted/default text for Namespace, Detail, and DetailType
		function focusLost: A function that passes an identifier and new usr input to the parent

	Style Values:
		table Layout: consistent values for either horizontal or vertical UIListLayout
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local ContextServices = require(Plugin.Packages.Framework.ContextServices)
local Cryo = require(Plugin.Packages.Cryo)

local Actions = Plugin.Src.Actions
local SetRBXParameters = require(Actions.SetRBXParameters)
local ClearRBXParameters = require(Actions.ClearRBXParameters)

local Constants = require(Plugin.Src.Util.Constants)
local INPUT_PANE_LAYOUT = Constants.INPUT_PANE_LAYOUT
local ORDERING = Constants.RBXEVENT_ORDER

local Components = Plugin.Src.Components
local ButtonArray = require(Components.ButtonArray)
local TextInput = require(Components.TextInput)

local Operations = Plugin.Src.Operations
local RBXEventRequest = require(Operations.RBXEventRequest)

local HttpService = game:GetService("HttpService")

local RBXEventView = Roact.PureComponent:extend("RBXEventView")

function RBXEventView:init()
	self.state = {
		ValidJson = true,
	}

	self.onClearClicked = function()
		self.props.ClearRBXParameters()
	end

	self.IsCurrentJSONValid = function ()
		local decoded
		local ok = pcall(function()
			decoded = HttpService:JSONDecode(self.props.Parameters.Detail)
		end)

		if not ok or not decoded then
			return false
		else
			return true
		end
	end

	self.onSendClicked = function()
		self:setState({
			ValidJson = self.IsCurrentJSONValid()
		})

		-- Don't prevent the request because maybe you want to see it fail
		RBXEventRequest(self.props.Parameters)

	end

	self.focusLost = function(field, textbox)
		self.props.SetRBXParameters(Cryo.Dictionary.join(self.props.Parameters, {
			[field] = textbox
		}))
	end

	self.createChildren = function()
		-- TODO: Will detailType be deprecated? If so notify users
		-- sworzalla 4/24/20
		local props = self.props
		local params = props.Parameters

		local theme = self.props.Theme
		local layout = theme:get("Layout")

		local children = {
			Layout = Roact.createElement("UIListLayout", layout.Vertical),
			Warning = (not self.state.ValidJson) and Roact.createElement("TextLabel", {
				LayoutOrder = ORDERING["Warning"],
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 0, 20),
				Text = "Warning! Detail expects JSON.",
				TextColor3 = Color3.new(1, 0.5, 0),
			}),
			Activators = Roact.createElement(ButtonArray, {
				OnClearClicked = self.onClearClicked,
				OnSaveClicked = self.onSaveClicked,
				OnSendClicked = self.onSendClicked,
			})
		}

		for key, value in pairs(params) do
			children[key] = Roact.createElement(TextInput, {
				LayoutOrder = ORDERING[key],
				Label = key,
				Text = value,
				OnChange = function (...)
					self.focusLost(key, ...)
				end,
			})
		end

		return children
	end
end

function RBXEventView:render()
	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		LayoutOrder = INPUT_PANE_LAYOUT.View,
		ZIndex = -5,
	}, self.createChildren())
end

ContextServices.mapToProps(RBXEventView,{
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
			SetRBXParameters = function(parameters)
				dispatch(SetRBXParameters(parameters))
			end,
			ClearRBXParameters = function ()
				dispatch(ClearRBXParameters())
			end,
		}
	end
)(RBXEventView)