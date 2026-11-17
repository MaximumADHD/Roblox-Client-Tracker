--!nonstrict

local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local GuiService = game:GetService("GuiService")
local CommonUtils = require(script.Parent.Parent:WaitForChild("CommonUtils"))
local ConnectionUtil = CommonUtils.get("ConnectionUtil")
local AvatarAbilitiesInterface = require(script.Parent:WaitForChild("AvatarAbilitiesInterface"))
local avatarAbilitiesInterface = AvatarAbilitiesInterface.get(Players.LocalPlayer)
local InputSlots = require(script.Parent:WaitForChild("InputSlots"))
local AbilityButton = require(script.Parent:WaitForChild("AbilityButton"))

local SCROLL_BUTTON_SIZE_SMALL = { 28, 44 }
local SCROLL_BUTTON_SIZE_LARGE = { 36, 56 }
local SCROLL_BUTTON_INSET_SMALL = { 16, 12 }
local SCROLL_BUTTON_INSET_LARGE = { 16, 12 }
local SCROLL_SPACING_SMALL = 8
local SCROLL_SPACING_LARGE = 10
local OVERFLOW_BUTTON_WIDTH_SMALL = 44
local OVERFLOW_BUTTON_WIDTH_LARGE = 56

-- Priority for the gamepad InputContexts. Must sit above CharacterContext (150) so the nav
-- context can sink ButtonL1/ButtonB before their CharacterContext ability actions fire.
local OVERFLOW_INPUT_PRIORITY = 500
local SCROLL_BUTTON_IMAGE = "rbxassetid://120193229129639"
local SCROLL_BUTTON_PRESSED_IMAGE = "rbxassetid://122643389561468"

-- Which way the overflow row scrolls. "next" is toward the screen edge the menu is anchored to
-- (right in landscape, up in portrait); "previous" is away from it; "none" means no scroll.
type ScrollDirection = "previous" | "next" | "none"

local function IsPortrait()
	local playerGui = Players.LocalPlayer:FindFirstChildOfClass("PlayerGui")
	if not playerGui then
		return false
	end
	return playerGui.CurrentScreenOrientation == Enum.ScreenOrientation.Portrait
end

type AbilitiesOverflowMenuClass = {
	new: () -> AbilitiesOverflowMenu,
}

export type AbilitiesOverflowMenu = typeof(setmetatable({} :: {}, {} :: AbilitiesOverflowMenuClass))

local AbilitiesOverflowMenu = {}
AbilitiesOverflowMenu.__index = AbilitiesOverflowMenu

function AbilitiesOverflowMenu.new(parentFrame)
	local self = setmetatable({}, AbilitiesOverflowMenu)

	self.parentUIFrame = parentFrame
	self.managedButtons = {}

	self.created = false
	self.enabled = false
	self.enabledChangedEvent = Instance.new("BindableEvent")

	self.selectionMode = false
	self.selectedVisibleSlot = 1
	self.numVisibleSlots = 0
	self.abilityButtonsByVisibleSlot = {}
	self.selectionRing = nil
	self.activeActionSlot = nil -- slot currently being pressed down. nil when none.
	self.activeButton = nil
	self.scrollHighlightDirection = "none"
	self.connections = ConnectionUtil.new()
	self.inputFolder = nil
	self.navContext = nil

	return self
end

function AbilitiesOverflowMenu:Enable(enable)
	if self.enabled == enable then
		return
	end
	self.enabled = enable

	if enable and not self.created then
		self:Create()
		self.created = true
	end

	if not enable then
		self:ExitSelectionMode()
	end

	if self.created then
		self:UpdateInputMode()
	end

	self.enabledChangedEvent:Fire()
end

