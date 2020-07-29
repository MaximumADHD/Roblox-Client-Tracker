--!nocheck

--[[
		Filename: GamepadMenu.lua
		Written by: jeditkacheff
		Version 1.1
		Description: Controls the radial menu that appears when pressing menu button on gamepad
--]]

--NOTICE: This file has been branched! If you're implementing changes in this file, please consider also implementing them in the other
--version.

--[[ SERVICES ]]
local GuiService = game:GetService('GuiService')
local CoreGuiService = game:GetService('CoreGui')
local InputService = game:GetService('UserInputService')
local ContextActionService = game:GetService('ContextActionService')
local HttpService = game:GetService('HttpService')
local RunService = game:GetService('RunService')
local StarterGui = game:GetService('StarterGui')
local Players = game:GetService('Players')
local GuiRoot = CoreGuiService:WaitForChild('RobloxGui')
local TextService = game:GetService('TextService')
local VRService = game:GetService('VRService')
--[[ END OF SERVICES ]]

--[[ MODULES ]]
local isNewInGameMenuEnabled = require(GuiRoot.Modules.isNewInGameMenuEnabled)
local tenFootInterface = require(GuiRoot.Modules.TenFootInterface)
local utility = require(GuiRoot.Modules.Settings.Utility)
local RobloxTranslator = require(GuiRoot.Modules.RobloxTranslator)
local businessLogic = require(GuiRoot.Modules.BusinessLogic)
local Panel3D = require(GuiRoot.Modules.VR.Panel3D)
local EmotesModule = require(GuiRoot.Modules.EmotesMenu.EmotesMenuMaster)

local FFlagUpdateSettingsHubGameText = require(GuiRoot.Modules.Flags.FFlagUpdateSettingsHubGameText)

local InGameMenuConstants = require(GuiRoot.Modules.InGameMenu.Resources.Constants)

--[[ VARIABLES ]]
local gamepadSettingsFrame = nil
local isVisible = false
local smallScreen = utility:IsSmallTouchScreen()
local isTenFootInterface = tenFootInterface:IsEnabled()
local radialButtons = {}
local radialButtonsByName = {}
local lastInputChangedCon = nil
local vrPanel = nil

--[[ CONSTANTS ]]
local NON_VR_FRAME_HIDDEN_SIZE = UDim2.new(0, 102, 0, 102)
local NON_VR_FRAME_SIZE = UDim2.new(0, 408, 0, 408)

local VR_FRAME_HIDDEN_SIZE = UDim2.new(0.125, 0, 0.125, 0)
local VR_FRAME_SIZE = UDim2.new(0.75, 0, 0.75, 0)

local PANEL_SIZE_STUDS = 3
local PANEL_RESOLUTION = 250

local GAMEPAD_MENU_KEY = "GamepadMenu"

local function getImagesForSlot(slot)
	if slot == 1 then		return "rbxasset://textures/ui/Settings/Radial/Top.png", "rbxasset://textures/ui/Settings/Radial/TopSelected.png",
									"rbxasset://textures/ui/Settings/Radial/Menu.png",
									UDim2.new(0.5,-26,0,18), UDim2.new(0,52,0,41),
									UDim2.new(0,150,0,100), UDim2.new(0.5,-75,0,0)
	elseif slot == 2 then	return "rbxasset://textures/ui/Settings/Radial/TopRight.png", "rbxasset://textures/ui/Settings/Radial/TopRightSelected.png",
									"rbxasset://textures/ui/Settings/Radial/PlayerList.png",
									UDim2.new(1,-90,0,90), UDim2.new(0,52,0,52),
									UDim2.new(0,108,0,150), UDim2.new(1,-110,0,50)
	elseif slot == 3 then	return "rbxasset://textures/ui/Settings/Radial/BottomRight.png", "rbxasset://textures/ui/Settings/Radial/BottomRightSelected.png",
	                                "rbxasset://textures/ui/Emotes/EmotesRadialIcon.png",
									UDim2.new(1,-85,1,-150), UDim2.new(0,42,0,58),
									UDim2.new(0,120,0,150), UDim2.new(1,-120,1,-200)
	elseif slot == 4 then 	return "rbxasset://textures/ui/Settings/Radial/Bottom.png", "rbxasset://textures/ui/Settings/Radial/BottomSelected.png",
									"rbxasset://textures/ui/Settings/Radial/Leave.png",
									UDim2.new(0.5,-20,1,-62), UDim2.new(0,55,0,46),
									UDim2.new(0,150,0,100), UDim2.new(0.5,-75,1,-100)
	elseif slot == 5 then	return "rbxasset://textures/ui/Settings/Radial/BottomLeft.png", "rbxasset://textures/ui/Settings/Radial/BottomLeftSelected.png",
								    "rbxasset://textures/ui/Settings/Radial/Backpack.png",
									UDim2.new(0,40,1,-150), UDim2.new(0,44,0,56),
									UDim2.new(0,110,0,150), UDim2.new(0,0,0,205)
	elseif slot == 6 then	return "rbxasset://textures/ui/Settings/Radial/TopLeft.png", "rbxasset://textures/ui/Settings/Radial/TopLeftSelected.png",
									"rbxasset://textures/ui/Settings/Radial/Chat.png",
									UDim2.new(0,35,0,100), UDim2.new(0,56,0,53),
									UDim2.new(0,110,0,150), UDim2.new(0,0,0,50)
	end

	return "", "", "", UDim2.new(0,0,0,0), UDim2.new(0,0,0,0)
end

