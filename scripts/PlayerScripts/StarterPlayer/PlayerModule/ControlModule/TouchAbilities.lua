--!nonstrict

local Players = game:GetService("Players")
local CommonUtils = require(script.Parent.Parent:WaitForChild("CommonUtils"))
local AvatarAbilitiesInterface = require(script.Parent:WaitForChild("AvatarAbilitiesInterface"))
local avatarAbilitiesInterface = AvatarAbilitiesInterface.get(Players.LocalPlayer)
local InputSlots = require(script.Parent:WaitForChild("InputSlots"))
local FlagUtil = CommonUtils.get("FlagUtil")
local FFlagUserAbilitiesUserInterfaceA = FlagUtil.getUserFlag("UserAbilitiesUserInterfaceA")
local FFlagUserAbilitiesUserInterfaceC = FlagUtil.getUserFlag("UserAbilitiesUserInterfaceC")

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

local SCROLL_BUTTON_SIZE_SMALL = {28, 44}
local SCROLL_BUTTON_SIZE_LARGE = {36, 56}
local SCROLL_BUTTON_INSET_SMALL = {16, 12}
local SCROLL_BUTTON_INSET_LARGE = {16, 12}
local SCROLL_SPACING_SMALL = 8
local SCROLL_SPACING_LARGE = 10
local OVERFLOW_BUTTON_WIDTH_SMALL = 44
local OVERFLOW_BUTTON_WIDTH_LARGE = 56

local function IsPortrait()
	local playerGui = Players.LocalPlayer:FindFirstChildOfClass("PlayerGui")
	if not playerGui then
		return false
	end
	return playerGui.CurrentScreenOrientation == Enum.ScreenOrientation.Portrait
end

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

function TouchAbilities:CreateAbilityButton(actionName, abilityConfig, action, positioning, topAligned)
	local buttonAssetId = "rbxassetid://136780077406114"
	local buttonPressedAssetId = "rbxassetid://76895455502876"
	local buttonInvalidAssetId = nil
	local buttonPressed = false
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

		button.Size = UDim2.new(0, buttonSize, 0, buttonSize)

		if topAligned then
			button.Position = UDim2.new(1, buttonPositionFromCornerX, 0, insetY)
		else
			local buttonPositionFromCornerY = -insetY - buttonSize
			button.Position = UDim2.new(1, buttonPositionFromCornerX, 1, buttonPositionFromCornerY)
		end
	end

	ResizeButton()

	local connections = {}
	table.insert(connections, self.parentUIFrame:GetPropertyChangedSignal("AbsoluteSize"):Connect(ResizeButton))

	local function UpdateButtonState()
		local valid = avatarAbilitiesInterface:GetAbilityValid(actionName)
		local active = avatarAbilitiesInterface:GetAbilityActive(actionName)
		button.Visible = self.enabled and action.Enabled and (abilityConfig.IconVisibleWhenInvalid or valid or active)

		if button.Visible then
			if active or (buttonPressed and valid) then
				button.Image = buttonPressedAssetId
				button.ImageTransparency = 0
			elseif valid then
				button.Image = buttonAssetId
				button.ImageTransparency = 0
			else
				if buttonInvalidAssetId then
					button.Image = buttonInvalidAssetId
					button.ImageTransparency = 0
				else
					button.Image = buttonAssetId
					button.ImageTransparency = 0.6
				end
			end
		end
	end
	UpdateButtonState()

	button.MouseButton1Down:Connect(function()
		buttonPressed = true
		UpdateButtonState()
	end)

	button.MouseButton1Up:Connect(function()
		buttonPressed = false
		UpdateButtonState()
	end)

	button.MouseLeave:Connect(function()
		buttonPressed = false
		UpdateButtonState()
	end)

	table.insert(connections, avatarAbilitiesInterface:GetAbilityActiveChangedSignal(actionName):Connect(UpdateButtonState))
	table.insert(connections, avatarAbilitiesInterface:GetAbilityValidChangedSignal(actionName):Connect(UpdateButtonState))
	table.insert(connections, self.enabledChangedEvent.Event:Connect(UpdateButtonState))
	table.insert(connections, action:GetPropertyChangedSignal("Enabled"):Connect(UpdateButtonState))

	button.Destroying:Connect(function()
		for _, connection in connections do
			connection:Disconnect()
		end
		table.clear(connections)
	end)

	return button
