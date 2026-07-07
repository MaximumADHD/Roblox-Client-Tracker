--!strict
--[[
    InputSetup - This ServerScript performs instance modification and signals input setup is complete.
]]--
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local StarterPlayer = game:GetService("StarterPlayer")

local CommonUtils = require(script.Parent:WaitForChild("CommonUtils"))
local FlagUtil = CommonUtils.get("FlagUtil")
local PlayerModuleEventBus = CommonUtils.get("PlayerModuleEventBus")

local FFlagUserPlayerScriptsCCLIntegrationB = FlagUtil.getUserFlag("UserPlayerScriptsCCLIntegrationB")
local FFlagUserPlayerScriptsTapToMoveUsesIAS2 = FlagUtil.getUserFlag("UserPlayerScriptsTapToMoveUsesIAS2")
local FFlagUserPlayerScriptsCameraTouchUsesIAS = FlagUtil.getUserFlag("UserPlayerScriptsCameraTouchUsesIAS")
local FFlagUserPlayerScriptsDynamicThumbstickUsesIAS = FlagUtil.getUserFlag("UserPlayerScriptsDynamicThumbstickUsesIAS")
local FFlagUserPlayerScriptsClassicThumbstickUsesIAS = FlagUtil.getUserFlag("UserPlayerScriptsClassicThumbstickUsesIAS")
local FFlagUserPlayerScriptsUseScriptableBindings = FlagUtil.getUserFlag("UserPlayerScriptsUseScriptableBindings")
local FFlagUserPlayerScriptsThumbstickContext = FlagUtil.getUserFlag("UserPlayerScriptsThumbstickContext")

local AvatarAbilitiesInterface = if FFlagUserPlayerScriptsCCLIntegrationB
	then require(script.Parent:WaitForChild("ControlModule"):WaitForChild("AvatarAbilitiesInterface"))
	else nil
local InputReplication = if FFlagUserPlayerScriptsCCLIntegrationB
	then require(script.Parent:WaitForChild("ControlModule"):WaitForChild("InputReplication"))
	else nil

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

	if FFlagUserPlayerScriptsThumbstickContext then
		characterContext.Priority = 150

		local thumbstickContext = Instance.new("InputContext")
		thumbstickContext.Name = "TransformerContext"
		thumbstickContext.Priority = 300
		thumbstickContext.Sink = true
		thumbstickContext.Parent = StarterPlayer.PlayerModule.InputContexts
		thumbstickAction.Parent = thumbstickContext
	else
		thumbstickAction.Parent = characterContext
	end
end

if FFlagUserPlayerScriptsUseScriptableBindings then
	local characterContext = StarterPlayer.PlayerModule.InputContexts.CharacterContext
	local cameraContext = StarterPlayer.PlayerModule.InputContexts.CameraContext
	local moveAction = characterContext:FindFirstChild("MoveAction")
	local jumpAction = characterContext:FindFirstChild("JumpAction")
	local cameraAction = cameraContext:FindFirstChild("CameraAction")
	local rotationAction = characterContext:FindFirstChild("RotationAction")

	if moveAction and not moveAction:FindFirstChild("DynamicThumbstickScriptableBinding") then
		local dynamicThumbstickBinding = Instance.new("InputBinding")
		dynamicThumbstickBinding.Name = "DynamicThumbstickScriptableBinding"
		dynamicThumbstickBinding.Parent = moveAction
	end

	if moveAction and not moveAction:FindFirstChild("ClassicThumbstickScriptableBinding") then
		local classicThumbstickBinding = Instance.new("InputBinding")
		classicThumbstickBinding.Name = "ClassicThumbstickScriptableBinding"
		classicThumbstickBinding.Parent = moveAction
	end

	if moveAction and not moveAction:FindFirstChild("ClickToMoveScriptableBinding") then
		local clickToMoveBinding = Instance.new("InputBinding")
		clickToMoveBinding.Name = "ClickToMoveScriptableBinding"
		clickToMoveBinding.Parent = moveAction
	end

	if jumpAction and not jumpAction:FindFirstChild("ClickToMoveScriptableBinding") then
		local clickToMoveBinding = Instance.new("InputBinding")
		clickToMoveBinding.Name = "ClickToMoveScriptableBinding"
		clickToMoveBinding.Parent = jumpAction
	end

	if cameraAction and not cameraAction:FindFirstChild("CameraScriptableBinding") then
		local cameraScriptableBinding = Instance.new("InputBinding")
		cameraScriptableBinding.Name = "CameraScriptableBinding"
		cameraScriptableBinding.Parent = cameraAction
	end

	if rotationAction and not rotationAction:FindFirstChild("RotationScriptableBinding") then
		local rotationScriptableBinding = Instance.new("InputBinding")
		rotationScriptableBinding.Name = "RotationScriptableBinding"
		rotationScriptableBinding.Parent = rotationAction
	end
end

local function attemptCreateActionsIfAbsent(player: Player)
	local avatarAbilitiesInterface = AvatarAbilitiesInterface.get(player)

	local function createAction(abilityName: string)
		local inputContexts = player:FindFirstChild("InputContexts")
		if not inputContexts then return end
		local characterContext = inputContexts:FindFirstChild("CharacterContext")
		if not characterContext then return end

		local action = Instance.new("InputAction")
		action.Name = abilityName .. "Action"
		if FFlagUserPlayerScriptsUseScriptableBindings then
			local scriptableBinding = Instance.new("InputBinding")
			scriptableBinding.Name = "ScriptableBinding"
			scriptableBinding.Parent = action
		end
		action.Parent = characterContext
	end

	if avatarAbilitiesInterface:isEnabled() then
		local inputContexts = player:FindFirstChild("InputContexts")
		if not inputContexts then
			-- We aren't able to create new instances or wait while in a BindToSimulation update
			-- Creating these objects will be done asynchronously. It will take two calls of attemptCreateActionsIfAbsent() to create the hierarchy
			task.spawn(function()
				InputReplication.CloneInputsIfAbsent(player)
			end)
		else
			local characterContext = inputContexts:FindFirstChild("CharacterContext")
			if characterContext then
				for _, abilityName in avatarAbilitiesInterface:GetAbilities() do
					local action = characterContext:FindFirstChild(abilityName .. "Action")
					if not action then
						task.spawn(function()
							createAction(abilityName)
						end)
					end
				end
			end
		end
	end
end

local function updatePlayer(player: Player)
	attemptCreateActionsIfAbsent(player)
	local avatarAbilitiesInterface = AvatarAbilitiesInterface.get(player)
	if avatarAbilitiesInterface:isEnabled() then
		InputReplication.SendInputToCCLCharacter(player)
	end
end

if FFlagUserPlayerScriptsCCLIntegrationB then
	Players.PlayerAdded:Connect(attemptCreateActionsIfAbsent)
	for _, player in Players:GetPlayers() do
		attemptCreateActionsIfAbsent(player)
	end

	RunService:BindToSimulation(function(dt)
		for _, player in Players:GetPlayers() do
			updatePlayer(player)
		end
	end, Enum.StepFrequency.Hz60)
end

-- [[ End Input Setup ]]

-- Set shared state and publish so server auth can proceed
PlayerModuleEventBus.data.inputsSetupComplete = true
PlayerModuleEventBus:publish(CONNECTIONS.INPUTS_SETUP)