function AbilitiesOverflowMenu:CreateOverflowScrollButton(direction: ScrollDirection)
	local button = Instance.new("ImageButton")
	button.Name = "ScrollButton"
	button.BackgroundTransparency = 1
	button.Image = SCROLL_BUTTON_IMAGE
	button.PressedImage = SCROLL_BUTTON_PRESSED_IMAGE
	button.Parent = self.parentUIFrame

	local function ResizeButton()
		local minAxis = math.min(self.parentUIFrame.AbsoluteSize.x, self.parentUIFrame.AbsoluteSize.y)
		local isPortrait = IsPortrait()
		local isSmallScreen = minAxis <= 500

		local size = isSmallScreen and SCROLL_BUTTON_SIZE_SMALL or SCROLL_BUTTON_SIZE_LARGE
		local inset = isSmallScreen and SCROLL_BUTTON_INSET_SMALL or SCROLL_BUTTON_INSET_LARGE
		local spacing = isSmallScreen and SCROLL_SPACING_SMALL or SCROLL_SPACING_LARGE
		local overflowButtonWidth = isSmallScreen and OVERFLOW_BUTTON_WIDTH_SMALL or OVERFLOW_BUTTON_WIDTH_LARGE

		local buttonWidth, buttonHeight = size[1], size[2]
		local insetX, insetY = inset[1], inset[2]

		-- In portrait the button is rotated 90/270 deg, which pivots about its center. For a
		-- non-square button that shifts the visual box by half the (height - width) difference,
		-- so offset the position by this to keep the rotated button aligned to the corner inset.
		local rotationCenteringOffset = 0.5 * (buttonHeight - buttonWidth)
		-- Width of the overflow-button row: the buttons themselves plus a gap on each side of each.
		local numOverflowButtons = InputSlots.GetNumOverflowSlots()
		local overflowRowSpan = numOverflowButtons * overflowButtonWidth + (numOverflowButtons + 1) * spacing

		button.Size = UDim2.new(0, buttonWidth, 0, buttonHeight)
		if direction == "previous" then
			-- Away-from-edge button: sits left of the overflow row on landscape, or below on portrait
			if isPortrait then
				button.Position = UDim2.new(
					1,
					-insetX - buttonHeight + rotationCenteringOffset,
					0,
					insetY + buttonWidth + overflowRowSpan - rotationCenteringOffset
				)
				button.Rotation = 270
			else
				button.Position = UDim2.new(1, -insetX - 2 * buttonWidth - overflowRowSpan, 0, insetY)
				button.Rotation = 0
			end
		else
			-- Toward-edge button ("next"): nearest the anchored corner edge.
			if isPortrait then
				button.Position =
					UDim2.new(1, -insetX - buttonHeight + rotationCenteringOffset, 0, insetY - rotationCenteringOffset)
				button.Rotation = 90
			else
				button.Position = UDim2.new(1, -insetX - buttonWidth, 0, insetY)
				button.Rotation = 180
			end
		end
	end

	ResizeButton()

	local overflowScrollButtonConnections = ConnectionUtil.new()
	overflowScrollButtonConnections:trackConnection(
		"ParentResize",
		self.parentUIFrame:GetPropertyChangedSignal("AbsoluteSize"):Connect(ResizeButton)
	)

	button.Activated:Connect(function()
		if direction == "previous" then
			InputSlots.setOverflowScrollIndex(InputSlots.getOverflowScrollIndex() + 1)
		else
			InputSlots.setOverflowScrollIndex(InputSlots.getOverflowScrollIndex() - 1)
		end
	end)

	button.Destroying:Connect(function()
		overflowScrollButtonConnections:disconnectAll()
	end)

	button.Selectable = false

	if AbilitiesOverflowMenu.IsGamepad() then
		button.Active = false
		button.AutoButtonColor = false
	end

	return button
end

function AbilitiesOverflowMenu:SetScrollHighlight(direction: ScrollDirection)
	if self.scrollHighlightDirection == direction then
		return
	end
	self.scrollHighlightDirection = direction
	if self.created then
		self:CreateButtons()
	end
end

