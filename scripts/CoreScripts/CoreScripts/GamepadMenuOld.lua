--[[
		Filename: GamepadMenu.lua
		Written by: jeditkacheff
		Version 1.1
		Description: Controls the radial menu that appears when pressing menu button on gamepad
--]]

--NOTICE: This file has been branched! If you're implementing changes in this file, please consider also implementing them in the other
--version.

--Handle branching early so we do as little work as possible:
local useNewRadialMenuSuccess, useNewRadialMenuValue = pcall(function() return settings():GetFFlag("UseNewRadialMenu") end)
local FFlagUseNewRadialMenu = useNewRadialMenuSuccess and useNewRadialMenuValue
if FFlagUseNewRadialMenu then
	--This file is now inactive because the flag IS on
	return
end

local fixGamePadPlayerlistSuccess, fixGamePadPlayerlistValue = pcall(function() return settings():GetFFlag("FixGamePadPlayerlist") end)
local fixGamePadPlayerlist = fixGamePadPlayerlistSuccess and fixGamePadPlayerlistValue

--[[ SERVICES ]]
local GuiService = game:GetService('GuiService')
local CoreGuiService = game:GetService('CoreGui')
local InputService = game:GetService('UserInputService')
local ContextActionService = game:GetService('ContextActionService')
local HttpService = game:GetService('HttpService')
local StarterGui = game:GetService('StarterGui')
local Players = game:GetService('Players')
local GuiRoot = CoreGuiService:WaitForChild('RobloxGui')
local TextService = game:GetService('TextService')
--[[ END OF SERVICES ]]

--[[ MODULES ]]
local tenFootInterface = require(GuiRoot.Modules.TenFootInterface)
local utility = require(GuiRoot.Modules.Settings.Utility)
local recordPage = require(GuiRoot.Modules.Settings.Pages.Record)
local businessLogic = require(GuiRoot.Modules.BusinessLogic)

--[[ VARIABLES ]]
local gamepadSettingsFrame = nil
local isVisible = false
local smallScreen = utility:IsSmallTouchScreen()
local isTenFootInterface = tenFootInterface:IsEnabled()
local radialButtons = {}
local lastInputChangedCon = nil

--[[ Fast Flags ]]--
local getRadialMenuAfterLoadingScreen, radialMenuAfterLoadingScreenValue = pcall(function() return settings():GetFFlag("RadialMenuAfterLoadingScreen2") end)
local radialMenuAfterLoadingScreen = getRadialMenuAfterLoadingScreen and radialMenuAfterLoadingScreenValue

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
									"rbxasset://textures/ui/Settings/Radial/Alert.png",
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

	return "", "", UDim2.new(0,0,0,0), UDim2.new(0,0,0,0)
end

local function setSelectedRadialButton(selectedObject)
	for button, buttonTable in pairs(radialButtons) do
		local isVisible = (button == selectedObject)
		button:FindFirstChild("Selected").Visible = isVisible
		button:FindFirstChild("RadialLabel").Visible = isVisible
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

local function setButtonEnabled(button, enabled)
	if radialButtons[button]["Disabled"] == not enabled then return end

	if button:FindFirstChild("Selected").Visible == true then
		setSelectedRadialButton(nil)
	end

	if enabled then
		button.Image = string.gsub(button.Image, "rbxasset://textures/ui/Settings/Radial/Empty", "rbxasset://textures/ui/Settings/Radial/")
		button.ImageTransparency = 0
		button.RadialIcon.ImageTransparency = 0
	else
		button.Image = string.gsub(button.Image, "rbxasset://textures/ui/Settings/Radial/", "rbxasset://textures/ui/Settings/Radial/Empty")
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
			Parent = container;
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

local function enableVR()
	local visibleButtons = {
		Settings = true, LeaveGame = true,
		PlayerList = false, Notifications = false,
		Backpack = false, Chat = false
	}
	for button, _ in pairs(radialButtons) do
		if visibleButtons[button.Name] ~= nil then
			setButtonVisible(button, visibleButtons[button.Name])
		end
	end

	local hint = getVRKidSafeHint()
	hint.Parent = gamepadSettingsFrame
end

local function disableVR()
	local hint = getVRKidSafeHint()
	hint.Parent = nil
end

local emptySelectedImageObject = utility:Create'ImageLabel'
{
	BackgroundTransparency = 1,
	Size = UDim2.new(1,0,1,0),
	Image = ""
};