local vrSlotImages = {}
local vrSlotBackgroundImage = "rbxasset://textures/ui/VR/Radial/SliceBackground.png"
local vrSlotActiveImage = "rbxasset://textures/ui/VR/Radial/SliceActive.png"
local vrSlotDisabledImage = "rbxasset://textures/ui/VR/Radial/SliceDisabled.png"
local vrNumSlots = 8
for i = 1, vrNumSlots do
	vrSlotImages[i] = {
		background = vrSlotBackgroundImage,
		active = vrSlotActiveImage,
		disabled = vrSlotDisabledImage,
		rotation = (360 / vrNumSlots) * (i - 1)
	}
end
vrSlotImages[1].icon = "rbxasset://textures/ui/Settings/Radial/Menu.png"
vrSlotImages[1].iconPosition = UDim2.new(0.5,-26,0,18)
vrSlotImages[1].iconSize = UDim2.new(0,52,0,41)
vrSlotImages[2].icon = "rbxasset://textures/ui/Settings/Radial/PlayerList.png"
vrSlotImages[2].iconPosition = UDim2.new(0.71, 5, 0.29, -60)
vrSlotImages[2].iconSize = UDim2.new(0, 52, 0, 52)
vrSlotImages[3].icon = "rbxasset://textures/ui/VR/Radial/Icons/Recenter.png"
vrSlotImages[3].iconPosition = UDim2.new(1, -60, 0.5, -25)
vrSlotImages[3].iconSize = UDim2.new(0, 50, 0, 50)
vrSlotImages[4].icon = "rbxasset://textures/ui/Emotes/EmotesRadialIcon.png"
vrSlotImages[4].iconPosition = UDim2.new(0.71, 12, 0.71, 5)
vrSlotImages[4].iconSize = UDim2.new(0, 42, 0, 58)
vrSlotImages[5].icon = "rbxasset://textures/ui/Settings/Radial/Leave.png"
vrSlotImages[5].iconPosition = UDim2.new(0.5,-20,1,-58)
vrSlotImages[5].iconSize = UDim2.new(0,55,0,46)
vrSlotImages[6].icon = "rbxasset://textures/ui/VR/Radial/Icons/Backpack.png"
vrSlotImages[6].iconPosition = UDim2.new(0.29, -50, 0.71, 4)
vrSlotImages[6].iconSize = UDim2.new(0, 42, 0, 56)
vrSlotImages[7].icon = "rbxasset://textures/ui/VR/Radial/Icons/2DUI.png"
vrSlotImages[7].iconPosition = UDim2.new(0, 10, 0.5, -25)
vrSlotImages[7].iconSize = UDim2.new(0, 50, 0, 50)
vrSlotImages[8].icon = "rbxasset://textures/ui/Settings/Radial/Chat.png"
vrSlotImages[8].iconPosition = UDim2.new(0.29, -60, 0.29, -52)
vrSlotImages[8].iconSize = UDim2.new(0, 56, 0, 53)

local radialButtonLayout = {
	PlayerList 		= { Range = { Begin = 36, 	End = 96 } },
	Emotes			= { Range = { Begin = 96, End = 156 } },
	LeaveGame 		= { Range = { Begin = 156,	End = 216 } },
	Backpack 		= { Range = { Begin = 216,	End = 276 } },
	Chat 			= { Range = { Begin = 276, 	End = 336 } },
	Settings 		= { Range = { Begin = 336, 	End = 36 } },
}
local vrButtonLayout = {
	PlayerList 		= { Range = { Begin = 22.5,  End = 67.5 } },
	Recenter 		= { Range = { Begin = 67.5,  End = 112.5 } },
	Emotes			= { Range = { Begin = 112.5, End = 157.5 } },
	LeaveGame 		= { Range = { Begin = 157.5, End = 202.5 } },
	Backpack 		= { Range = { Begin = 202.5, End = 247.5 } },
	ToggleUI 		= { Range = { Begin = 247.5, End = 292.5 } },
	Chat 			= { Range = { Begin = 292.5, End = 337.5 } },
	Settings 		= { Range = { Begin = 337.5, End = 22.5 } }
}

local freezeControllerActionName = "doNothingAction"
local radialSelectActionName = "RadialSelectAction"
local thumbstick2RadialActionName = "Thumbstick2RadialAction"
local radialCancelActionName = "RadialSelectCancel"
local radialAcceptActionName = "RadialSelectAccept"
local toggleMenuActionName = "RBXToggleMenuAction"

local noOpFunc = function() end
local doGamepadMenuButton = nil
local toggleCoreGuiRadial = nil

local function getSelectedObjectFromAngle(angle)
	local closest = nil
	local closestDistance = 30 -- threshold of 30 for selecting the closest radial button
	local currentLayout = VRService.VREnabled and vrButtonLayout or radialButtonLayout
	for radialKey, buttonLayout in pairs(currentLayout) do
		if radialButtons[gamepadSettingsFrame[radialKey]]["Disabled"] == false then
			--Check for exact match
			if buttonLayout.Range.Begin < buttonLayout.Range.End then
				if angle > buttonLayout.Range.Begin and angle <= buttonLayout.Range.End then
					return gamepadSettingsFrame[radialKey]
				end
			else
				if angle > buttonLayout.Range.Begin or angle <= buttonLayout.Range.End then
					return gamepadSettingsFrame[radialKey]
				end
			end
			--Check if this is the closest button so far
			local distanceBegin = math.min(math.abs((buttonLayout.Range.Begin + 360) - angle), math.abs(buttonLayout.Range.Begin - angle))
			local distanceEnd = math.min(math.abs((buttonLayout.Range.End + 360) - angle), math.abs(buttonLayout.Range.End - angle))
			local distance = math.min(distanceBegin, distanceEnd)
			if distance < closestDistance then
				closestDistance = distance
				closest = gamepadSettingsFrame[radialKey]
			end
		end
	end
	return closest