end

function TouchAbilities:CreateOverflowScrollButton(isPreviousButton)
	local buttonAssetId = "rbxassetid://120193229129639"
	local buttonPressedAssetId = "rbxassetid://122643389561468"

	local button = Instance.new("ImageButton")
	button.Name = "ScrollButton"
	button.BackgroundTransparency = 1
	button.Image = buttonAssetId
	button.PressedImage = buttonPressedAssetId
	button.Parent = self.parentUIFrame

	local function ResizeButton()
		local minAxis = math.min(self.parentUIFrame.AbsoluteSize.x, self.parentUIFrame.AbsoluteSize.y)
		local isPortrait = IsPortrait()
		local isSmallScreen = minAxis <= 500

		local size = isSmallScreen and SCROLL_BUTTON_SIZE_SMALL or SCROLL_BUTTON_SIZE_LARGE
		local inset = isSmallScreen and SCROLL_BUTTON_INSET_SMALL or SCROLL_BUTTON_INSET_LARGE
		local spacing = isSmallScreen and SCROLL_SPACING_SMALL or SCROLL_SPACING_LARGE
		local overflowButtonWidth = isSmallScreen and OVERFLOW_BUTTON_WIDTH_SMALL or OVERFLOW_BUTTON_WIDTH_LARGE

		button.Size = UDim2.new(0, size[1], 0, size[2])
		if isPreviousButton then
			if isPortrait then
				button.Position = UDim2.new(1, -inset[1] - size[2] + 0.5*(size[2] - size[1]), 0, inset[2] + size[1] + 4 * spacing + 3 * overflowButtonWidth - 0.5*(size[2] - size[1]))
				button.Rotation = 270
			else
				button.Position = UDim2.new(1, -inset[1] - 2 * size[1] - 4 * spacing - 3 * overflowButtonWidth, 0, inset[2])
				button.Rotation = 0
			end
		else
			button.Position = UDim2.new(1, -inset[1] - size[1], 0, inset[2])
			if isPortrait then
				button.Position = UDim2.new(1, -inset[1] - size[2] + 0.5*(size[2] - size[1]), 0, inset[2] - 0.5*(size[2] - size[1]))
				button.Rotation = 90
			else
				button.Position = UDim2.new(1, -inset[1] - size[1], 0, inset[2])
				button.Rotation = 180
			end
		end
	end

	ResizeButton()

	local connections = {}
	table.insert(connections, self.parentUIFrame:GetPropertyChangedSignal("AbsoluteSize"):Connect(ResizeButton))

	button.Activated:Connect(function()
		if isPreviousButton then
			InputSlots.setOverflowScrollIndex(InputSlots.getOverflowScrollIndex() + 1)
		else
			InputSlots.setOverflowScrollIndex(InputSlots.getOverflowScrollIndex() - 1)
		end
	end)

	button.Destroying:Connect(function()
		for _, connection in connections do
			connection:Disconnect()
		end
		table.clear(connections)
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
			for slot, abilityName in pairs(slotMap) do
				local action = InputSlots.GetActionInSlot(slot)
				if abilityName and
					action and
					slot <= #ABILITY_BUTTON_POSITIONING and
					(FFlagUserAbilitiesUserInterfaceA or slot == 1) then
					local abilityConfig = avatarAbilitiesInterface:GetAbilityConfig(abilityName)
					table.insert(self.managedButtons, self:CreateAbilityButton(abilityName, abilityConfig, action, ABILITY_BUTTON_POSITIONING[slot], false))
				end
			end
			if FFlagUserAbilitiesUserInterfaceA and FFlagUserAbilitiesUserInterfaceC then
				local abilitiesInOverflow = InputSlots.GetAbilitiesInOverflow()
				local extraSpacingForScrollButtonSmall = 0
				local extraSpacingForScrollButtonLarge = 0
				if #abilitiesInOverflow > InputSlots.GetNumOverflowSlots() then
					if InputSlots.getOverflowScrollIndex() > 0 then
						table.insert(self.managedButtons, self:CreateOverflowScrollButton(false))
					end
					if InputSlots.getOverflowScrollIndex() < #abilitiesInOverflow - InputSlots.GetNumOverflowSlots() then
						table.insert(self.managedButtons, self:CreateOverflowScrollButton(true))
					end
					extraSpacingForScrollButtonSmall = SCROLL_BUTTON_SIZE_SMALL[1] + SCROLL_SPACING_SMALL
					extraSpacingForScrollButtonLarge = SCROLL_BUTTON_SIZE_LARGE[1] + SCROLL_SPACING_LARGE
				end
				for overflowIndex = 1, math.min(#abilitiesInOverflow, InputSlots.GetNumOverflowSlots()) do
					local abilityName = abilitiesInOverflow[overflowIndex + InputSlots.getOverflowScrollIndex()]
					local action = InputSlots.GetOverflowAction(overflowIndex)
					if abilityName and action then
						local abilityConfig = avatarAbilitiesInterface:GetAbilityConfig(abilityName)
						local buttonPositioning
						if IsPortrait() then
							buttonPositioning = {
								small = {
									OVERFLOW_BUTTON_WIDTH_SMALL,
									SCROLL_BUTTON_INSET_SMALL[1],
									SCROLL_BUTTON_INSET_SMALL[2] + extraSpacingForScrollButtonSmall +
										(overflowIndex - 1) * (OVERFLOW_BUTTON_WIDTH_SMALL + SCROLL_SPACING_SMALL)
								},
								large = {
									OVERFLOW_BUTTON_WIDTH_LARGE,
									SCROLL_BUTTON_INSET_LARGE[1],
									SCROLL_BUTTON_INSET_LARGE[2] + extraSpacingForScrollButtonLarge +
										(overflowIndex - 1) * (OVERFLOW_BUTTON_WIDTH_LARGE + SCROLL_SPACING_LARGE)
								}
							}
						else
							buttonPositioning = {
								small = {
									OVERFLOW_BUTTON_WIDTH_SMALL,
									SCROLL_BUTTON_INSET_SMALL[1] + extraSpacingForScrollButtonSmall +
										(overflowIndex - 1) * (OVERFLOW_BUTTON_WIDTH_SMALL + SCROLL_SPACING_SMALL),
									SCROLL_BUTTON_INSET_SMALL[2]
								},
								large = {
									OVERFLOW_BUTTON_WIDTH_LARGE,
									SCROLL_BUTTON_INSET_LARGE[1] + extraSpacingForScrollButtonLarge +
										(overflowIndex - 1) * (OVERFLOW_BUTTON_WIDTH_LARGE + SCROLL_SPACING_LARGE),
									SCROLL_BUTTON_INSET_LARGE[2]
								}
							}
						end
						table.insert(self.managedButtons, self:CreateAbilityButton(abilityName, abilityConfig, action, buttonPositioning, true))
					end
				end
			end
		end
	end

	CreateButtons()
	InputSlots.GetSlotMapChangedSignal():Connect(CreateButtons)
	avatarAbilitiesInterface:GetEnabledChangedSignal():Connect(CreateButtons)
	InputSlots.getScrollIndexChangedEvent():Connect(CreateButtons)

	local playerGui = Players.LocalPlayer:WaitForChild("PlayerGui", 5)
	if playerGui then
		playerGui:GetPropertyChangedSignal("CurrentScreenOrientation"):Connect(CreateButtons)
	end
end

return TouchAbilities
