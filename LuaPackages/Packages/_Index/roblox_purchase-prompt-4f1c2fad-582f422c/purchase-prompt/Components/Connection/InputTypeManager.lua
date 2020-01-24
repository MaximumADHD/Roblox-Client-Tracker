--[[
	Sets whether or not gamepad buttons should be shown, based on recently
	received inputs
]]
local FFlagIGPDepSwap = game:GetFastFlag("IGPDepSwap")
local Root = script.Parent.Parent.Parent
local LuaPackages = FFlagIGPDepSwap and Root.Parent or game:GetService("CorePackages")
local CorePackages = game:GetService("CorePackages")
local UserInputService = game:GetService("UserInputService")

local Roact = require(LuaPackages.Roact)
local MouseIconOverrideService = require(CorePackages.InGameServices.MouseIconOverrideService)
local ExternalEventConnection = require(script.Parent.ExternalEventConnection)

local PromptState = require(script.Parent.Parent.Parent.PromptState)

local SetGamepadEnabled = require(script.Parent.Parent.Parent.Actions.SetGamepadEnabled)

local connectToStore = require(script.Parent.Parent.Parent.connectToStore)

local CURSOR_OVERRIDE_KEY = "PurchasePromptOverrideKey"

local gamepadInputs = {
	[Enum.UserInputType.Gamepad1] = true,
	[Enum.UserInputType.Gamepad2] = true,
	[Enum.UserInputType.Gamepad3] = true,
	[Enum.UserInputType.Gamepad4] = true,
}

local InputTypeManager = Roact.Component:extend("InputTypeManager")

function InputTypeManager:init()
	local setGamepadEnabled = self.props.setGamepadEnabled

	self.dispatchOnChange = function(lastInputType)
		local newEnabledStatus
		if gamepadInputs[lastInputType] then
			newEnabledStatus = true
		else
			newEnabledStatus = false
		end

		setGamepadEnabled(newEnabledStatus)
	end

	self.cursorOverridden = false
end

function InputTypeManager:render()
	return Roact.createElement(ExternalEventConnection, {
		event = UserInputService.LastInputTypeChanged,
		callback = self.dispatchOnChange,
	})
end

function InputTypeManager:didUpdate(prevProps, prevState)
	local didShow = prevProps.promptState == PromptState.Hidden
		and self.props.promptState ~= PromptState.Hidden
	local didHide = prevProps.promptState ~= PromptState.Hidden
		and self.props.promptState == PromptState.Hidden

	local isShown = self.props.promptState ~= PromptState.Hidden

	local overrideStatus = self.props.gamepadEnabled
		and Enum.OverrideMouseIconBehavior.ForceHide
		or Enum.OverrideMouseIconBehavior.ForceShow

	-- If we're already showing the prompt and the gamepad status changed
	if isShown and prevProps.gamepadEnabled ~= self.props.gamepadEnabled then
		if self.cursorOverridden then
			MouseIconOverrideService.pop(CURSOR_OVERRIDE_KEY)
		end
		MouseIconOverrideService.push(CURSOR_OVERRIDE_KEY, overrideStatus)
		self.cursorOverridden = true
	-- If the purchase prompt goes from hidden to shown
	elseif didShow then
		MouseIconOverrideService.push(CURSOR_OVERRIDE_KEY, overrideStatus)
		self.cursorOverridden = true
	-- If the purchase prompt goes from shown to hidden
	elseif didHide then
		MouseIconOverrideService.pop(CURSOR_OVERRIDE_KEY)
		self.cursorOverridden = false
	end
end

local function mapStateToProps(state)
	return {
		promptState = state.promptState,
		gamepadEnabled = state.gamepadEnabled,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		setGamepadEnabled = function(enabled)
			dispatch(SetGamepadEnabled(enabled))
		end,
	}
end

InputTypeManager = connectToStore(
	mapStateToProps,
	mapDispatchToProps
)(InputTypeManager)

return InputTypeManager