end

local function setSelectedRadialButton(selectedObject)
	for button, buttonTable in pairs(radialButtons) do
		local isVisible = (button == selectedObject)
		button:FindFirstChild("Selected").Visible = isVisible
		button:FindFirstChild("RadialLabel").Visible = isVisible
		button:FindFirstChild("RadialBackground").Visible = isVisible

		if VRService.VREnabled then
			button.ImageTransparency = isVisible and 1 or 0
		end
	end
end

local function activateSelectedRadialButton()
	for button, buttonTable in pairs(radialButtons) do
		if button:FindFirstChild("Selected").Visible then
			buttonTable["Function"]()
			return true
		end
	end

	return false
end

local function radialSelectAccept(name, state, input)
	if gamepadSettingsFrame.Visible and state == Enum.UserInputState.Begin then
		activateSelectedRadialButton()
	end
end

local function radialSelectCancel(name, state, input)
	if gamepadSettingsFrame.Visible and state == Enum.UserInputState.Begin then
		toggleCoreGuiRadial()
	end
end

local D_PAD_VR_DIRS = {
	[Enum.KeyCode.DPadUp] = Vector2.new(0, 1),
	[Enum.KeyCode.DPadDown] = Vector2.new(0, -1),
	[Enum.KeyCode.DPadRight] = Vector2.new(1, 0),
	[Enum.KeyCode.DPadLeft] = Vector2.new(-1, 0)
}

local function radialSelect(name, state, input)
	local inputVector = Vector2.new(0, 0)

	if input.KeyCode == Enum.KeyCode.Thumbstick1 then
		inputVector = Vector2.new(input.Position.x, input.Position.y)
	elseif input.KeyCode == Enum.KeyCode.DPadUp or input.KeyCode == Enum.KeyCode.DPadDown or input.KeyCode == Enum.KeyCode.DPadLeft or input.KeyCode == Enum.KeyCode.DPadRight then
		local D_PAD_BUTTONS = {
			[Enum.KeyCode.DPadUp] = false;
			[Enum.KeyCode.DPadDown] = false;
			[Enum.KeyCode.DPadLeft] = false;
			[Enum.KeyCode.DPadRight] = false;
		}

		--set D_PAD_BUTTONS status: button down->true, button up->false
		local gamepadState = InputService:GetGamepadState(input.UserInputType)
		for index, value in ipairs(gamepadState) do
			if value.KeyCode == Enum.KeyCode.DPadUp or value.KeyCode == Enum.KeyCode.DPadDown or value.KeyCode == Enum.KeyCode.DPadLeft or value.KeyCode == Enum.KeyCode.DPadRight then
				D_PAD_BUTTONS[value.KeyCode] = (value.UserInputState == Enum.UserInputState.Begin)
			end
		end

		if VRService.VREnabled then
			for index, value in pairs(D_PAD_BUTTONS) do
				if value then
					inputVector = inputVector + D_PAD_VR_DIRS[index]
				end
			end
		else
			if D_PAD_BUTTONS[Enum.KeyCode.DPadUp] or D_PAD_BUTTONS[Enum.KeyCode.DPadDown] then
				inputVector = D_PAD_BUTTONS[Enum.KeyCode.DPadUp] and Vector2.new(0, 1) or Vector2.new(0, -1)
				if D_PAD_BUTTONS[Enum.KeyCode.DPadLeft] then
					inputVector = Vector2.new(-1, inputVector.Y)
				elseif D_PAD_BUTTONS[Enum.KeyCode.DPadRight] then
					inputVector = Vector2.new(1, inputVector.Y)
				end
			end
		end

		inputVector = inputVector.unit
	end

	local selectedObject = nil

	if inputVector.magnitude > 0.8 then

		local angle =  math.deg(math.atan2(inputVector.X, inputVector.Y))
		if angle < 0 then
			angle = angle + 360
		end

		selectedObject = getSelectedObjectFromAngle(angle)

		setSelectedRadialButton(selectedObject)
	end
end

local function unbindAllRadialActions()
	GuiService.CoreGuiNavigationEnabled = true

	ContextActionService:UnbindCoreAction(radialSelectActionName)
	ContextActionService:UnbindCoreAction(radialCancelActionName)
	ContextActionService:UnbindCoreAction(radialAcceptActionName)
	ContextActionService:UnbindCoreAction(freezeControllerActionName)
	ContextActionService:UnbindCoreAction(thumbstick2RadialActionName)
	ContextActionService:UnbindCoreAction(radialAcceptActionName .. "VR")
end

local function bindAllRadialActions()
	GuiService.CoreGuiNavigationEnabled = false

	ContextActionService:BindCoreAction(freezeControllerActionName, noOpFunc, false, Enum.UserInputType.Gamepad1)
	ContextActionService:BindCoreAction(radialAcceptActionName, radialSelectAccept, false, Enum.KeyCode.ButtonA)
	ContextActionService:BindCoreAction(radialCancelActionName, radialSelectCancel, false, Enum.KeyCode.ButtonB)
	ContextActionService:BindCoreAction(radialSelectActionName, radialSelect, false, Enum.KeyCode.Thumbstick1, Enum.KeyCode.DPadUp, Enum.KeyCode.DPadDown, Enum.KeyCode.DPadLeft, Enum.KeyCode.DPadRight)
	ContextActionService:BindCoreAction(thumbstick2RadialActionName, noOpFunc, false, Enum.KeyCode.Thumbstick2)
	ContextActionService:BindCoreAction(toggleMenuActionName, doGamepadMenuButton, false, Enum.KeyCode.ButtonStart)

	if VRService.VREnabled then
		ContextActionService:BindCoreAction(radialAcceptActionName .. "VR", radialSelectAccept, false, Enum.KeyCode.ButtonR2)
	end
