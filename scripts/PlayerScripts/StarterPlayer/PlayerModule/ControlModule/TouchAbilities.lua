--!nonstrict

local Players = game:GetService("Players")
local CommonUtils = require(script.Parent.Parent:WaitForChild("CommonUtils"))
local ConnectionUtil = CommonUtils.get("ConnectionUtil")
local AvatarAbilitiesInterface = require(script.Parent:WaitForChild("AvatarAbilitiesInterface"))
local avatarAbilitiesInterface = AvatarAbilitiesInterface.get(Players.LocalPlayer)
local InputSlots = require(script.Parent:WaitForChild("InputSlots"))

local ABILITY_BUTTON_POSITIONING = {
	{
		small = {72, 60,  60},			-- size, insetX, insetY
		large   = {92, 112, 112},
	},
	{
		small = {44, 132, 132},
		large   = {56, 200, 200},
	},
	{
		small = {44, 132, 16},
		large   = {56, 200, 60},
	},
	{
		small = {44, 16, 132},
		large   = {56, 60, 200},
	},
	{
		small = {44, 156, 74},
		large   = {56, 228, 130},
	},
	{
		small = {44, 74, 156},
		large   = {56, 130, 228},
	},
	{
		small = {44, 16, 16},
		large   = {56, 60, 60},
	},
}

type TouchAbilitiesClass = {
	new: () -> TouchAbilities,
}

export type TouchAbilities = typeof(setmetatable({} :: {
}, {} :: TouchAbilitiesClass))

local TouchAbilities = {}
TouchAbilities.__index = TouchAbilities

function TouchAbilities.new(parentFrame)
	local self = setmetatable({}, TouchAbilities)

	self.parentUIFrame = parentFrame
	self.managedButtons = {}

	self.created = false
	self.enabled = false
	self.enabledChangedEvent = Instance.new("BindableEvent")
	self.connectionUtil = ConnectionUtil.new()

	return self
end

function TouchAbilities:Enable(enable)
	if self.enabled == enable then return end
	self.enabled = enable

	if enable and not self.created then
		self:Create()
		self.created = true
	end

	self.enabledChangedEvent:Fire()
end

function TouchAbilities:CreateAbilityButton(actionName, abilityConfig, action, positioning)
	local buttonAssetId = "rbxassetid://136780077406114"
	local buttonPressedAssetId = "rbxassetid://76895455502876"
	local buttonInvalidAssetId = nil
	if abilityConfig.ButtonAssetId then
		buttonAssetId = abilityConfig.ButtonAssetId
	end
	if abilityConfig.ButtonPressedAssetId then
		buttonPressedAssetId = abilityConfig.ButtonPressedAssetId
	end
	if abilityConfig.ButtonInvalidAssetId then
		buttonInvalidAssetId = abilityConfig.ButtonInvalidAssetId
	end

	local button = Instance.new("ImageButton")
	button.Name = actionName .. "Button"
	button.Visible = false
	button.BackgroundTransparency = 1
	button.Image = buttonAssetId
	button.Parent = self.parentUIFrame

	for _, child in action:GetChildren() do
		if string.find(child.Name, "Touch") and child:IsA("InputBinding") then
			child.UIButton = button
			break
		end
	end

	local function ResizeButton()
		local minAxis = math.min(self.parentUIFrame.AbsoluteSize.x, self.parentUIFrame.AbsoluteSize.y)
		local isSmallScreen = minAxis <= 500

		local insetAndSize = isSmallScreen and positioning.small or positioning.large

		local buttonSize = insetAndSize[1]
		local insetX = insetAndSize[2]
		local insetY = insetAndSize[3]

		local buttonPositionFromCornerX = -insetX - buttonSize
		local buttonPositionFromCornerY = -insetY - buttonSize

		button.Size = UDim2.new(0, buttonSize, 0, buttonSize)
		button.Position = UDim2.new(1, buttonPositionFromCornerX, 1, buttonPositionFromCornerY)
	end

	ResizeButton()

	self.connectionUtil:trackConnection(
		`{actionName}_ABSOLUTE_SIZE`, self.parentUIFrame:GetPropertyChangedSignal("AbsoluteSize"):Connect(ResizeButton)
	)

	local function UpdateButtonState()
		local valid = avatarAbilitiesInterface:GetAbilityValid(actionName)
		button.Visible = self.enabled and action.Enabled and (abilityConfig.IconVisibleWhenInvalid or valid)

		if button.Visible then
			if not valid then
				if buttonInvalidAssetId then
					button.Image = buttonInvalidAssetId
					button.ImageTransparency = 0
				else
					button.Image = buttonAssetId
					button.ImageTransparency = 0.6
				end
			else
				local active = avatarAbilitiesInterface:GetAbilityActive(actionName)
				button.Image = if active then buttonPressedAssetId else buttonAssetId
				button.ImageTransparency = 0
			end
		end
	end
	UpdateButtonState()

	self.connectionUtil:trackConnection(
		`{actionName}_ACTIVE_CHANGED`, avatarAbilitiesInterface:GetAbilityActiveChangedSignal(actionName):Connect(UpdateButtonState)
	)
	self.connectionUtil:trackConnection(
		`{actionName}_VALID_CHANGED`, avatarAbilitiesInterface:GetAbilityValidChangedSignal(actionName):Connect(UpdateButtonState)
	)
	self.connectionUtil:trackConnection(
		`{actionName}_ENABLED_CHANGED`, self.enabledChangedEvent.Event:Connect(UpdateButtonState)
	)
	self.connectionUtil:trackConnection(
		`{actionName}_ACTION_ENABLED_CHANGED`, action:GetPropertyChangedSignal("Enabled"):Connect(UpdateButtonState)
	)

	button.Destroying:Connect(function()
		self.connectionUtil:disconnectAll()
	end)

	return button
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
			for slot = 1, InputSlots.GetNumSlots() do
				local abilityName = slotMap[slot]
				local action = InputSlots.GetActionInSlot(slot)
				if abilityName and action and slot <= #ABILITY_BUTTON_POSITIONING then
					local abilityConfig = avatarAbilitiesInterface:GetAbilityConfig(abilityName)
					table.insert(self.managedButtons, self:CreateAbilityButton(abilityName, abilityConfig, action, ABILITY_BUTTON_POSITIONING[slot]))
				end
			end
		end
	end

	CreateButtons()
	InputSlots.GetSlotMapChangedSignal():Connect(CreateButtons)
	avatarAbilitiesInterface:GetEnabledChangedSignal():Connect(CreateButtons)
end

return TouchAbilities
