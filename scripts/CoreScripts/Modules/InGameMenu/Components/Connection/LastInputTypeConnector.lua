local CorePackages = game:GetService("CorePackages")
local UserInputService = game:GetService("UserInputService")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux

local InGameMenu = script.Parent.Parent.Parent

local SetInputType = require(InGameMenu.Actions.SetInputType)
local ExternalEventConnection = require(InGameMenu.Utility.ExternalEventConnection)
local Constants = require(InGameMenu.Resources.Constants)

local InputType = Constants.InputType

local LastInputTypeConnector = Roact.PureComponent:extend("LastInputTypeConnector")

local inputTypeMap = {
	[Enum.UserInputType.MouseButton2] = InputType.MouseAndKeyBoard,
	[Enum.UserInputType.MouseButton3] = InputType.MouseAndKeyBoard,
	[Enum.UserInputType.MouseWheel] = InputType.MouseAndKeyBoard,
	[Enum.UserInputType.MouseMovement] = InputType.MouseAndKeyBoard,
	[Enum.UserInputType.Keyboard] = InputType.MouseAndKeyBoard,

	[Enum.UserInputType.Gamepad1] = InputType.Gamepad,
	[Enum.UserInputType.Gamepad2] = InputType.Gamepad,
	[Enum.UserInputType.Gamepad3] = InputType.Gamepad,
	[Enum.UserInputType.Gamepad4] = InputType.Gamepad,
	[Enum.UserInputType.Gamepad5] = InputType.Gamepad,
	[Enum.UserInputType.Gamepad6] = InputType.Gamepad,
	[Enum.UserInputType.Gamepad7] = InputType.Gamepad,
	[Enum.UserInputType.Gamepad8] = InputType.Gamepad,

	[Enum.UserInputType.Touch] = InputType.Touch,
}

function LastInputTypeConnector:init()
	local initalInputType = inputTypeMap[UserInputService:GetLastInputType()]
	if initalInputType then
		self.props.setInputType(initalInputType)
	end
end

function LastInputTypeConnector:render()
	return Roact.createElement(ExternalEventConnection, {
		event = UserInputService.LastInputTypeChanged,
		callback = function(lastInputType)
			local inputType = inputTypeMap[lastInputType]
			if inputType then
				self.props.setInputType(inputType)
			end
		end,
	})
end


return RoactRodux.UNSTABLE_connect2(nil, function(dispatch)
	return {
		setInputType = function(inputType)
			return dispatch(SetInputType(inputType))
		end,
	}
end)(LastInputTypeConnector)