end

local function setOverrideMouseIconBehavior(override)
	if override then
		if InputService:GetLastInputType() == Enum.UserInputType.Gamepad1 then
			InputService.OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.ForceHide
		else
			InputService.OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.ForceShow
		end
	else
		InputService.OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.None
	end
end

toggleCoreGuiRadial = function(goingToSettings)
	isVisible = not gamepadSettingsFrame.Visible

	updateGuiVisibility()

	if isVisible then
		setOverrideMouseIconBehavior(true)
		lastInputChangedCon = InputService.LastInputTypeChanged:connect(function() setOverrideMouseIconBehavior(true) end)

		gamepadSettingsFrame.Visible = isVisible

		local settingsChildren = gamepadSettingsFrame:GetChildren()
		for i = 1, #settingsChildren do
			if settingsChildren[i]:IsA("GuiButton") then
				utility:TweenProperty(settingsChildren[i], "ImageTransparency", 1, 0, 0.1, utility:GetEaseOutQuad(), nil)
			end
		end
		local desiredSize = VRService.VREnabled and VR_FRAME_SIZE or NON_VR_FRAME_SIZE
		gamepadSettingsFrame:TweenSizeAndPosition(desiredSize, UDim2.new(0.5,0,0.5,0),
													Enum.EasingDirection.Out, Enum.EasingStyle.Back, 0.18, true,
			function()
				updateGuiVisibility()
			end)
	else
		if lastInputChangedCon ~= nil then
			lastInputChangedCon:disconnect()
			lastInputChangedCon = nil
		end

		local settingsChildren = gamepadSettingsFrame:GetChildren()
		for i = 1, #settingsChildren do
			if settingsChildren[i]:IsA("GuiButton") then
				utility:TweenProperty(settingsChildren[i], "ImageTransparency", 0, 1, 0.1, utility:GetEaseOutQuad(), nil)
			end
		end
		local desiredSize = VRService.VREnabled and VR_FRAME_HIDDEN_SIZE or NON_VR_FRAME_HIDDEN_SIZE
		gamepadSettingsFrame:TweenSizeAndPosition(desiredSize, UDim2.new(0.5,0,0.5,0),
													Enum.EasingDirection.Out, Enum.EasingStyle.Sine, 0.1, true,
			function()
				if not VRService.VREnabled then
					setOverrideMouseIconBehavior(false)
				end
				if not isVisible then
					GuiService:SetMenuIsOpen(false, GAMEPAD_MENU_KEY)
				end
				gamepadSettingsFrame.Visible = isVisible

				if vrPanel then
					vrPanel:SetVisible(false)
				end
			end)
	end

	if isVisible then
		setSelectedRadialButton(nil)
		GuiService:SetMenuIsOpen(true, GAMEPAD_MENU_KEY)
		bindAllRadialActions()
	else
		unbindAllRadialActions()
	end

	return gamepadSettingsFrame.Visible
end

local function setButtonEnabled(button, enabled)
	if radialButtons[button]["Disabled"] == not enabled then return end

	if button:FindFirstChild("Selected").Visible == true then
		setSelectedRadialButton(nil)
	end

	local vrEnabled = VRService.VREnabled

	if enabled then
		if vrEnabled then
			button.Image = vrSlotBackgroundImage
		else
			button.Image = string.gsub(button.Image, "rbxasset://textures/ui/Settings/Radial/Empty", "rbxasset://textures/ui/Settings/Radial/")
		end
		button.ImageTransparency = 0
		button.RadialIcon.ImageTransparency = 0
	else
		if vrEnabled then
			button.Image = vrSlotDisabledImage
		else
			button.Image = string.gsub(button.Image, "rbxasset://textures/ui/Settings/Radial/", "rbxasset://textures/ui/Settings/Radial/Empty")
		end
		button.ImageTransparency = 0
		button.RadialIcon.ImageTransparency = 1
	end

	radialButtons[button]["Disabled"] = not enabled
end

local function setButtonVisible(button, visible)
	button.Visible = visible
	if not visible then
		setButtonEnabled(button, false)
	end
end

local kidSafeHint = nil;
local function getVRKidSafeHint()
	if not kidSafeHint then
		local text = businessLogic.GetVisibleAgeForPlayer(Players.LocalPlayer)
		local textSize = TextService:GetTextSize(text, 24, Enum.Font.SourceSansBold, Vector2.new(800,800))

		local bubble = utility:Create'ImageLabel'
		{
			Name = "AccountTypeBubble";
			Size = UDim2.new(0, textSize.x + 20, 0, 50);
			Image = "rbxasset://textures/ui/TopBar/Round.png";
			ScaleType = Enum.ScaleType.Slice;
			SliceCenter = Rect.new(10, 10, 10, 10);
			ImageTransparency = 0.3;
			BackgroundTransparency = 1;
		}
		bubble.Position = UDim2.new(0.5, -bubble.Size.X.Offset/2, 1, 10);

		local accountTypeTextLabel = utility:Create'TextLabel'{
			Name = "AccountTypeText";
			Text = text;
			Size = UDim2.new(1, -20, 1, -20);
			Position = UDim2.new(0, 10, 0, 10);
			Font = Enum.Font.SourceSansBold;
			FontSize = Enum.FontSize.Size24;
			BackgroundTransparency = 1;
			TextColor3 = Color3.new(1,1,1);
			TextYAlignment = Enum.TextYAlignment.Center;
			TextXAlignment = Enum.TextXAlignment.Center;
			Parent = bubble;
		}
		kidSafeHint = bubble
	end

	return kidSafeHint
end

