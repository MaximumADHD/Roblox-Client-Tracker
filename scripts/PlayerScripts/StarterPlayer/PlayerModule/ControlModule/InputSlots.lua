--!nonstrict
local CommonUtils = require(script.Parent.Parent:WaitForChild("CommonUtils"))
local FlagUtil = CommonUtils.get("FlagUtil")
local StarterPlayer = game:GetService("StarterPlayer")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserGameSettings = UserSettings():GetService("UserGameSettings")
local UserInputService = game:GetService("UserInputService")

local InputReplication = require(script.Parent:WaitForChild("InputReplication"))
local AvatarAbilitiesInterface = require(script.Parent:WaitForChild("AvatarAbilitiesInterface"))
local avatarAbilitiesInterface = AvatarAbilitiesInterface.get(Players.LocalPlayer)
local FFlagUserPlayerScriptsPlayerControlState = FlagUtil.getUserFlag("UserPlayerScriptsPlayerControlState2")
	or FlagUtil.getUserFlag("UserPlayerScriptsPlayerControlState2GA")
local FFlagUserAbilitiesUserInterfaceB = FlagUtil.getUserFlag("UserAbilitiesUserInterfaceB")
local FFlagUserPSUseBindToAnimation = FlagUtil.getUserFlag("UserPSUseBindToAnimation")
local PCSInstanceName = if FFlagUserAbilitiesUserInterfaceB then "ControlState" else "PlayerControlState"

local InputSlots = {}
InputSlots.__index = InputSlots

local NUM_ABILITY_SLOTS_MAX = 11
local NUM_ABILITY_SLOTS_TOUCH = 7
local NUM_OVERFLOW_SLOTS = 3

-- Opt-in BoolValue under StarterPlayer.
-- Absent/false (default) = FILO (newcomer goes into the overflow)
-- true = FIFO (newcomer takes the slot, existing ability goes into the overflow)
local SLOT_CONFLICT_FIFO_VALUE_NAME = "AbilitySlotConflictFifo"

local SERVER_AUTHORITY_CHANGED = "SERVER_AUTHORITY_CHANGED"

local slotMap = {}
local abilitiesInOverflow = {}
local overflowInsertionOrder = {}
local overflowInsertionCounter = 0
local actionsPerSlot = {}
local starterPlayerActionsPerSlot = {}
local overflowActions = {}
local slotMapChanged = Instance.new("BindableEvent")
local overflowScrollIndex = 0
local scrollIndexChangedEvent = Instance.new("BindableEvent")

local function shallow_equal(t1, t2)
	if t1 == t2 then
		return true
	end
	for k, v in t1 do
		if t2[k] ~= v then
			return false
		end
	end
	for k, _ in t2 do
		if t1[k] == nil then
			return false
		end
	end
	return true
end

local function findInSparseTable(targetTable, targetValue)
	for key, value in targetTable do
		if value == targetValue then
			return key
		end
	end
	return nil
end

local ABILITY_BUTTON_ASSET_ATTRIBUTES = { "ButtonAssetId", "ButtonPressedAssetId", "ButtonInvalidAssetId" }

local function updateAbilityActionMetadata()
	for slot = 1, NUM_ABILITY_SLOTS_MAX do
		local action = actionsPerSlot[slot]
		if action then
			local abilityName = slotMap[slot]
			local hasAbility = abilityName ~= nil and abilityName ~= ""
			local displayName = if hasAbility then abilityName else ""
			local abilityConfig = if hasAbility then avatarAbilitiesInterface:GetAbilityConfig(abilityName) else nil

			local function updateAction(target)
				target.Enabled = hasAbility
				target.DisplayName = displayName
				for _, attributeName in ABILITY_BUTTON_ASSET_ATTRIBUTES do
					local assetId = if abilityConfig then abilityConfig[attributeName] else nil
					target:SetAttribute(attributeName, if type(assetId) == "string" then assetId else "")
				end
			end

			-- With server authority, the active actions live under the player object, otherwise under StarterPlayer.
			-- The StarterPlayer copies are the source of truth for this metadata, so update the active action and,
			-- if it's a different instance, the StarterPlayer copy too.
			updateAction(action)
			local starterPlayerAction = starterPlayerActionsPerSlot[slot]
			if starterPlayerAction and starterPlayerAction ~= action then
				updateAction(starterPlayerAction)
			end
		end
	end
