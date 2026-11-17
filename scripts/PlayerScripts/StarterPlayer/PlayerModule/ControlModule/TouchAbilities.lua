--!nonstrict

local Players = game:GetService("Players")
local CommonUtils = require(script.Parent.Parent:WaitForChild("CommonUtils"))
local AvatarAbilitiesInterface = require(script.Parent:WaitForChild("AvatarAbilitiesInterface"))
local avatarAbilitiesInterface = AvatarAbilitiesInterface.get(Players.LocalPlayer)
local InputSlots = require(script.Parent:WaitForChild("InputSlots"))
local AbilityButton = require(script.Parent:WaitForChild("AbilityButton"))
local FlagUtil = CommonUtils.get("FlagUtil")
local FFlagUserAbilitiesUserInterfaceA = FlagUtil.getUserFlag("UserAbilitiesUserInterfaceA")

local ABILITY_BUTTON_POSITIONING = {
	{
		small = { 72, 60, 60 }, -- size, insetX, insetY
		large = { 92, 112, 112 },
	},
	{
		small = { 44, 132, 132 },
		large = { 56, 200, 200 },
	},
	{
		small = { 44, 132, 16 },
		large = { 56, 200, 60 },
	},
	{
		small = { 44, 16, 132 },
		large = { 56, 60, 200 },
	},
	{
		small = { 44, 156, 74 },
		large = { 56, 228, 130 },
	},
	{
		small = { 44, 74, 156 },
		large = { 56, 130, 228 },
	},
	{
		small = { 44, 16, 16 },
		large = { 56, 60, 60 },
	},
}

type TouchAbilitiesClass = {
	new: () -> TouchAbilities,
}

export type TouchAbilities = typeof(setmetatable({} :: {}, {} :: TouchAbilitiesClass))

local TouchAbilities = {}
TouchAbilities.__index = TouchAbilities

function TouchAbilities.new(parentFrame)
	local self = setmetatable({}, TouchAbilities)

	self.parentUIFrame = parentFrame
	self.managedButtons = {}
	self.connections = {}

	self.created = false
	self.enabled = false
	self.enabledChangedEvent = Instance.new("BindableEvent")

	return self
end

function TouchAbilities:Enable(enable)
	if self.enabled == enable then
		return
	end
	self.enabled = enable

	if enable and not self.created then
		self:Create()
		self.created = true
	end

	self.enabledChangedEvent:Fire()
end

function TouchAbilities:Create()
	if not self.parentUIFrame then
		return
	end

	local function CreateButtons()
		for _, managedButton in self.managedButtons do
			managedButton:Destroy()
		end
		self.managedButtons = {}
		if avatarAbilitiesInterface:isEnabled() then
			local slotMap = InputSlots.GetSlotMap()
			for slot, abilityName in slotMap do
				local action = InputSlots.GetActionInSlot(slot)
				if
					abilityName
					and action
					and slot <= #ABILITY_BUTTON_POSITIONING
					and (FFlagUserAbilitiesUserInterfaceA or slot == 1)
				then
					local abilityConfig = avatarAbilitiesInterface:GetAbilityConfig(abilityName)
					table.insert(
						self.managedButtons,
						AbilityButton.create(
							self,
							abilityName,
							abilityConfig,
							action,
							ABILITY_BUTTON_POSITIONING[slot],
							false
						)
					)
				end
			end
		end
	end

	CreateButtons()
	table.insert(self.connections, InputSlots.GetSlotMapChangedSignal():Connect(CreateButtons))
	table.insert(self.connections, avatarAbilitiesInterface:GetEnabledChangedSignal():Connect(CreateButtons))
end

function TouchAbilities:Destroy()
	for _, connection in self.connections do
		connection:Disconnect()
	end
	self.connections = {}
	for _, managedButton in self.managedButtons do
		managedButton:Destroy()
	end
	self.managedButtons = {}
	self.enabledChangedEvent:Destroy()
	self.created = false
	self.enabled = false
end

return TouchAbilities
