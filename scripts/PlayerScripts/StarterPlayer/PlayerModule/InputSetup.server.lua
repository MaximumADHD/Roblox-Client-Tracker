--!strict
local StarterPlayer = game:GetService("StarterPlayer")

local CommonUtils = require(script.Parent:WaitForChild("CommonUtils"))
local FlagUtil = CommonUtils.get("FlagUtil")
local PlayerModuleEventBus = CommonUtils.get("PlayerModuleEventBus")
local FFlagUserPlayerScriptsClickToMoveUsesIAS = FlagUtil.getUserFlag("UserPlayerScriptsClickToMoveUsesIAS")
local FFlagUserPlayerScriptsCameraRotationUsesIAS = FlagUtil.getUserFlag("UserPlayerScriptsCameraRotationUsesIAS")

local CONNECTIONS = {
	INPUTS_SETUP = "INPUTS_SETUP",
}

if FFlagUserPlayerScriptsCameraRotationUsesIAS then
	local character = StarterPlayer.PlayerModule.InputContexts.Character

	local cameraZoom = character.CameraZoom

	local wheelBinding = Instance.new("InputBinding")
	wheelBinding.Name = "MouseWheelBinding"
	wheelBinding.KeyCode = Enum.KeyCode.MouseWheel
	wheelBinding.Scale = -1
	wheelBinding.Parent = cameraZoom

	local pinchBinding = Instance.new("InputBinding")
	pinchBinding.Name = "TrackpadPinchBinding"
	pinchBinding.KeyCode = Enum.KeyCode.TrackpadPinch
	pinchBinding.Scale = -1
	pinchBinding.Parent = cameraZoom

	local cameraRotation = character.CameraRotation

	local mouseDeltaBinding = Instance.new("InputBinding")
	mouseDeltaBinding.Name = "MouseDeltaBinding"
	mouseDeltaBinding.KeyCode = Enum.KeyCode.MouseDelta
	mouseDeltaBinding.Vector2Scale = Vector2.new(0.008727, 0.006720)
	mouseDeltaBinding.Parent = cameraRotation

	local pointerPanBinding = Instance.new("InputBinding")
	pointerPanBinding.Name = "TrackpadPanBinding"
	pointerPanBinding.KeyCode = Enum.KeyCode.TrackpadPan
	pointerPanBinding.Vector2Scale = Vector2.new(0.12217, 0.09407)
	pointerPanBinding.Parent = cameraRotation

	local cameraPanActive = Instance.new("InputAction")
	cameraPanActive.Name = "CameraPanActive"
	cameraPanActive.Enabled = false
	cameraPanActive.Parent = character

	local cameraPanActiveBinding = Instance.new("InputBinding")
	cameraPanActiveBinding.Name = "MouseBinding"
	cameraPanActiveBinding.KeyCode = Enum.KeyCode.MouseRightButton
	cameraPanActiveBinding.Parent = cameraPanActive
end

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
end

if FFlagUserPlayerScriptsClickToMoveUsesIAS or FFlagUserPlayerScriptsCameraRotationUsesIAS then
	-- Set shared state and publish so server auth can proceed
	PlayerModuleEventBus.data.inputsSetupComplete = true
	PlayerModuleEventBus:publish(CONNECTIONS.INPUTS_SETUP)
end
