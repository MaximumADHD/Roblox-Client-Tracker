--[[
	Sets whether or not gamepad buttons should be shown, based on recently
	received inputs
]]
local CorePackages = game:GetService("CorePackages")
local UserInputService = game:GetService("UserInputService")

local Roact = require(CorePackages.Roact)
local ExternalEventConnection = require(script.Parent.ExternalEventConnection)

local SetGamepadEnabled = require(script.Parent.Parent.Parent.Actions.SetGamepadEnabled)

local connectToStore = require(script.Parent.Parent.Parent.connectToStore)

local gamepadInputs = {
	[Enum.UserInputType.Gamepad1] = true,
	[Enum.UserInputType.Gamepad2] = true,
	[Enum.UserInputType.Gamepad3] = true,
	[Enum.UserInputType.Gamepad4] = true,
}

local thumbstickInputs = {
	[Enum.KeyCode.Thumbstick1] = true,
	[Enum.KeyCode.Thumbstick2] = true,
}

--[[
	Returns whether or not input changed, and what its new value is

	UserInputService.InputChanged event fires very frequently when moving
	the mouse or thumbsticks: we try to early-out if nothing changed so that
	we don't send hundreds of dispatches through the store
]]
local function didInputChange(isGamepadEnabled, inputObject)
	local newEnabledStatus = nil

	if gamepadInputs[inputObject.UserInputType] then
		if thumbstickInputs[inputObject.KeyCode] then
			local position = inputObject.Position

			if math.abs(position.X) > 0.1 or math.abs(position.Z) > 0.1 or math.abs(position.Y) > 0.1 then
				newEnabledStatus = true
			end
		else
			newEnabledStatus = true
		end
	else
		newEnabledStatus = false
	end

	if newEnabledStatus ~= nil and newEnabledStatus ~= isGamepadEnabled then
		return true, newEnabledStatus
	end

	return false, isGamepadEnabled
end

local function GamepadInputConnector(props)
	local gamepadEnabled = props.gamepadEnabled
	local inputChanged = props.inputChanged

	local dispatchOnChange = function (inputObject)
		local didChange, newEnabledStatus = didInputChange(gamepadEnabled, inputObject)

		if didChange then
			inputChanged(newEnabledStatus)
		end
	end

	return Roact.createElement(ExternalEventConnection, {
		event = UserInputService.InputChanged,
		callback = dispatchOnChange,
	}, {
		Roact.createElement(ExternalEventConnection, {
			event = UserInputService.InputBegan,
			callback = dispatchOnChange,
		})
	})
end

local function mapStateToProps(state)
	return {
		gamepadEnabled = state.gamepadEnabled,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		inputChanged = function(newEnabledStatus)
			dispatch(SetGamepadEnabled(newEnabledStatus))
		end,
	}
end

GamepadInputConnector = connectToStore(
	mapStateToProps,
	mapDispatchToProps
)(GamepadInputConnector)

return GamepadInputConnector