local function createRadialButton(name, text, slot, disabled, coreGuiType, activateFunc)
	local slotImage, selectedSlotImage, slotIcon,
			slotIconPosition, slotIconSize, mouseFrameSize, mouseFramePos = getImagesForSlot(slot)

	local radialButton = utility:Create'ImageButton'
	{
		Name = name,
		Position = UDim2.new(0,0,0,0),
		Size = UDim2.new(1,0,1,0),
		BackgroundTransparency = 1,
		Image = slotImage,
		ZIndex = 2,
		SelectionImageObject = emptySelectedImageObject,
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
		Name = text .. "BackgroundImage",
		Size = UDim2.new(1,0,1,0),
		Position = UDim2.new(0,0,0,2),
		BackgroundTransparency = 1,
		Image = "rbxasset://textures/ui/Settings/Radial/RadialLabel@2x.png",
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(24,4,130,42),
		ZIndex = 2,
		Parent = nameLabel
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

	radialButtons[radialButton] = {["Function"] = activateFunc, ["Disabled"] = disabled, ["CoreGuiType"] = coreGuiType}

	return radialButton
end

local function createGamepadMenuGui()
	gamepadSettingsFrame = utility:Create'Frame'
	{
		Name = "GamepadSettingsFrame",
		Position = UDim2.new(0.5,-51,0.5,-51),
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Size = UDim2.new(0,102,0,102),
		Visible = false,
		Parent = GuiRoot
	};

	---------------------------------
	-------- Settings Menu ----------
	local settingsFunc = function()
		toggleCoreGuiRadial(true)
		local MenuModule = require(GuiRoot.Modules.Settings.SettingsHub)
		MenuModule:SetVisibility(true, nil, nil, true)
	end
	local settingsRadial = createRadialButton("Settings", "Settings", 1, false, nil, settingsFunc)
	settingsRadial.Parent = gamepadSettingsFrame

	---------------------------------
	-------- Player List ------------
	local playerListFunc = function()
		if not fixGamePadPlayerlist then
			toggleCoreGuiRadial(true)
			local PlayerListModule = require(GuiRoot.Modules.PlayerlistModule)
			if not PlayerListModule:IsOpen() then
				PlayerListModule:ToggleVisibility()
			end
		else
			local PlayerListModule = require(GuiRoot.Modules.PlayerlistModule)
			if not PlayerListModule:IsOpen() then
				toggleCoreGuiRadial(true)
				PlayerListModule:ToggleVisibility()
			else
				toggleCoreGuiRadial()
			end
		end
	end
	local playerListRadial = createRadialButton("PlayerList", "Playerlist", 2, not StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.PlayerList), Enum.CoreGuiType.PlayerList, playerListFunc)
	playerListRadial.Parent = gamepadSettingsFrame

	---------------------------------
	-------- Notifications ----------
	local gamepadNotifications = Instance.new("BindableEvent")
	gamepadNotifications.Name = "GamepadNotifications"
	gamepadNotifications.Parent = script
	local notificationsFunc = function()
		toggleCoreGuiRadial()
		gamepadNotifications:Fire(true)
	end
	local notificationsRadial = createRadialButton("Notifications", "Notifications", 3, false, nil, notificationsFunc)
	if isTenFootInterface then
		setButtonEnabled(notificationsRadial, false)
	end
	notificationsRadial.Parent = gamepadSettingsFrame

	---------------------------------
	---------- Leave Game -----------
	local leaveGameFunc = function()
		toggleCoreGuiRadial(true)
		local MenuModule = require(GuiRoot.Modules.Settings.SettingsHub)
		MenuModule:SetVisibility(true, false, require(GuiRoot.Modules.Settings.Pages.LeaveGame), true)
	end
	local leaveGameRadial = createRadialButton("LeaveGame", "Leave Game", 4, false, nil, leaveGameFunc)
	leaveGameRadial.Parent = gamepadSettingsFrame

	---------------------------------
	---------- Backpack -------------
	local backpackFunc = function()
		toggleCoreGuiRadial(true)
		local BackpackModule = require(GuiRoot.Modules.BackpackScript)
		BackpackModule:OpenClose()
	end
	local backpackRadial = createRadialButton("Backpack", "Backpack", 5, not StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.Backpack), Enum.CoreGuiType.Backpack, backpackFunc)
	backpackRadial.Parent = gamepadSettingsFrame

	---------------------------------
	------------ Chat ---------------
	local chatFunc = function()
		toggleCoreGuiRadial()
		local ChatModule = require(GuiRoot.Modules.ChatSelector)
		ChatModule:ToggleVisibility()
	end
	local chatRadial = createRadialButton("Chat", "Chat", 6, not StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.Chat), Enum.CoreGuiType.Chat, chatFunc)
	if isTenFootInterface then
		setButtonEnabled(chatRadial, false)
	end
	chatRadial.Parent = gamepadSettingsFrame


	---------------------------------
	--------- Close Button ----------
	local closeHintImage = utility:Create'ImageLabel'
	{
		Name = "CloseHint",
		Position = UDim2.new(1,10,1,10),
		Size = UDim2.new(0,60,0,60),
		BackgroundTransparency = 1,
		Image = "rbxasset://textures/ui/Settings/Help/BButtonDark.png",
		Parent = gamepadSettingsFrame
	}
	if isTenFootInterface then
		closeHintImage.Image = "rbxasset://textures/ui/Settings/Help/BButtonDark@2x.png"
		closeHintImage.Size =  UDim2.new(0,90,0,90)
	end

	local closeHintText = utility:Create'TextLabel'
	{
		Name = "closeHintText",
		Position = UDim2.new(1,10,0.5,-12),
		Size = UDim2.new(0,43,0,24),
		Font = Enum.Font.SourceSansBold,
		FontSize = Enum.FontSize.Size24,
		BackgroundTransparency = 1,
		Text = "Back",
		TextColor3 = Color3.new(1,1,1),
		TextXAlignment = Enum.TextXAlignment.Left,
		Parent = closeHintImage
	}
	if isTenFootInterface then
		closeHintText.FontSize = Enum.FontSize.Size36
	end

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

	gamepadSettingsFrame.Changed:connect(function(prop)
		if prop == "Visible" then
			if not gamepadSettingsFrame.Visible then
				unbindAllRadialActions()
			end
		end
	end)

	local function onVREnabled(prop)
		if prop == "VREnabled" then
			if InputService.VREnabled then
				enableVR()
			else
				disableVR()
			end
		end
	end
	InputService.Changed:connect(onVREnabled)
	onVREnabled("VREnabled")

