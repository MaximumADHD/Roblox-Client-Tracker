--!strict

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local CommonUtils = require(script.Parent.Parent:WaitForChild("CommonUtils"))
local FlagUtil = CommonUtils.get("FlagUtil")
local FFlagUserPlayerScriptsCCLIntegrationB = FlagUtil.getUserFlag("UserPlayerScriptsCCLIntegrationB")

local InputReplication
local avatarAbilitiesInterface
if FFlagUserPlayerScriptsCCLIntegrationB then
	InputReplication = require(script.Parent:WaitForChild("InputReplication"))
	local AvatarAbilitiesInterface = require(script.Parent:WaitForChild("AvatarAbilitiesInterface"))
	avatarAbilitiesInterface = AvatarAbilitiesInterface.get(Players.LocalPlayer)
end

local CONNECTIONS = {
	SERVER_AUTHORITY_CHANGED = "SERVER_AUTHORITY_CHANGED",
	ACTIONS_RELOADED = "ACTIONS_RELOADED",
}

local NUM_ABILITY_SLOTS = 10

-- The Module
export type ActionControllerType = {
	new: () -> ActionControllerType,
	Enable: (ActionControllerType, enable: boolean) -> boolean,

	enabled: boolean,
}

local ActionController = {} :: ActionControllerType
(ActionController :: any).__index = ActionController

function ActionController.new()
	local self = setmetatable({}, ActionController)

	self.enabled = true

	return self
end

function ActionController.setupSlotActions(data, playerData)
	local function getAbilityAction(abilityName)
		if not abilityName then return nil end
		local inputContexts = playerData.player:FindFirstChild("InputContexts")
		if not inputContexts then return nil end
		local characterContext = inputContexts:FindFirstChild("CharacterContext")
		if not characterContext then return nil end

		local action = characterContext:FindFirstChild(abilityName .. "Action")
		return action
	end

	RunService:BindToSimulation(function(dt)
		if avatarAbilitiesInterface:isEnabled() then
			InputReplication.FireCustomInputs(playerData.player)
			InputReplication.SendInputToCCLCharacter(playerData.player)
		end
	end, Enum.StepFrequency.Hz60)

	local slotMap = {}
	local previousSelectedSlotForAbility = {}

	local function updateSlotMap()

		local abilities = avatarAbilitiesInterface:GetAbilities()

		for slot, abilityInSlot in pairs(slotMap) do
			if not table.find(abilities, abilityInSlot) then
				slotMap[slot] = nil
			end
		end

		local abilitiesAdded = {}

		for _, ability in ipairs(abilities) do
			if not table.find(slotMap, ability) then
				table.insert(abilitiesAdded, ability)
			end
		end

		local abilitiesInOverflow = {}

		for _, abilityName in ipairs(abilitiesAdded) do
			local abilityConfig = avatarAbilitiesInterface:GetAbilityConfig(abilityName)
			if abilityConfig then
				local slot = tonumber(abilityConfig.Slot)
				if slot > 0 then
					local existingAbilityInSlot = slotMap[slot]
					if not existingAbilityInSlot then
						slotMap[slot] = abilityName
					else
						table.insert(abilitiesInOverflow, abilityName)
					end
				end
			end
		end

		for _, abilityName in ipairs(abilitiesAdded) do
			local abilityConfig = avatarAbilitiesInterface:GetAbilityConfig(abilityName)
			if abilityConfig then
				local slot = tonumber(abilityConfig.Slot)
				if slot == 0 then
					local previousSelectedSlot = previousSelectedSlotForAbility[abilityName]
					if previousSelectedSlot and previousSelectedSlot > 0 and not slotMap[previousSelectedSlot] then
						slotMap[previousSelectedSlot] = abilityName
					else
						local firstEmptySlot = -1
						for slotIndex = 1, NUM_ABILITY_SLOTS do
							if not slotMap[slotIndex] then
								firstEmptySlot = slotIndex
								break
							end
						end
						if firstEmptySlot ~= -1 then
							slotMap[firstEmptySlot] = abilityName
							previousSelectedSlotForAbility[abilityName] = firstEmptySlot
						else
							table.insert(abilitiesInOverflow, abilityName)
						end
					end
				end
			end
		end
	end

	avatarAbilitiesInterface:GetAbilitiesChangedSignal():Connect(function()
		updateSlotMap()
	end)
	updateSlotMap()

	task.spawn(function()
		local inputContexts = playerData.player:WaitForChild("InputContexts", math.huge)
		local characterContext = inputContexts:WaitForChild("CharacterContext")
		for slot = 1, NUM_ABILITY_SLOTS do
			local abilityAction = characterContext:WaitForChild("AbilityAction" .. tostring(slot))
			abilityAction.StateChanged:Connect(function(value)
				local actionInSlot = getAbilityAction(slotMap[slot])
				if actionInSlot then
					actionInSlot:Fire(value)
				end
			end)
		end
	end)
end

function ActionController.initializeActions(data, playerData)
	data.connectionUtil:trackConnection(CONNECTIONS.SERVER_AUTHORITY_CHANGED,
		data.eventBus:subscribe(CONNECTIONS.SERVER_AUTHORITY_CHANGED):Connect(function()
			playerData.actions = {}
		end)
	)

	if playerData.actions.MoveAction and playerData.actions.JumpAction then return end
	if not playerData.player then return end

	-- may fail because the player's InputContexts may not be immediately available when the player is added
	pcall(function()
		local contextFolder = script.Parent.Parent.InputContexts
		if data.isServerAuthority then
			contextFolder = playerData.player.InputContexts
		end
		local characterContext = contextFolder.CharacterContext

		playerData.actions = {
			MoveAction = characterContext.MoveAction,
			JumpAction = characterContext.JumpAction,
		}

		data.eventBus:publish(CONNECTIONS.ACTIONS_RELOADED)
	end)
end

function ActionController.update(playerData)
	playerData.moveVector = playerData.actions.MoveAction:GetState()
	playerData.isJumping = playerData.actions.JumpAction:GetState()
end

function ActionController:Enable(enable: boolean)
	-- empty function to be removed when ControlModule no longer manages active controller
end

return ActionController
