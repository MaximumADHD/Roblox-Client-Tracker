local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local Actions = Plugin.Src.Actions
local SetRBXParameters = require(Actions.SetRBXParameters)

local Operations = Plugin.Src.Operations
local RBXEventRequest = require(Operations.RBXEventRequest)

local ContextServices = require(Plugin.Packages.Framework.ContextServices)

local UI = require(Plugin.Packages.Framework.UI)
local Container = UI.Container
local Decoration = UI.Decoration

local ButtonArray = Roact.PureComponent:extend("ButtonArray")

local emptyParams = {
	Namespace = "",
	Detail = "",
	DetailType = "",
}

function ButtonArray:init()
	self.onClearClicked = function (input)
		self.props.setRBXParameters(emptyParams)
	end

	self.onSaveClicked = function (input)
		-- TODO: RIDE-639
		-- sworzalla 4/17/20
		print("This action is not supported yet!")
	end

	self.onSendClicked = function ()
		RBXEventRequest(self.props.Parameters)
	end
end

function ButtonArray:render()
	local props = self.props
	local layout = props.Theme:get("Layout")
	local position = props.Theme:get("Position")
	local sizes = props.Theme:get("Sizes")

	return Roact.createElement(Container, {
		Size = UDim2.new(1, 0, 0, 30),
		Position = position.ButtonArray,
		Background = Decoration.Box,
	}, {
		Layout = Roact.createElement("UIListLayout", layout.Horizontal),
		Clear = Roact.createElement("TextButton",{
			Size = UDim2.new(0, sizes.ConfirmationButtonWidth, 1, 0),
			Text = "Clear",
			LayoutOrder = 1,
			[Roact.Event.MouseButton1Down] = self.onClearClicked,
		}),
		Save = Roact.createElement("TextButton", {
			Size = UDim2.new(0, sizes.ConfirmationButtonWidth, 1, 0),
			Text = "Save",
			LayoutOrder = 2,
			[Roact.Event.MouseButton1Down] = self.onSaveClicked,
		}),
		Send = Roact.createElement("TextButton", {
			Size = UDim2.new(0, sizes.ConfirmationButtonWidth, 1, 0),
			Text = "Send",
			LayoutOrder = 3,
			[Roact.Event.MouseButton1Down] = self.onSendClicked,
		}),
	})
end

ContextServices.mapToProps(ButtonArray, {
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
)(ButtonArray)