--!strict
local StarterPlayer = game:GetService("StarterPlayer")

local CommonUtils = require(script.Parent:WaitForChild("CommonUtils"))
local FlagUtil = CommonUtils.get("FlagUtil")
local PlayerModuleEventBus = CommonUtils.get("PlayerModuleEventBus")

local FFlagUserPlayerScriptsTapToMoveUsesIAS2 = FlagUtil.getUserFlag("UserPlayerScriptsTapToMoveUsesIAS2")
local FFlagUserPlayerScriptsFixVehicleBindings = FlagUtil.getUserFlag("UserPlayerScriptsFixVehicleBindings")

local CONNECTIONS = {
	INPUTS_SETUP = "INPUTS_SETUP",
}

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

-- Set shared state and publish so server auth can proceed
PlayerModuleEventBus.data.inputsSetupComplete = true
PlayerModuleEventBus:publish(CONNECTIONS.INPUTS_SETUP)