function AbilitiesOverflowMenu:GetScrollDirectionForMove(direction: ScrollDirection): ScrollDirection
	if not self.selectionMode or self.activeActionSlot or direction == "none" then
		return "none"
	end

	local delta = if direction == "previous" then 1 else -1
	local abilitiesInOverflow = InputSlots.GetAbilitiesInOverflow()
	local maxScrollIndex = math.max(0, #abilitiesInOverflow - InputSlots.GetNumOverflowSlots())
	local scrollIndex = InputSlots.getOverflowScrollIndex()
	local target = self.selectedVisibleSlot + delta

	if target < 1 and scrollIndex > 0 then
		return "next"
	elseif target > self.numVisibleSlots and scrollIndex < maxScrollIndex then
		return "previous"
	end
	return "none"
end

function AbilitiesOverflowMenu.IsGamepad()
	return UserInputService.PreferredInput == Enum.PreferredInput.Gamepad
end

function AbilitiesOverflowMenu.IsKeyboardMouse()
	return UserInputService.PreferredInput == Enum.PreferredInput.KeyboardAndMouse
end

function AbilitiesOverflowMenu.SupportsSelection()
	return AbilitiesOverflowMenu.IsGamepad() or AbilitiesOverflowMenu.IsKeyboardMouse()
end

function AbilitiesOverflowMenu:EnsureSelectionRing()
	if self.selectionRing then
		return
	end

	local ring = Instance.new("Frame")
	ring.Name = "SelectionRing"
	ring.BackgroundTransparency = 1
	ring.Size = UDim2.new(1, 8, 1, 8)
	ring.Position = UDim2.new(0, -4, 0, -4)

	local corner = Instance.new("UICorner")
	corner.CornerRadius = UDim.new(1, 0)
	corner.Parent = ring

	local stroke = Instance.new("UIStroke")
	stroke.Thickness = 3
	stroke.Color = Color3.new(1, 1, 1)
	stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	stroke.Parent = ring

	self.selectionRing = ring
end

function AbilitiesOverflowMenu:EnsureInputObjects()
	if self.inputFolder then
		return
	end

	local staleFolder = script:FindFirstChild("AbilitiesOverflowInput")
	if staleFolder then
		staleFolder:Destroy()
	end

	local folder = Instance.new("Folder")
	folder.Name = "AbilitiesOverflowInput"

	local navContext = Instance.new("InputContext")
	navContext.Name = "AbilitiesOverflowNavContext"
	navContext.Priority = OVERFLOW_INPUT_PRIORITY
	navContext.Sink = true
	navContext.Enabled = false
	navContext.Parent = folder

	local function createNavAction(name, keyCodes)
		local action = Instance.new("InputAction")
		action.Name = name
		action.Type = Enum.InputActionType.Bool
		action.Parent = navContext

		for index, keyCode in keyCodes do
			local binding = Instance.new("InputBinding")
			binding.Name = "Binding" .. index
			binding.KeyCode = keyCode
			binding.Parent = action
		end

		return action
	end

	local navPreviousAction =
		createNavAction("NavPreviousAction", { Enum.KeyCode.ButtonL1, Enum.KeyCode.DPadLeft, Enum.KeyCode.Left })
	self.connections:trackConnection(
		"NavPrevious",
		navPreviousAction.StateChanged:Connect(function(value)
			if value then
				self:SetScrollHighlight(self:GetScrollDirectionForMove("previous"))
			else
				self:SetScrollHighlight("none")
				self:MoveSelection("previous")
			end
		end)
	)

	local navNextAction =
		createNavAction("NavNextAction", { Enum.KeyCode.ButtonR1, Enum.KeyCode.DPadRight, Enum.KeyCode.Right })
	self.connections:trackConnection(
		"NavNext",
		navNextAction.StateChanged:Connect(function(value)
			if value then
				self:SetScrollHighlight(self:GetScrollDirectionForMove("next"))
			else
				self:SetScrollHighlight("none")
				self:MoveSelection("next")
			end
		end)
	)

	local exitAction = createNavAction("ExitAction", { Enum.KeyCode.ButtonB })
	self.connections:trackConnection(
		"Exit",
		exitAction.Pressed:Connect(function()
			self:ExitSelectionMode()
		end)
	)

	local activateAction =
		createNavAction("ActivateAction", { Enum.KeyCode.ButtonA, Enum.KeyCode.Return, Enum.KeyCode.KeypadEnter })
	self.connections:trackConnection(
		"Activate",
		activateAction.StateChanged:Connect(function(value)
			if value then
				self.activeActionSlot = self.selectedVisibleSlot
				self.activeButton = self.abilityButtonsByVisibleSlot[self.activeActionSlot]
				if self.activeButton then
					self.activeButton:SetSelectionPressed(true)
				end
			elseif self.activeActionSlot then
				self:ExitSelectionMode()
			end
		end)
	)

	createNavAction("AbilitySinkAction", {
		Enum.KeyCode.ButtonX,
		Enum.KeyCode.ButtonY,
		Enum.KeyCode.ButtonL2,
		Enum.KeyCode.ButtonR2,
		Enum.KeyCode.DPadDown,
	})

	folder.Parent = script

	self.inputFolder = folder
	self.navContext = navContext
end

function AbilitiesOverflowMenu:UpdateInputMode()
	if not self.parentUIFrame then
		return
	end

	if AbilitiesOverflowMenu.SupportsSelection() then
		self:EnsureInputObjects()
		if not self.enabled and self.selectionMode then
			self:ExitSelectionMode()
		end
	else
		if self.selectionMode then
			self:ExitSelectionMode()
		end
	end

	self.parentUIFrame.Visible = true
end

function AbilitiesOverflowMenu:EnterSelectionMode()
	if self.selectionMode then
		return
	end
	if not AbilitiesOverflowMenu.SupportsSelection() or not self.enabled then
		return
	end
	if self.numVisibleSlots <= 0 then
		return
	end

	self.selectionMode = true
	if self.navContext then
		self.navContext.Enabled = true
	end
	self.parentUIFrame.Visible = true
	self.selectedVisibleSlot = math.clamp(self.selectedVisibleSlot, 1, self.numVisibleSlots)
	self:RefreshSelection()
end

function AbilitiesOverflowMenu:ExitSelectionMode()
	self.selectionMode = false
	if self.navContext then
		self.navContext.Enabled = false
	end

	if self.scrollHighlightDirection ~= "none" then
		self.scrollHighlightDirection = "none"
		if self.created then
			self:CreateButtons()
		end
	end

	if self.activeButton then
		self.activeButton:SetSelectionPressed(false)
		self.activeButton = nil
	end
	self.activeActionSlot = nil

	if self.selectionRing then
		self.selectionRing.Parent = nil
	end
end

function AbilitiesOverflowMenu:MoveSelection(direction: ScrollDirection)
	if not self.selectionMode then
		return
	end
	if self.activeActionSlot then
		return
	end
	if direction == "none" then
		return
	end

	local delta = if direction == "previous" then 1 else -1

	local abilitiesInOverflow = InputSlots.GetAbilitiesInOverflow()
	local maxScrollIndex = math.max(0, #abilitiesInOverflow - InputSlots.GetNumOverflowSlots())
	local scrollIndex = InputSlots.getOverflowScrollIndex()

	local target = self.selectedVisibleSlot + delta
	if target < 1 then
		if scrollIndex > 0 then
			self.selectedVisibleSlot = 1
			InputSlots.setOverflowScrollIndex(scrollIndex - 1)
		end
	elseif target > self.numVisibleSlots then
		if scrollIndex < maxScrollIndex then
			self.selectedVisibleSlot = self.numVisibleSlots
			InputSlots.setOverflowScrollIndex(scrollIndex + 1)
		end
	else
		self.selectedVisibleSlot = target
	end

	self:RefreshSelection()
end

function AbilitiesOverflowMenu:RefreshSelection()
	if not AbilitiesOverflowMenu.SupportsSelection() or not self.selectionMode then
		return
	end
	if self.numVisibleSlots <= 0 then
		return
	end

	self.selectedVisibleSlot = math.clamp(self.selectedVisibleSlot, 1, self.numVisibleSlots)
	local button = self.abilityButtonsByVisibleSlot[self.selectedVisibleSlot]
	if button then
		self:EnsureSelectionRing()
		self.selectionRing.Parent = button.instance
		self.selectionRing.Visible = true
	end
end

function AbilitiesOverflowMenu:Teardown()
	self.connections:disconnectAll()

	self.created = false

	self:ExitSelectionMode()

	if self.inputFolder then
		self.inputFolder:Destroy()
		self.inputFolder = nil
		self.navContext = nil
	end
	if self.selectionRing then
		self.selectionRing:Destroy()
		self.selectionRing = nil
	end
end

function AbilitiesOverflowMenu:CreateButtons()
	if self.selectionRing then
		self.selectionRing.Parent = nil
	end
	for _, managedButton in self.managedButtons do
		managedButton:Destroy()
	end
	self.managedButtons = {}
	self.abilityButtonsByVisibleSlot = {}
	self.numVisibleSlots = 0
	if not avatarAbilitiesInterface:isEnabled() then
		return
	end

	local abilitiesInOverflow = InputSlots.GetAbilitiesInOverflow()
	local numOverflowSlotsToFill = math.min(#abilitiesInOverflow, InputSlots.GetNumOverflowSlots())
	local extraSpacingForScrollButtonSmall = 0
	local extraSpacingForScrollButtonLarge = 0
	local previousScrollButton, nextScrollButton
	if #abilitiesInOverflow > InputSlots.GetNumOverflowSlots() then
		local scrollIndex = InputSlots.getOverflowScrollIndex()
		local maxScrollIndex = #abilitiesInOverflow - InputSlots.GetNumOverflowSlots()
		if scrollIndex > 0 then
			nextScrollButton = self:CreateOverflowScrollButton("next")
			table.insert(self.managedButtons, nextScrollButton)
		end
		if scrollIndex < maxScrollIndex then
			previousScrollButton = self:CreateOverflowScrollButton("previous")
			table.insert(self.managedButtons, previousScrollButton)
		end
		extraSpacingForScrollButtonSmall = SCROLL_BUTTON_SIZE_SMALL[1] + SCROLL_SPACING_SMALL
		extraSpacingForScrollButtonLarge = SCROLL_BUTTON_SIZE_LARGE[1] + SCROLL_SPACING_LARGE
	end

	if self.scrollHighlightDirection == "previous" and previousScrollButton then
		previousScrollButton.Image = SCROLL_BUTTON_PRESSED_IMAGE
	elseif self.scrollHighlightDirection == "next" and nextScrollButton then
		nextScrollButton.Image = SCROLL_BUTTON_PRESSED_IMAGE
	end
	for overflowIndex = 1, numOverflowSlotsToFill do
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
						SCROLL_BUTTON_INSET_SMALL[2]
							+ extraSpacingForScrollButtonSmall
							+ (overflowIndex - 1) * (OVERFLOW_BUTTON_WIDTH_SMALL + SCROLL_SPACING_SMALL),
					},
					large = {
						OVERFLOW_BUTTON_WIDTH_LARGE,
						SCROLL_BUTTON_INSET_LARGE[1],
						SCROLL_BUTTON_INSET_LARGE[2]
							+ extraSpacingForScrollButtonLarge
							+ (overflowIndex - 1) * (OVERFLOW_BUTTON_WIDTH_LARGE + SCROLL_SPACING_LARGE),
					},
				}
			else
				buttonPositioning = {
					small = {
						OVERFLOW_BUTTON_WIDTH_SMALL,
						SCROLL_BUTTON_INSET_SMALL[1]
							+ extraSpacingForScrollButtonSmall
							+ (overflowIndex - 1) * (OVERFLOW_BUTTON_WIDTH_SMALL + SCROLL_SPACING_SMALL),
						SCROLL_BUTTON_INSET_SMALL[2],
					},
					large = {
						OVERFLOW_BUTTON_WIDTH_LARGE,
						SCROLL_BUTTON_INSET_LARGE[1]
							+ extraSpacingForScrollButtonLarge
							+ (overflowIndex - 1) * (OVERFLOW_BUTTON_WIDTH_LARGE + SCROLL_SPACING_LARGE),
						SCROLL_BUTTON_INSET_LARGE[2],
					},
				}
			end
			local abilityButton =
				AbilityButton.create(self, abilityName, abilityConfig, action, buttonPositioning, true, true)
			table.insert(self.managedButtons, abilityButton)
			self.abilityButtonsByVisibleSlot[overflowIndex] = abilityButton
			self.numVisibleSlots = overflowIndex
			if overflowIndex == self.activeActionSlot then
				self.activeButton = abilityButton
				abilityButton:SetSelectionPressed(true)
			end
		end
	end

	self.parentUIFrame.Visible = true
	if self.selectionMode then
		if self.numVisibleSlots <= 0 then
			self:ExitSelectionMode()
		elseif AbilitiesOverflowMenu.SupportsSelection() then
			self:RefreshSelection()
		end
	end
end

function AbilitiesOverflowMenu:Create()
	if not self.parentUIFrame then
		return
	end

	self:CreateButtons()

	self.connections:trackConnection(
		"SlotMapChanged",
		InputSlots.GetSlotMapChangedSignal():Connect(function()
			self:CreateButtons()
			self.selectedVisibleSlot = self.numVisibleSlots
			self:RefreshSelection()
		end)
	)
	self.connections:trackConnection(
		"AbilitiesEnabledChanged",
		avatarAbilitiesInterface:GetEnabledChangedSignal():Connect(function()
			self:CreateButtons()
		end)
	)
	self.connections:trackConnection(
		"ScrollIndexChanged",
		InputSlots.getScrollIndexChangedEvent():Connect(function()
			self:CreateButtons()
		end)
	)
	self.connections:trackConnection(
		"PreferredInput",
		UserInputService:GetPropertyChangedSignal("PreferredInput"):Connect(function()
			self:UpdateInputMode()
			self:CreateButtons()
		end)
	)

	self.connections:trackConnection(
		"InputBegan",
		UserInputService.InputBegan:Connect(function(input, gameProcessed)
			if gameProcessed then
				return
			end
			if not self.enabled then
				return
			end
			local isToggleKey = (AbilitiesOverflowMenu.IsGamepad() and input.KeyCode == Enum.KeyCode.DPadUp)
				or (AbilitiesOverflowMenu.IsKeyboardMouse() and input.KeyCode == Enum.KeyCode.M)
			if not isToggleKey then
				return
			end
			if self.selectionMode then
				self:ExitSelectionMode()
			else
				self:EnterSelectionMode()
			end
		end)
	)

	self.connections:trackConnection(
		"MenuOpened",
		GuiService.MenuOpened:Connect(function()
			if self.selectionMode then
				self:ExitSelectionMode()
			end
		end)
	)

	local playerGui = Players.LocalPlayer:WaitForChild("PlayerGui", 5)
	if playerGui then
		self.connections:trackConnection(
			"ScreenOrientation",
			playerGui:GetPropertyChangedSignal("CurrentScreenOrientation"):Connect(function()
				self:CreateButtons()
			end)
		)
	end

	self.parentUIFrame.Destroying:Connect(function()
		self:Teardown()
	end)

	self:UpdateInputMode()
end

return AbilitiesOverflowMenu