end

local function isCoreGuiDisabled()
	for _, enumItem in pairs(Enum.CoreGuiType:GetEnumItems()) do
		if StarterGui:GetCoreGuiEnabled(enumItem) then
			return false
		end
	end

	return true
end

local function setupGamepadControls()
	local freezeControllerActionName = "doNothingAction"
	local radialSelectActionName = "RadialSelectAction"
	local thumbstick2RadialActionName = "Thumbstick2RadialAction"
	local radialCancelActionName = "RadialSelectCancel"
	local radialAcceptActionName = "RadialSelectAccept"
	local toggleMenuActionName = "RBXToggleMenuAction"

	local noOpFunc = function() end
	local doGamepadMenuButton = nil

	function unbindAllRadialActions()
		local success = pcall(function() GuiService.CoreGuiNavigationEnabled = true end)
		if not success then
			GuiService.GuiNavigationEnabled = true
		end

		ContextActionService:UnbindCoreAction(radialSelectActionName)
		ContextActionService:UnbindCoreAction(radialCancelActionName)
		ContextActionService:UnbindCoreAction(radialAcceptActionName)
		ContextActionService:UnbindCoreAction(freezeControllerActionName)
		ContextActionService:UnbindCoreAction(thumbstick2RadialActionName)
	end

	local radialButtonLayout = {	PlayerList = 	{
														Range = {	Begin = 36,
																	End = 96
																}
													},
									Notifications = {
														Range = {	Begin = 96,
																	End = 156
																}
													},
									LeaveGame = 	{
														Range = {	Begin = 156,
																	End = 216
																}
													},
									Backpack = 		{
														Range = {	Begin = 216,
																	End = 276
																}
													},
									Chat = 			{
														Range = {	Begin = 276,
																	End = 336
																}
													},
									Settings = 		{
														Range = {	Begin = 336,
																	End = 36
																}
													},
								}


	local function getSelectedObjectFromAngle(angle, depth)
		local closest = nil
		local closestDistance = 30 -- threshold of 30 for selecting the closest radial button
		for radialKey, buttonLayout in pairs(radialButtonLayout) do
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

	local radialSelect = function(name, state, input)
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

			if D_PAD_BUTTONS[Enum.KeyCode.DPadUp] or D_PAD_BUTTONS[Enum.KeyCode.DPadDown] then
				inputVector = D_PAD_BUTTONS[Enum.KeyCode.DPadUp] and Vector2.new(0, 1) or Vector2.new(0, -1)
				if D_PAD_BUTTONS[Enum.KeyCode.DPadLeft] then
					inputVector = Vector2.new(-1, inputVector.Y)
				elseif D_PAD_BUTTONS[Enum.KeyCode.DPadRight] then
					inputVector = Vector2.new(1, inputVector.Y)
				end
			end

			inputVector = inputVector.unit
		end

		local selectedObject = nil

		if inputVector.magnitude > 0.8 then

			local angle =  math.atan2(inputVector.X, inputVector.Y) * 180 / math.pi
			if angle < 0 then
				angle = angle + 360
			end

			selectedObject = getSelectedObjectFromAngle(angle)

			setSelectedRadialButton(selectedObject)
		end
	end

	local radialSelectAccept = function(name, state, input)
		if gamepadSettingsFrame.Visible and state == Enum.UserInputState.Begin then
			activateSelectedRadialButton()
		end
	end

	local radialSelectCancel = function(name, state, input)
		if gamepadSettingsFrame.Visible and state == Enum.UserInputState.Begin then
			toggleCoreGuiRadial()
		end
	end

	function setVisibility()
		local children = gamepadSettingsFrame:GetChildren()
		for i = 1, #children do
			if children[i]:FindFirstChild("RadialIcon") then
				children[i].RadialIcon.Visible = isVisible
			end
			if children[i]:FindFirstChild("RadialLabel") and not isVisible then
				children[i].RadialLabel.Visible = isVisible
			end
		end
	end

	function setOverrideMouseIconBehavior(override)
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

	function toggleCoreGuiRadial(goingToSettings)
		isVisible = not gamepadSettingsFrame.Visible

		setVisibility()

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
			gamepadSettingsFrame:TweenSizeAndPosition(UDim2.new(0,408,0,408), UDim2.new(0.5,-204,0.5,-204),
														Enum.EasingDirection.Out, Enum.EasingStyle.Back, 0.18, true,
				function()
					setVisibility()
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
			gamepadSettingsFrame:TweenSizeAndPosition(UDim2.new(0,102,0,102), UDim2.new(0.5,-51,0.5,-51),
														Enum.EasingDirection.Out, Enum.EasingStyle.Sine, 0.1, true,
				function()
					if not InputService.VREnabled then
						setOverrideMouseIconBehavior(false)
					end
					if not goingToSettings and not isVisible then GuiService:SetMenuIsOpen(false) end
					gamepadSettingsFrame.Visible = isVisible
			end)
		end

		if isVisible then
			setSelectedRadialButton(nil)

			local success = pcall(function() GuiService.CoreGuiNavigationEnabled = false end)
			if not success then
				GuiService.GuiNavigationEnabled = false
			end

			GuiService:SetMenuIsOpen(true)

			ContextActionService:BindCoreAction(freezeControllerActionName, noOpFunc, false, Enum.UserInputType.Gamepad1)
			ContextActionService:BindCoreAction(radialAcceptActionName, radialSelectAccept, false, Enum.KeyCode.ButtonA)
			ContextActionService:BindCoreAction(radialCancelActionName, radialSelectCancel, false, Enum.KeyCode.ButtonB)
			ContextActionService:BindCoreAction(radialSelectActionName, radialSelect, false, Enum.KeyCode.Thumbstick1, Enum.KeyCode.DPadUp, Enum.KeyCode.DPadDown, Enum.KeyCode.DPadLeft, Enum.KeyCode.DPadRight)
			ContextActionService:BindCoreAction(thumbstick2RadialActionName, noOpFunc, false, Enum.KeyCode.Thumbstick2)
			ContextActionService:BindCoreAction(toggleMenuActionName, doGamepadMenuButton, false, Enum.KeyCode.ButtonStart)
		else
			unbindAllRadialActions()
		end

		return gamepadSettingsFrame.Visible
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

	-- some buttons always show/hide depending on platform
	local function canChangeButtonVisibleState(buttonType)
		if isTenFootInterface then
			if buttonType == Enum.CoreGuiType.Chat or buttonType == Enum.CoreGuiType.PlayerList then
				return false
			end
		end

		return true
	end

	local function setRadialButtonEnabled(coreGuiType, enabled)
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
	end

if radialMenuAfterLoadingScreen then
	local defaultLoadingGuiRemovedConnection = nil
	local loadedConnection = nil
	local isLoadingGuiRemoved = false
	local isPlayerAdded = false

	local function updateRadialMenuActionBinding()
		if isLoadingGuiRemoved and isPlayerAdded then
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
	else
		defaultLoadingGuiRemovedConnection = game:GetService("ReplicatedFirst").DefaultLoadingGuiRemoved:connect(handleDefaultLoadingGuiRemoved)
	end
else
	local loadedConnection
	local function enableRadialMenu()
		ContextActionService:BindCoreAction(toggleMenuActionName, doGamepadMenuButton, false, Enum.KeyCode.ButtonStart)
		loadedConnection:disconnect()
	end

	loadedConnection = Players.PlayerAdded:connect(function(plr)
		if Players.LocalPlayer and plr == Players.LocalPlayer then
			enableRadialMenu()
		end
	end)

	if Players.LocalPlayer then
		enableRadialMenu()
	end
end

	StarterGui.CoreGuiChangedSignal:connect(setRadialButtonEnabled)
end

-- hook up gamepad stuff
setupGamepadControls()
