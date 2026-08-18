--!nonstrict
local CommonUtils = require(script.Parent.Parent:WaitForChild("CommonUtils"))
local FlagUtil = CommonUtils.get("FlagUtil")
local StarterPlayer = game:GetService("StarterPlayer")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserGameSettings = UserSettings():GetService("UserGameSettings")

local InputReplication = require(script.Parent:WaitForChild("InputReplication"))
local AvatarAbilitiesInterface = require(script.Parent:WaitForChild("AvatarAbilitiesInterface"))
local avatarAbilitiesInterface = AvatarAbilitiesInterface.get(Players.LocalPlayer)
local FFlagUserPlayerScriptsSAuthDirectAPIs = FlagUtil.getUserFlag("UserPlayerScriptsSAuthDirectAPIs")
local FFlagUserPlayerScriptsFireThroughScriptableBindings = FlagUtil.getUserFlag("UserPlayerScriptsFireThroughScriptableBindings")
local FFlagUserPlayerScriptsPlayerControlState = FlagUtil.getUserFlag("UserPlayerScriptsPlayerControlState")

local InputSlots = {}
InputSlots.__index = InputSlots

local NUM_ABILITY_SLOTS = 11

local slotMap = {}
local actionsPerSlot = {}
local slotMapChanged = Instance.new("BindableEvent")

local function shallow_equal(t1, t2)
	if t1 == t2 then return true end
		for k, v in pairs(t1) do if t2[k] ~= v then return false end end
		for k, _ in pairs(t2) do if t1[k] == nil then return false end end
	return true
end

function InputSlots.setupSlotActions(player, isServerAuthority)
	local function getAbilityAction(abilityName)
		if not abilityName then return nil end
		local inputContexts = if not FFlagUserPlayerScriptsPlayerControlState or isServerAuthority then
			player:FindFirstChild("InputContexts") else
			script.Parent.Parent:FindFirstChild("InputContexts")
		if not inputContexts then return nil end
		local characterContext = inputContexts:FindFirstChild("CharacterContext")
		if not characterContext then return nil end

		local action = characterContext:FindFirstChild(abilityName .. "Action")
		return action
	end

	if not FFlagUserPlayerScriptsPlayerControlState then
		RunService:BindToSimulation(function(dt)
			if avatarAbilitiesInterface:isEnabled() then
				InputReplication.FireCustomInputs(player)
				InputReplication.SendInputToCCLCharacter(player)
			end
		end, Enum.StepFrequency.Hz60)
	end

	local previousSelectedSlotForAbility = {}

	local function updateSlotMap()

		local oldSlotMap = table.clone(slotMap)
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

		if not shallow_equal(slotMap, oldSlotMap) then
			slotMapChanged:Fire()
		end
	end

	avatarAbilitiesInterface:GetAbilitiesChangedSignal():Connect(function()
		updateSlotMap()
	end)
	updateSlotMap()

	task.spawn(function()
		local function UpdateAbilityInPCS(player, abilityName, state)
			local character = player.Character
			if not character then return end
			local pcs = character:FindFirstChild("PlayerControlState")
			if not pcs then return end
			pcs:UpdateFields({
				[abilityName] = state
			})
		end
		local inputContexts = if not FFlagUserPlayerScriptsPlayerControlState or isServerAuthority then
			player:WaitForChild("InputContexts", math.huge) else
			script.Parent.Parent:FindFirstChild("InputContexts")
		local characterContext = inputContexts:WaitForChild("CharacterContext")
		for slot = 1, NUM_ABILITY_SLOTS do
			local abilityAction = characterContext:WaitForChild("AbilityAction" .. tostring(slot))
			actionsPerSlot[slot] = abilityAction
			abilityAction.StateChanged:Connect(function(value)
				if FFlagUserPlayerScriptsPlayerControlState then
					if slotMap[slot] ~= nil and slotMap[slot] ~= "" then
						UpdateAbilityInPCS(player, slotMap[slot], value)
					end
				else
					local actionInSlot = getAbilityAction(slotMap[slot])
					if actionInSlot then
						if FFlagUserPlayerScriptsSAuthDirectAPIs then
							local binding = actionInSlot:FindFirstChild("ScriptableBinding")
							if binding then
								binding:Fire(value)
							end
						elseif FFlagUserPlayerScriptsFireThroughScriptableBindings then
							local binding = actionInSlot:FindFirstChild("ScriptableBinding")
							if binding then
								local success, result = pcall(function()
									binding.Type = Enum.InputBindingType.Scriptable
									binding:Fire(value)
								end)
								if not success then
									actionInSlot:Fire(value)
								end
							else
								actionInSlot:Fire(value)
							end
						else
							actionInSlot:Fire(value)
						end
					end
				end
			end)
		end
	end)
end

function InputSlots.GetSlotMapChangedSignal()
	return slotMapChanged.Event
end

function InputSlots.GetSlotMap()
    return slotMap
end

function InputSlots.GetNumSlots()
    return NUM_ABILITY_SLOTS
end

function InputSlots.GetActionInSlot(slot)
    return actionsPerSlot[slot]
end

return InputSlots