local function toggleVR(vrEnabled)
	if vrEnabled then
		gamepadSettingsFrame.Size = VR_FRAME_SIZE

		vrPanel = Panel3D.Get("GamepadMenu")
		vrPanel:SetEnabled(true)
		vrPanel:SetVisible(false)
		vrPanel:SetCanFade(false)
		vrPanel:ResizeStuds(PANEL_SIZE_STUDS, PANEL_SIZE_STUDS, PANEL_RESOLUTION)
		vrPanel:SetType(Panel3D.Type.Standard, { CFrame = CFrame.new(0, 0, 0.5) })
		gamepadSettingsFrame.Parent = vrPanel:GetGUI()

		function vrPanel:OnUpdate(dt)
			if not vrPanel:IsVisible() then
				return
			end

			local lookAtPixel = vrPanel.lookAtPixel
			local lookAtScale = lookAtPixel / vrPanel.gui.AbsoluteSize
			local inputVector = (lookAtScale - Vector2.new(0.5, 0.5)) * 2

			if inputVector.magnitude > 0.4 and inputVector.magnitude < 0.8 then
				local angle = math.deg(math.atan2(inputVector.X, -inputVector.Y))
				if angle < 0 then
					angle = angle + 360
				end

				local button = getSelectedObjectFromAngle(angle)
				if button then
					setSelectedRadialButton(button)
				end
			end
		end

		for button, info in pairs(radialButtons) do
			if info.VRSlot then
				local slotImages = vrSlotImages[info.VRSlot]

				button.Parent = gamepadSettingsFrame
				button.Image = info.Disabled and slotImages.disabled or slotImages.background
				button.Rotation = slotImages.rotation
				button.RadialIcon.Image = slotImages.icon
				button.RadialIcon.Position = UDim2.new(0.5, 0, 0.09, 0)
				button.RadialIcon.AnchorPoint = Vector2.new(0.5, 0.5)
				button.RadialIcon.Size = slotImages.iconSize
				button.RadialIcon.Rotation = -slotImages.rotation
				button.RadialLabel.Rotation = -slotImages.rotation
				button.RadialLabel.AnchorPoint = Vector2.new(0.5, 0.5)
				button.RadialLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
				button.RadialBackground.Rotation = -slotImages.rotation
				button.RadialBackground.AnchorPoint = Vector2.new(0.5, 0.5)
				button.RadialBackground.Position = UDim2.new(0.5, 0, 0.5, 0)

				local selectedImage = button:FindFirstChild("Selected")
				if selectedImage then
					selectedImage.Image = slotImages.active
				end

				button.MouseFrame.Visible = false
			end
		end

		local healthbarFrame = utility:Create("Frame") {
			Parent = gamepadSettingsFrame,
			Position = UDim2.new(0.8, 0, 0, 0),
			Size = UDim2.new(0, 192, 0, 32),
			BackgroundTransparency = 1
		}

		local hint = getVRKidSafeHint()
		hint.Parent = gamepadSettingsFrame

		local chatButton = radialButtonsByName.Chat
		if chatButton then
			setButtonEnabled(chatButton, false)
		end
	else
		gamepadSettingsFrame.Size = NON_VR_FRAME_SIZE
		if vrPanel then
			vrPanel:SetEnabled(false)
		end
		vrPanel = nil
		for button, info in pairs(radialButtons) do
			if info.Slot then
				local backgroundImage, activeImage, iconImage, iconPosition, iconSize = getImagesForSlot(info.Slot)
				if info.Disabled then
					backgroundImage = string.gsub(backgroundImage, "rbxasset://textures/ui/Settings/Radial/", "rbxasset://textures/ui/Settings/Radial/Empty")
				end

				button.Image = backgroundImage
				button.Rotation = 0
				button.RadialIcon.Position = iconPosition
				button.RadialIcon.Size = iconSize
				button.RadialIcon.Image = iconImage
				button.RadialIcon.Rotation = 0
				button.RadialIcon.AnchorPoint = Vector2.new(0, 0)

				button.MouseFrame.Visible = true
			else
				button.Parent = nil
			end
		end
		if kidSafeHint then
			kidSafeHint.Parent = nil
		end

		local chatButton = radialButtonsByName.Chat
		if chatButton then
			setButtonEnabled(chatButton, not isTenFootInterface)
		end
	end

	if gamepadSettingsFrame.Visible then
		toggleCoreGuiRadial()
	end
end

local emptySelectedImageObject = utility:Create'ImageLabel'
{
	BackgroundTransparency = 1,
	Size = UDim2.new(1,0,1,0),
	Image = ""
};

