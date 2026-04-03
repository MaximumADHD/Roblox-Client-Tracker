--!strict
local StarterPlayer = game:GetService("StarterPlayer")

local CommonUtils = require(script.Parent:WaitForChild("CommonUtils"))
local FlagUtil = CommonUtils.get("FlagUtil")
local PlayerModuleEventBus = CommonUtils.get("PlayerModuleEventBus")
local FFlagUserPlayerScriptsClickToMoveUsesIAS = FlagUtil.getUserFlag("UserPlayerScriptsClickToMoveUsesIAS")

local CONNECTIONS = {
	INPUTS_SETUP = "INPUTS_SETUP",
}

if FFlagUserPlayerScriptsClickToMoveUsesIAS then
	local character = StarterPlayer.PlayerModule.InputContexts.Character

    local clickToMovePositionAction = Instance.new("InputAction")
    clickToMovePositionAction.Name = "ClickToMovePosition"
    clickToMovePositionAction.Type = Enum.InputActionType.ViewportPosition
    clickToMovePositionAction.Parent = character

	local mousePositionBinding = Instance.new("InputBinding")
	mousePositionBinding.Name = "MousePositionBinding"
	mousePositionBinding.KeyCode = Enum.KeyCode.MousePosition
	mousePositionBinding.Parent = clickToMovePositionAction


    -- Set shared state and publish so server auth can proceed
    PlayerModuleEventBus.data.inputsSetupComplete = true
    PlayerModuleEventBus:publish(CONNECTIONS.INPUTS_SETUP)
end
