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

local FFlagUserPlayerScriptsCCLIntegrationD = FlagUtil.getUserFlag("UserPlayerScriptsCCLIntegrationD")
local FFlagUserPlayerScriptsPlayerControlState = FlagUtil.getUserFlag("UserPlayerScriptsPlayerControlState2")
local FFlagUserPlayerScriptsSupportTVRemoteKeycodes = FlagUtil.getUserFlag("UserPlayerScriptsSupportTVRemoteKeycodes")
local FFlagUserPSUseBindToAnimation = FlagUtil.getUserFlag("UserPSUseBindToAnimation")
local FFlagUserPlayerScriptsTaskDeferSimulation = FlagUtil.getUserFlag("UserPlayerScriptsTaskDeferSimulation")

local AvatarAbilitiesInterface = if FFlagUserPlayerScriptsCCLIntegrationD
	then require(script.Parent:WaitForChild("ControlModule"):WaitForChild("AvatarAbilitiesInterface"))
	else nil
local InputReplication = if FFlagUserPlayerScriptsCCLIntegrationD
	then require(script.Parent:WaitForChild("ControlModule"):WaitForChild("InputReplication"))
	else nil

local CONNECTIONS = {
	INPUTS_SETUP = "INPUTS_SETUP",
}

--[[ Input Setup ]]
if not FFlagUserPlayerScriptsPlayerControlState then
	local function attemptCreateActionsIfAbsent(player: Player)
		local avatarAbilitiesInterface = AvatarAbilitiesInterface.get(player)

		local function createAction(abilityName: string)
			local inputContexts = player:FindFirstChild("InputContexts")
			if not inputContexts then return end
			local characterContext = inputContexts:FindFirstChild("CharacterContext")
			if not characterContext then return end
			if FFlagUserPlayerScriptsTaskDeferSimulation and characterContext:FindFirstChild(abilityName .. "Action") then return end

			local action = Instance.new("InputAction")
			action.Name = abilityName .. "Action"
			local scriptableBinding = Instance.new("InputBinding")
			scriptableBinding.Name = "ScriptableBinding"
			scriptableBinding.Type = Enum.InputBindingType.Scriptable
			scriptableBinding.Parent = action
			action.Parent = characterContext
		end

		if avatarAbilitiesInterface:isEnabled() then
			local inputContexts = player:FindFirstChild("InputContexts")
			if not inputContexts then
				-- We aren't able to create new instances or wait while in a BindToSimulation update
				-- Creating these objects will be done asynchronously. It will take two calls of attemptCreateActionsIfAbsent() to create the hierarchy
				(if FFlagUserPlayerScriptsTaskDeferSimulation then task.defer else task.spawn)(function()
					InputReplication.CloneInputsIfAbsent(player)
				end)
			else
				local characterContext = inputContexts:FindFirstChild("CharacterContext")
				if characterContext then
					for _, abilityName in avatarAbilitiesInterface:GetAbilities() do
						local action = characterContext:FindFirstChild(abilityName .. "Action")
						if not action then
							(if FFlagUserPlayerScriptsTaskDeferSimulation then task.defer else task.spawn)(function()
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

	if FFlagUserPlayerScriptsCCLIntegrationD then
		Players.PlayerAdded:Connect(attemptCreateActionsIfAbsent)
		for _, player in Players:GetPlayers() do
			attemptCreateActionsIfAbsent(player)
		end

		if FFlagUserPSUseBindToAnimation then
			RunService:BindToAnimation(function(dt)
				for _, player in Players:GetPlayers() do
					updatePlayer(player)
				end
			end, Enum.StepFrequency.Hz60)
		else
			RunService:BindToSimulation(function(dt)
				for _, player in Players:GetPlayers() do
					updatePlayer(player)
				end
			end, Enum.StepFrequency.Hz60)
		end
	end
end

if FFlagUserPlayerScriptsSupportTVRemoteKeycodes then
	local inputContexts = StarterPlayer.PlayerModule:FindFirstChild("InputContexts")
	if not inputContexts then
		warn("PlayerModule: InputContexts not found; skipping TV-remote (MicroGamepad) keycode bindings")
	end
	local characterContext = inputContexts and inputContexts:FindFirstChild("CharacterContext")
	local cameraContext = inputContexts and inputContexts:FindFirstChild("CameraContext")

	local function addMicroGamepadBinding(action: Instance?, configure: (InputBinding) -> ())
		if action and not action:FindFirstChild("MicroGamepadBinding") then
			local binding = Instance.new("InputBinding")
			binding.Name = "MicroGamepadBinding"
			configure(binding)
			binding.Parent = action
		end
	end

	if characterContext then
		addMicroGamepadBinding(characterContext:FindFirstChild("MoveAction"), function(binding)
			binding.Up = Enum.KeyCode.ButtonUp
			binding.Down = Enum.KeyCode.ButtonDown
		end)
		addMicroGamepadBinding(characterContext:FindFirstChild("JumpAction"), function(binding)
			binding.KeyCode = Enum.KeyCode.ButtonCenter
		end)
		addMicroGamepadBinding(characterContext:FindFirstChild("AbilityAction1"), function(binding)
			binding.KeyCode = Enum.KeyCode.ButtonCenter
		end)
	elseif inputContexts then
		warn("PlayerModule: CharacterContext not found; skipping TV-remote keycode bindings (ButtonUp/Down/Center) for character controls")
	end

	if cameraContext then
		addMicroGamepadBinding(cameraContext:FindFirstChild("CameraRotationAction"), function(binding)
			binding.Vector2Scale = Vector2.new(4.189, -3.225)
			binding.Right = Enum.KeyCode.ButtonRight
			binding.Left = Enum.KeyCode.ButtonLeft
		end)
	elseif inputContexts then
		warn("PlayerModule: CameraContext not found; skipping TV-remote keycode bindings (ButtonLeft/Right) for camera rotation")
	end
end

-- [[ End Input Setup ]]

-- Set shared state and publish so server auth can proceed
PlayerModuleEventBus.data.inputsSetupComplete = true
PlayerModuleEventBus:publish(CONNECTIONS.INPUTS_SETUP)