local function createRadialButton(name, text, slot, vrSlot, disabled, coreGuiType, activateFunc)
	local slotImage, selectedSlotImage, slotIcon,
			slotIconPosition, slotIconSize, mouseFrameSize, mouseFramePos = getImagesForSlot(slot)

	local radialButton = utility:Create'ImageButton'
	{
		Name = name,
		Position = UDim2.new(0.5,0,0.5,0),
		Size = UDim2.new(1,0,1,0),
		AnchorPoint = Vector2.new(0.5, 0.5),
		BackgroundTransparency = 1,
		Image = slotImage,
		ZIndex = 2,
		SelectionImageObject = emptySelectedImageObject,
		Selectable = false,
		Parent = gamepadSettingsFrame
	};
	if disabled then
		radialButton.Image = string.gsub(radialButton.Image, "rbxasset://textures/ui/Settings/Radial/", "rbxasset://textures/ui/Settings/Radial/Empty")
	end

	local selectedRadial = utility:Create'ImageLabel'
	{
		Name = "Selected",
		Position = UDim2.new(0,0,0,0),
		Size = UDim2.new(1,0,1,0),
		BackgroundTransparency = 1,
		Image = selectedSlotImage,
		ZIndex = 2,
		Visible = false,
		Parent = radialButton
	};

	local radialIcon = utility:Create'ImageLabel'
	{
		Name = "RadialIcon",
		Position = slotIconPosition,
		Size = slotIconSize,
		BackgroundTransparency = 1,
		Image = slotIcon,
		ZIndex = 3,
		ImageTransparency = disabled and 1 or 0,
		Parent = radialButton
	};

	local nameLabel = utility:Create'TextLabel'
	{

		Size = UDim2.new(0,220,0,50),
		Position = UDim2.new(0.5, -110, 0.5, -25),
		BackgroundTransparency = 1,
		Text = text,
		Font = Enum.Font.SourceSansBold,
		FontSize = Enum.FontSize.Size14,
		TextColor3 = Color3.new(1,1,1),
		Name = "RadialLabel",
		Visible = false,
		ZIndex = 3,
		Parent = radialButton
	};
	if not smallScreen then
		nameLabel.FontSize = Enum.FontSize.Size36
		nameLabel.Size = UDim2.new(nameLabel.Size.X.Scale, nameLabel.Size.X.Offset, nameLabel.Size.Y.Scale, nameLabel.Size.Y.Offset + 4)
	end
	local nameBackgroundImage = utility:Create'ImageLabel'
	{
		Name = "RadialBackground",
		Size = nameLabel.Size,
		Position = nameLabel.Position + UDim2.new(0,0,0,2),
		BackgroundTransparency = 1,
		Image = "rbxasset://textures/ui/Settings/Radial/RadialLabel@2x.png",
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(24,4,130,42),
		ZIndex = 2,
		Parent = radialButton
	};

	local mouseFrame = utility:Create'ImageButton'
	{
		Name = "MouseFrame",
		Position = mouseFramePos,
		Size = mouseFrameSize,
		ZIndex = 3,
		BackgroundTransparency = 1,
		SelectionImageObject = emptySelectedImageObject,
		Parent = radialButton
	};

	mouseFrame.MouseEnter:connect(function()
		if not radialButtons[radialButton]["Disabled"] then
			setSelectedRadialButton(radialButton)
		end
	end)
	mouseFrame.MouseLeave:connect(function()
		setSelectedRadialButton(nil)
	end)

	mouseFrame.MouseButton1Click:connect(function()
		if selectedRadial.Visible then
			activateFunc()
		end
	end)

	radialButtons[radialButton] = { ["Function"] = activateFunc, ["Disabled"] = disabled, ["CoreGuiType"] = coreGuiType, ["Slot"] = slot, ["VRSlot"] = vrSlot }
	radialButtonsByName[name] = radialButton
	return radialButton
end

