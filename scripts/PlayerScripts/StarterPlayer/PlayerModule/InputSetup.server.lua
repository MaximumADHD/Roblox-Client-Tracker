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
local FFlagUserPlayerScriptsUseScriptableBindings = FlagUtil.getUserFlag("UserPlayerScriptsUseScriptableBindings")
local FFlagUserPlayerScriptsSAuthDirectAPIs = FlagUtil.getUserFlag("UserPlayerScriptsSAuthDirectAPIs2")
local FFlagUserPlayerScriptsPlayerControlState = FlagUtil.getUserFlag("UserPlayerScriptsPlayerControlState2")

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
		if FFlagUserPlayerScriptsSAuthDirectAPIs then dynamicThumbstickBinding.Type = Enum.InputBindingType.Scriptable end
		dynamicThumbstickBinding.Parent = moveAction
	elseif FFlagUserPlayerScriptsSAuthDirectAPIs and moveAction then
		local existingBinding = moveAction:FindFirstChild("DynamicThumbstickScriptableBinding")
		if existingBinding and existingBinding:IsA("InputBinding") then existingBinding.Type = Enum.InputBindingType.Scriptable end
	end

	if moveAction and not moveAction:FindFirstChild("ClassicThumbstickScriptableBinding") then
		local classicThumbstickBinding = Instance.new("InputBinding")
		classicThumbstickBinding.Name = "ClassicThumbstickScriptableBinding"
		if FFlagUserPlayerScriptsSAuthDirectAPIs then classicThumbstickBinding.Type = Enum.InputBindingType.Scriptable end
		classicThumbstickBinding.Parent = moveAction
	elseif FFlagUserPlayerScriptsSAuthDirectAPIs and moveAction then
		local existingBinding = moveAction:FindFirstChild("ClassicThumbstickScriptableBinding")
		if existingBinding and existingBinding:IsA("InputBinding") then existingBinding.Type = Enum.InputBindingType.Scriptable end
	end

	if moveAction and not moveAction:FindFirstChild("ClickToMoveScriptableBinding") then
		local clickToMoveBinding = Instance.new("InputBinding")
		clickToMoveBinding.Name = "ClickToMoveScriptableBinding"
		if FFlagUserPlayerScriptsSAuthDirectAPIs then clickToMoveBinding.Type = Enum.InputBindingType.Scriptable end
		clickToMoveBinding.Parent = moveAction
	elseif FFlagUserPlayerScriptsSAuthDirectAPIs and moveAction then
		local existingBinding = moveAction:FindFirstChild("ClickToMoveScriptableBinding")
		if existingBinding and existingBinding:IsA("InputBinding") then existingBinding.Type = Enum.InputBindingType.Scriptable end
	end

	if jumpAction and not jumpAction:FindFirstChild("ClickToMoveScriptableBinding") then
		local clickToMoveBinding = Instance.new("InputBinding")
		clickToMoveBinding.Name = "ClickToMoveScriptableBinding"
		if FFlagUserPlayerScriptsSAuthDirectAPIs then clickToMoveBinding.Type = Enum.InputBindingType.Scriptable end
		clickToMoveBinding.Parent = jumpAction
	elseif FFlagUserPlayerScriptsSAuthDirectAPIs and jumpAction then
		local existingBinding = jumpAction:FindFirstChild("ClickToMoveScriptableBinding")
		if existingBinding and existingBinding:IsA("InputBinding") then existingBinding.Type = Enum.InputBindingType.Scriptable end
	end

	if cameraAction and not cameraAction:FindFirstChild("CameraScriptableBinding") then
		local cameraScriptableBinding = Instance.new("InputBinding")
		cameraScriptableBinding.Name = "CameraScriptableBinding"
		if FFlagUserPlayerScriptsSAuthDirectAPIs then cameraScriptableBinding.Type = Enum.InputBindingType.Scriptable end
		cameraScriptableBinding.Parent = cameraAction
	elseif FFlagUserPlayerScriptsSAuthDirectAPIs and cameraAction then
		local existingBinding = cameraAction:FindFirstChild("CameraScriptableBinding")
		if existingBinding and existingBinding:IsA("InputBinding") then existingBinding.Type = Enum.InputBindingType.Scriptable end
	end

	if rotationAction and not rotationAction:FindFirstChild("RotationScriptableBinding") then
		local rotationScriptableBinding = Instance.new("InputBinding")
		rotationScriptableBinding.Name = "RotationScriptableBinding"
		if FFlagUserPlayerScriptsSAuthDirectAPIs then rotationScriptableBinding.Type = Enum.InputBindingType.Scriptable end
		rotationScriptableBinding.Parent = rotationAction
	elseif FFlagUserPlayerScriptsSAuthDirectAPIs and rotationAction then
		local existingBinding = rotationAction:FindFirstChild("RotationScriptableBinding")
		if existingBinding and existingBinding:IsA("InputBinding") then existingBinding.Type = Enum.InputBindingType.Scriptable end
	end
end

if not FFlagUserPlayerScriptsPlayerControlState then
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
				if FFlagUserPlayerScriptsSAuthDirectAPIs then scriptableBinding.Type = Enum.InputBindingType.Scriptable end
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

	if FFlagUserPlayerScriptsCCLIntegrationD then
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
end

-- [[ End Input Setup ]]

-- Set shared state and publish so server auth can proceed
PlayerModuleEventBus.data.inputsSetupComplete = true
PlayerModuleEventBus:publish(CONNECTIONS.INPUTS_SETUP)