end

function InputSlots.GetNumAbilitySlots()
	return NUM_ABILITY_SLOTS_MAX
end

function InputSlots.GetNumOverflowSlots()
	return NUM_OVERFLOW_SLOTS
end

function InputSlots.getOverflowScrollIndex()
	return overflowScrollIndex
end

function InputSlots.setOverflowScrollIndex(value)
	local oldValue = overflowScrollIndex
	overflowScrollIndex = math.max(0, math.min(#abilitiesInOverflow - NUM_OVERFLOW_SLOTS, value))
	if overflowScrollIndex ~= oldValue then
		scrollIndexChangedEvent:Fire()
	end
end

function InputSlots.getScrollIndexChangedEvent()
	return scrollIndexChangedEvent.Event
end

function InputSlots.setupSlotActions(player, isServerAuthority, eventBus)
	local function getAbilityAction(abilityName)
		if not abilityName then
			return nil
		end
		local inputContexts = if not FFlagUserPlayerScriptsPlayerControlState or isServerAuthority
			then player:FindFirstChild("InputContexts")
			else script.Parent.Parent:FindFirstChild("InputContexts")
		if not inputContexts then
			return nil
		end
		local characterContext = inputContexts:FindFirstChild("CharacterContext")
		if not characterContext then
			return nil
		end

		local action = characterContext:FindFirstChild(abilityName .. "Action")
		return action
	end

	if not FFlagUserPlayerScriptsPlayerControlState then
		if FFlagUserPSUseBindToAnimation then
			RunService:BindToAnimation(function(dt)
				if avatarAbilitiesInterface:isEnabled() then
					InputReplication.FireCustomInputs(player)
					InputReplication.SendInputToCCLCharacter(player)
				end
			end, Enum.StepFrequency.Hz60)
		else
			RunService:BindToSimulation(function(dt)
				if avatarAbilitiesInterface:isEnabled() then
					InputReplication.FireCustomInputs(player)
					InputReplication.SendInputToCCLCharacter(player)
				end
			end, Enum.StepFrequency.Hz60)
		end
	end

	local previousSelectedSlotForAbility = {}

	local function updateSlotMap()
		local oldSlotMap = table.clone(slotMap)
		local oldAbilitiesInOverflow = table.clone(abilitiesInOverflow)
		local abilities = avatarAbilitiesInterface:GetAbilities()

		local numSlotsAvailableThisPlatform = if UserInputService.PreferredInput == Enum.PreferredInput.Touch
			then NUM_ABILITY_SLOTS_TOUCH
			else NUM_ABILITY_SLOTS_MAX

		for slot, abilityInSlot in slotMap do
			if not findInSparseTable(abilities, abilityInSlot) or slot > numSlotsAvailableThisPlatform then
				slotMap[slot] = nil
			end
		end

		abilitiesInOverflow = {}

		local abilitiesAdded = {}

		for _, ability in abilities do
			if not findInSparseTable(slotMap, ability) then
				table.insert(abilitiesAdded, ability)
			end
		end

		local slotConflictFifoValue = StarterPlayer:FindFirstChild(SLOT_CONFLICT_FIFO_VALUE_NAME)
		local useFifoSlotConflict = slotConflictFifoValue ~= nil
			and slotConflictFifoValue:IsA("BoolValue")
			and slotConflictFifoValue.Value

		for _, abilityName in abilitiesAdded do
			local abilityConfig = avatarAbilitiesInterface:GetAbilityConfig(abilityName)
			if abilityConfig then
				local slot = tonumber(abilityConfig.Slot)
				if slot > 0 then
					local existingAbilityInSlot = slotMap[slot]
					local isNewcomer = not findInSparseTable(oldSlotMap, abilityName)
						and not table.find(oldAbilitiesInOverflow, abilityName)
					if slot <= numSlotsAvailableThisPlatform and not existingAbilityInSlot then
						slotMap[slot] = abilityName
					elseif slot <= numSlotsAvailableThisPlatform and useFifoSlotConflict and isNewcomer then
						-- FIFO: the newcomer takes the slot, the existing occupant is bumped to overflow.
						table.insert(abilitiesInOverflow, existingAbilityInSlot)
						slotMap[slot] = abilityName
					else
						table.insert(abilitiesInOverflow, abilityName)
					end
				end
			end
		end

		for _, abilityName in abilitiesAdded do
			local abilityConfig = avatarAbilitiesInterface:GetAbilityConfig(abilityName)
			if abilityConfig then
				local slot = tonumber(abilityConfig.Slot)
				if slot == 0 then
					local previousSelectedSlot = previousSelectedSlotForAbility[abilityName]
					if previousSelectedSlot then
						if
							previousSelectedSlot <= numSlotsAvailableThisPlatform and not slotMap[previousSelectedSlot]
						then
							slotMap[previousSelectedSlot] = abilityName
						else
							table.insert(abilitiesInOverflow, abilityName)
						end
					else
						local firstEmptySlot = -1
						for slotIndex = 1, numSlotsAvailableThisPlatform do
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

		local stillInOverflow = {}
		for _, abilityName in abilitiesInOverflow do
			stillInOverflow[abilityName] = true
			if overflowInsertionOrder[abilityName] == nil then
				overflowInsertionCounter = overflowInsertionCounter + 1
				overflowInsertionOrder[abilityName] = overflowInsertionCounter
			end
		end
		for abilityName in overflowInsertionOrder do
			if not stillInOverflow[abilityName] then
				overflowInsertionOrder[abilityName] = nil
			end
		end
		table.sort(abilitiesInOverflow, function(a, b)
			return overflowInsertionOrder[a] < overflowInsertionOrder[b]
		end)

		local overflowChanged = not shallow_equal(abilitiesInOverflow, oldAbilitiesInOverflow)
		if overflowChanged then
			-- On a content change, scroll to the far left (highest index = most recently added).
			InputSlots.setOverflowScrollIndex(#abilitiesInOverflow - NUM_OVERFLOW_SLOTS)
		else
			InputSlots.setOverflowScrollIndex(InputSlots.getOverflowScrollIndex())
		end

		if not shallow_equal(slotMap, oldSlotMap) or overflowChanged then
			updateAbilityActionMetadata()
			slotMapChanged:Fire()
		end
	end

	avatarAbilitiesInterface:GetAbilitiesChangedSignal():Connect(updateSlotMap)
	UserInputService:GetPropertyChangedSignal("PreferredInput"):Connect(updateSlotMap)
	updateSlotMap()

	local function UpdateAbilityInPCS(player, abilityName, state)
		local character = player.Character
		if not character then
			return
		end
		local pcs
		if FFlagUserAbilitiesUserInterfaceB then
			pcs = character:FindFirstChildOfClass(PCSInstanceName)
		else
			pcs = character:FindFirstChild(PCSInstanceName)
		end
		if not pcs then
			return
		end
		pcs:UpdateFields({
			[abilityName] = state,
		})
	end

	local heldAbilityPerSlot = {}
	local heldAbilityPerOverflowSlot = {}
	local function resolveHeldAbility(heldAbilities, index, currentAbilityName, value)
		if value then
			heldAbilities[index] = currentAbilityName
			return currentAbilityName
		end
		local heldAbilityName = heldAbilities[index]
		heldAbilities[index] = nil
		return if heldAbilityName ~= nil then heldAbilityName else currentAbilityName
	end

	local actionConnections = {}
	local resolveGeneration = 0
	local function resolveAndWireActions()
		-- It's possible for this to be called multiple times concurrently.
		-- resolveGeneration makes sure only the last one called updates any state.
		resolveGeneration = resolveGeneration + 1
		local myGeneration = resolveGeneration

		for _, connection in actionConnections do
			connection:Disconnect()
		end
		table.clear(actionConnections)

		local inputContexts = if not FFlagUserPlayerScriptsPlayerControlState or isServerAuthority
			then player:WaitForChild("InputContexts", math.huge)
			else script.Parent.Parent:WaitForChild("InputContexts", math.huge)
		local characterContext = inputContexts:WaitForChild("CharacterContext")
		if myGeneration ~= resolveGeneration then
			return
		end

		local starterPlayerInputContexts = script.Parent.Parent:FindFirstChild("InputContexts")
		local starterPlayerCharacterContext = starterPlayerInputContexts
			and starterPlayerInputContexts:FindFirstChild("CharacterContext")

		for slot = 1, NUM_ABILITY_SLOTS_MAX do
			local abilityAction = characterContext:WaitForChild("AbilityAction" .. tostring(slot))
			if myGeneration ~= resolveGeneration then
				return
			end
			actionsPerSlot[slot] = abilityAction
			starterPlayerActionsPerSlot[slot] = if starterPlayerCharacterContext
				then starterPlayerCharacterContext:FindFirstChild("AbilityAction" .. tostring(slot))
				else nil
			table.insert(
				actionConnections,
				abilityAction.StateChanged:Connect(function(value)
					local abilityName = resolveHeldAbility(heldAbilityPerSlot, slot, slotMap[slot], value)
					if FFlagUserPlayerScriptsPlayerControlState then
						if abilityName ~= nil and abilityName ~= "" then
							UpdateAbilityInPCS(player, abilityName, value)
						end
					else
						local actionInSlot = getAbilityAction(abilityName)
						if actionInSlot then
							local binding = actionInSlot:FindFirstChild("ScriptableBinding")
							if binding then
								binding:Fire(value)
							end
						end
					end
				end)
			)
		end

		updateAbilityActionMetadata()

		if FFlagUserPlayerScriptsPlayerControlState then
			for overflowIndex = 1, NUM_OVERFLOW_SLOTS do
				local abilityAction = characterContext:WaitForChild("OverflowAction" .. tostring(overflowIndex))
				if myGeneration ~= resolveGeneration then
					return
				end
				overflowActions[overflowIndex] = abilityAction
				table.insert(
					actionConnections,
					abilityAction.StateChanged:Connect(function(value)
						local abilityName = resolveHeldAbility(
							heldAbilityPerOverflowSlot,
							overflowIndex,
							abilitiesInOverflow[overflowIndex + overflowScrollIndex],
							value
						)
						if abilityName ~= nil and abilityName ~= "" then
							UpdateAbilityInPCS(player, abilityName, value)
						end
					end)
				)
			end
		end

		slotMapChanged:Fire()
	end

	task.spawn(resolveAndWireActions)

	if eventBus then
		eventBus:subscribe(SERVER_AUTHORITY_CHANGED):Connect(function(newIsServerAuthority)
			if newIsServerAuthority == isServerAuthority then
				return
			end
			isServerAuthority = newIsServerAuthority
			task.spawn(resolveAndWireActions)
		end)
	end
end

function InputSlots.GetSlotMapChangedSignal()
	return slotMapChanged.Event
end

function InputSlots.GetSlotMap()
	return slotMap
end

function InputSlots.GetAbilitiesInOverflow()
	return abilitiesInOverflow
end

function InputSlots.GetActionInSlot(slot)
	return actionsPerSlot[slot]
end

function InputSlots.GetOverflowAction(overflowIndex)
	return overflowActions[overflowIndex]
end

return InputSlots