local function createGamepadMenuGui()
	--If we've already created the gamepadSettingsFrame, don't
	--do it again
	if gamepadSettingsFrame then
		return
	end

	gamepadSettingsFrame = utility:Create'Frame'
	{
		Name = "GamepadSettingsFrame",
		Position = UDim2.new(0.5,0,0.5,0),
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Size = NON_VR_FRAME_SIZE,
		AnchorPoint = Vector2.new(0.5, 0.5),
		Visible = false,
		Parent = GuiRoot
	};

	---------------------------------
	-------- Settings Menu ----------
	local function settingsFunc()
		toggleCoreGuiRadial(true)
		if isNewInGameMenuEnabled() then
			-- todo: move InGameMenu to a script global when removing isNewInGameMenuEnabled
			local InGameMenu = require(GuiRoot.Modules.InGameMenu)
			InGameMenu.openGameSettingsPage()
		else
			local MenuModule = require(GuiRoot.Modules.Settings.SettingsHub)
			MenuModule:SetVisibility(true, nil, MenuModule.Instance.GameSettingsPage, true, InGameMenuConstants.AnalyticsMenuOpenTypes.SettingsTriggered)
		end
	end
	local settingsRadial = createRadialButton("Settings", "Settings", 1, 1, false, nil, settingsFunc)
	settingsRadial.Parent = gamepadSettingsFrame

	---------------------------------
	-------- Player List ------------
	local function playerListFunc()
		if VRService.VREnabled then
			toggleCoreGuiRadial(true)
			if isNewInGameMenuEnabled() then
				-- todo: move InGameMenu to a script global when removing isNewInGameMenuEnabled
				local InGameMenu = require(GuiRoot.Modules.InGameMenu)
				InGameMenu.openPlayersPage()
			else
				local MenuModule = require(GuiRoot.Modules.Settings.SettingsHub)
				MenuModule:SetVisibility(true, nil, MenuModule.Instance.PlayersPage, true, InGameMenuConstants.AnalyticsMenuOpenTypes.PlayersTriggered)
			end
		else
			local PlayerListMaster = require(GuiRoot.Modules.PlayerList.PlayerListManager)
			if not PlayerListMaster:GetVisibility() then
				toggleCoreGuiRadial(true)
				PlayerListMaster:SetVisibility(true)
			else
				toggleCoreGuiRadial()
			end
		end
	end
	local playerListRadial = createRadialButton("PlayerList", "Playerlist", 2, 2, not StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.PlayerList), Enum.CoreGuiType.PlayerList, playerListFunc)
	playerListRadial.Parent = gamepadSettingsFrame

	---------------------------------
	-------- Emotes Menu ------------
	local toggleEmotesFunc = function()
		toggleCoreGuiRadial()
		GuiService.MenuClosed:Wait()

		if EmotesModule:isOpen() then
			EmotesModule:close()
		else
			EmotesModule:open()
		end
	end

	local emotesRadialInfo = {
		Name = "Emotes",
		Text = "Emotes",
		Slot = 3,
		VrSlot = 4,
		Disabled = not StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.EmotesMenu),
		CoreGuiType = Enum.CoreGuiType.EmotesMenu,
		ActivateFunc = toggleEmotesFunc,
	}

	local emotesRadial = createRadialButton(
		emotesRadialInfo.Name,
		emotesRadialInfo.Text,
		emotesRadialInfo.Slot,
		emotesRadialInfo.VrSlot,
		emotesRadialInfo.Disabled,
		emotesRadialInfo.CoreGuiType,
		emotesRadialInfo.ActivateFunc
	)

	emotesRadial.Parent = gamepadSettingsFrame

	---------------------------------
	---------- Leave Game -----------
	local function leaveGameFunc()
		toggleCoreGuiRadial(true)
		local MenuModule = require(GuiRoot.Modules.Settings.SettingsHub)
		MenuModule:SetVisibility(true, false, MenuModule.Instance.LeaveGamePage, true, InGameMenuConstants.AnalyticsMenuOpenTypes.LeaveGame)
	end

	local leaveGameText = "Leave Game"
	if FFlagUpdateSettingsHubGameText then
		leaveGameText = RobloxTranslator:FormatByKey("InGame.HelpMenu.Leave")
	end

	local leaveGameRadial = createRadialButton("LeaveGame", leaveGameText, 4, 5, false, nil, leaveGameFunc)
	leaveGameRadial.Parent = gamepadSettingsFrame

	---------------------------------
	---------- Backpack -------------
	local function backpackFunc()
		toggleCoreGuiRadial(true)
		local BackpackModule = require(GuiRoot.Modules.BackpackScript)
		BackpackModule:OpenClose()
	end
	local backpackRadial = createRadialButton("Backpack", "Backpack", 5, 6, not StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.Backpack), Enum.CoreGuiType.Backpack, backpackFunc)
	backpackRadial.Parent = gamepadSettingsFrame

	---------------------------------
	------------ Chat ---------------
	local function chatFunc()
		toggleCoreGuiRadial()
		local ChatModule = require(GuiRoot.Modules.ChatSelector)
		ChatModule:ToggleVisibility()
	end
	local chatRadial = createRadialButton("Chat", "Chat", 6, 8, not StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.Chat), Enum.CoreGuiType.Chat, chatFunc)
	if isTenFootInterface then
		setButtonEnabled(chatRadial, false)
	end
	chatRadial.Parent = gamepadSettingsFrame

	--------------------------------
	------ Recenter (VR ONLY) ------
	local function recenterFunc()
		toggleCoreGuiRadial()
		local RecenterModule = require(GuiRoot.Modules.VR.Recenter)
		RecenterModule:SetVisible(not RecenterModule:IsVisible())
	end
	local recenterRadial = createRadialButton("Recenter", "Recenter", nil, 3, false, nil, recenterFunc)

	--------------------------------
	------- 2D UI (VR ONLY) --------
	local function toggleUIFunc()
		toggleCoreGuiRadial()
		local UserGuiModule = require(GuiRoot.Modules.VR.UserGui)
		UserGuiModule:SetVisible(not UserGuiModule:IsVisible())
	end
	local toggleUIRadial = createRadialButton("ToggleUI", "Toggle UI", nil, 7, false, nil, toggleUIFunc)


	---------------------------------
	--------- Close Button ----------
	local closeHintFrame = utility:Create'Frame'
	{
		Name = "CloseHintFrame",
		Position = UDim2.new(1,10,1,10),
		Size = UDim2.new(0, 103, 0, 60),
		AnchorPoint = Vector2.new(0.5, 0.5),
		BackgroundTransparency = 1,
		Parent = gamepadSettingsFrame
	}
	local closeHintImage = utility:Create'ImageLabel'
	{
		Name = "CloseHint",
		Position = UDim2.new(0,0,0.5,0),
		Size = UDim2.new(1,0,1,0),
		AnchorPoint = Vector2.new(0, 0.5),
		BackgroundTransparency = 1,
		Image = "rbxasset://textures/ui/Settings/Help/BButtonDark.png",
		Parent = closeHintFrame
	}
	utility:Create'UIAspectRatioConstraint'
	{
		AspectRatio = 1,
		Parent = closeHintImage
	}
	if isTenFootInterface then
		closeHintImage.Image = "rbxasset://textures/ui/Settings/Help/BButtonDark@2x.png"
		closeHintFrame.Size = UDim2.new(0,133,0,90)
	end

	local closeHintText = utility:Create'TextLabel'
	{
		Name = "closeHintText",
		Position = UDim2.new(1,0,0.5,0),
		Size = UDim2.new(0,43,0,24),
		AnchorPoint = Vector2.new(1, 0.5),
		Font = Enum.Font.SourceSansBold,
		FontSize = Enum.FontSize.Size24,
		BackgroundTransparency = 1,
		Text = "Back",
		TextColor3 = Color3.new(1,1,1),
		TextXAlignment = Enum.TextXAlignment.Left,
		Parent = closeHintFrame
	}
	if isTenFootInterface then
		closeHintText.FontSize = Enum.FontSize.Size36
	end

	--Remove with FIntNewInGameMenuPercentRollout
	------------------------------------------
	--------- Stop Recording Button ----------
	--todo: enable this when recording is not a verb
	--[[local stopRecordingImage = utility:Create'ImageLabel'
	{
		Name = "StopRecordingHint",
		Position = UDim2.new(0,-100,1,10),
		Size = UDim2.new(0,61,0,61),
		BackgroundTransparency = 1,
		Image = "rbxasset://textures/ui/Settings/Help/YButtonDark.png",
		Visible = recordPage:IsRecording(),
		Parent = gamepadSettingsFrame
	}
	local stopRecordingText = utility:Create'TextLabel'
	{
		Name = "stopRecordingHintText",
		Position = UDim2.new(1,10,0.5,-12),
		Size = UDim2.new(0,43,0,24),
		Font = Enum.Font.SourceSansBold,
		FontSize = Enum.FontSize.Size24,
		BackgroundTransparency = 1,
		Text = "Stop Recording",
		TextColor3 = Color3.new(1,1,1),
		TextXAlignment = Enum.TextXAlignment.Left,
		Parent = stopRecordingImage
	}

	recordPage.RecordingChanged:connect(function(isRecording)
		stopRecordingImage.Visible = isRecording
	end)]]

	GuiService:AddSelectionParent(HttpService:GenerateGUID(false), gamepadSettingsFrame)

	gamepadSettingsFrame:GetPropertyChangedSignal("Visible"):connect(function()
		if not gamepadSettingsFrame.Visible then
			unbindAllRadialActions()
		end
	end)

	VRService:GetPropertyChangedSignal("VREnabled"):connect(function() toggleVR(VRService.VREnabled) end)
	toggleVR(VRService.VREnabled)
