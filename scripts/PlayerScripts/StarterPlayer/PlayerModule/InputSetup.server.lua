--!strict
--[[
    InputSetup - This ServerScript performs instance modification and signals input setup is complete.
]]--
local StarterPlayer = game:GetService("StarterPlayer")

local CommonUtils = require(script.Parent:WaitForChild("CommonUtils"))
local FlagUtil = CommonUtils.get("FlagUtil")
local PlayerModuleEventBus = CommonUtils.get("PlayerModuleEventBus")

local FFlagUserPlayerScriptsTapToMoveUsesIAS2 = FlagUtil.getUserFlag("UserPlayerScriptsTapToMoveUsesIAS2")
local FFlagUserPlayerScriptsFixVehicleBindings = FlagUtil.getUserFlag("UserPlayerScriptsFixVehicleBindings")
local FFlagUserPlayerScriptsCameraTouchUsesIAS = FlagUtil.getUserFlag("UserPlayerScriptsCameraTouchUsesIAS")
local FFlagUserPlayerScriptsDynamicThumbstickUsesIAS = FlagUtil.getUserFlag("UserPlayerScriptsDynamicThumbstickUsesIAS")
local FFlagUserPlayerScriptsClassicThumbstickUsesIAS = FlagUtil.getUserFlag("UserPlayerScriptsClassicThumbstickUsesIAS")

local CONNECTIONS = {
	INPUTS_SETUP = "INPUTS_SETUP",
}

--[[ Input Setup ]]
if FFlagUserPlayerScriptsTapToMoveUsesIAS2 then
	local characterContext = StarterPlayer.PlayerModule.InputContexts.CharacterContext

	local touchBinding = Instance.new("InputBinding")
	touchBinding.Name = "TouchBinding"
	touchBinding.KeyCode = Enum.KeyCode.TouchPosition
	touchBinding.Parent = characterContext.ClickToMoveAction

	local touchPositionBinding = Instance.new("InputBinding")
	touchPositionBinding.Name = "TouchBinding"
	touchPositionBinding.KeyCode = Enum.KeyCode.TouchPosition
	touchPositionBinding.Parent = characterContext.ClickToMovePositionAction
end

if FFlagUserPlayerScriptsFixVehicleBindings then
	local gamepadBinding = StarterPlayer.PlayerModule.InputContexts.VehicleContext.ThrottleAction.GamepadBinding
	gamepadBinding.Down = Enum.KeyCode.ButtonL2
	gamepadBinding.Up = Enum.KeyCode.ButtonR2
end

if FFlagUserPlayerScriptsCameraTouchUsesIAS then
	local cameraContext = StarterPlayer.PlayerModule.InputContexts.CameraContext
	local cameraRotationAction = cameraContext.CameraRotationAction
	local cameraZoomAction = cameraContext.CameraZoomAction
	local cameraPanActiveAction = cameraContext.CameraPanActiveAction

	if not cameraRotationAction:FindFirstChild("TouchBinding") then
		local touchDeltaBinding = Instance.new("InputBinding")
		touchDeltaBinding.Name = "TouchBinding"
		touchDeltaBinding.KeyCode = Enum.KeyCode.TouchDelta
		touchDeltaBinding.Vector2Scale = Vector2.new(0.01745, 0.01152)
		touchDeltaBinding.Parent = cameraRotationAction
	end

	if not cameraZoomAction:FindFirstChild("TouchBinding") then
		local touchPinchBinding = Instance.new("InputBinding")
		touchPinchBinding.Name = "TouchBinding"
		touchPinchBinding.KeyCode = Enum.KeyCode.TouchPinch
		touchPinchBinding.Scale = -0.04
		touchPinchBinding.Parent = cameraZoomAction
	end

	if not cameraPanActiveAction:FindFirstChild("TouchBinding") then
		local touchPanBinding = Instance.new("InputBinding")
		touchPanBinding.Name = "TouchBinding"
		touchPanBinding.KeyCode = Enum.KeyCode.TouchPosition
		touchPanBinding.Parent = cameraPanActiveAction
	end
end

if FFlagUserPlayerScriptsDynamicThumbstickUsesIAS or FFlagUserPlayerScriptsClassicThumbstickUsesIAS then
	local characterContext = StarterPlayer.PlayerModule.InputContexts.CharacterContext

	local thumbstickAction = Instance.new("InputAction")
	thumbstickAction.Name = "ThumbstickAction"
	thumbstickAction.Type = Enum.InputActionType.ViewportPosition
	thumbstickAction.Enabled = false
	thumbstickAction.Parent = characterContext
end
-- [[ End Input Setup ]]

-- Set shared state and publish so server auth can proceed
PlayerModuleEventBus.data.inputsSetupComplete = true
PlayerModuleEventBus:publish(CONNECTIONS.INPUTS_SETUP)