end

local function isCoreGuiDisabled()
	for _, enumItem in pairs(Enum.CoreGuiType:GetEnumItems()) do
		if StarterGui:GetCoreGuiEnabled(enumItem) then
			return false
		end
	end

	return true
end

function updateGuiVisibility()
	if VRService.VREnabled and vrPanel and isVisible then
		vrPanel:SetVisible(true, true)
	end

	local children = gamepadSettingsFrame:GetChildren()
	for i = 1, #children do
		if children[i]:FindFirstChild("RadialIcon") then
			children[i].RadialIcon.Visible = isVisible
		end
		if children[i]:FindFirstChild("RadialLabel") and not isVisible then
			children[i].RadialLabel.Visible = isVisible
		end
		if children[i]:FindFirstChild("RadialBackground") and not isVisible then
			children[i].RadialBackground.Visible = isVisible
		end
	end
end

doGamepadMenuButton = function(name, state, input)
	if state ~= Enum.UserInputState.Begin then return end

	if game.IsLoaded then
		if not toggleCoreGuiRadial() then
			unbindAllRadialActions()
		end
	end
end

if InputService:GetGamepadConnected(Enum.UserInputType.Gamepad1) then
	createGamepadMenuGui()
else
	InputService.GamepadConnected:connect(function(gamepadEnum)
		if gamepadEnum == Enum.UserInputType.Gamepad1 then
			createGamepadMenuGui()
		end
	end)
end

local defaultLoadingGuiRemovedConnection = nil
local loadedConnection = nil
local isLoadingGuiRemoved = false
local isPlayerAdded = false

local function updateRadialMenuActionBinding()
	if isLoadingGuiRemoved and isPlayerAdded then
		createGamepadMenuGui()
		ContextActionService:BindCoreAction(toggleMenuActionName, doGamepadMenuButton, false, Enum.KeyCode.ButtonStart)
	end
end

local function handlePlayerAdded()
	loadedConnection:disconnect()
	isPlayerAdded = true
	updateRadialMenuActionBinding()
end

loadedConnection = Players.PlayerAdded:connect(
	function(plr)
		if Players.LocalPlayer and plr == Players.LocalPlayer then
			handlePlayerAdded()
		end
	end
)

if Players.LocalPlayer then
	handlePlayerAdded()
end

local function handleDefaultLoadingGuiRemoved()
	if defaultLoadingGuiRemovedConnection then
		defaultLoadingGuiRemovedConnection:disconnect()
	end
	isLoadingGuiRemoved = true
	updateRadialMenuActionBinding()
end

if game:GetService("ReplicatedFirst"):IsDefaultLoadingGuiRemoved() then
	handleDefaultLoadingGuiRemoved()
elseif RunService:IsClient() and RunService:IsServer() then
	handleDefaultLoadingGuiRemoved()
else
	defaultLoadingGuiRemovedConnection = game:GetService("ReplicatedFirst").DefaultLoadingGuiRemoved:connect(handleDefaultLoadingGuiRemoved)
end

-- some buttons always show/hide depending on platform
local function canChangeButtonVisibleState(buttonType)
	if isTenFootInterface then
		if buttonType == Enum.CoreGuiType.Chat or buttonType == Enum.CoreGuiType.PlayerList then
			return false
		end
	end

	if VRService.VREnabled then
		if buttonType == Enum.CoreGuiType.Chat then
			return false
		end
	end

	if buttonType == Enum.CoreGuiType.EmotesMenu then
		return false
	end

	return true
end

StarterGui.CoreGuiChangedSignal:connect(function(coreGuiType, enabled)
	for button, buttonTable in pairs(radialButtons) do
		local buttonType = buttonTable["CoreGuiType"]
		if buttonType then
			if coreGuiType == buttonType or coreGuiType == Enum.CoreGuiType.All then
				if canChangeButtonVisibleState(buttonType) then
					setButtonEnabled(button, enabled)
				end
			end
		end
	end
end)

local function onEmotesMenuVisibilityChangedSignal(emotesMenuVisible)
	for button, buttonTable in pairs(radialButtons) do
		local buttonType = buttonTable["CoreGuiType"]
		if buttonType and buttonType == Enum.CoreGuiType.EmotesMenu then
			setButtonEnabled(button, emotesMenuVisible)
		end
	end
end

EmotesModule.MenuVisibilityChanged.Event:Connect(onEmotesMenuVisibilityChangedSignal)
onEmotesMenuVisibilityChangedSignal(EmotesModule.MenuIsVisible)