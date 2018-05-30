--[[
	// Filename: PromptCreator.lua
	// Version 1.0
	// Written by: TheGamer101
	// Description: General module for prompting players to confirm or reject something.
	// For usage example see the BlockPlayerPrompt module.
]]--

local moduleApiTable = {}

local CoreGuiService = game:GetService("CoreGui")
local UserInputService = game:GetService("UserInputService")
local ContextActionService = game:GetService("ContextActionService")
local TextService = game:GetService("TextService")
local GuiService = game:GetService("GuiService")

local RobloxGui = CoreGuiService:WaitForChild("RobloxGui")
local CoreGuiModules = RobloxGui:WaitForChild("Modules")
local TenFootInterface = require(CoreGuiModules:WaitForChild("TenFootInterface"))
local VRModules = CoreGuiModules:WaitForChild("VR")
local VRDialogModule = require(VRModules:WaitForChild("Dialog"))

function getViewportSize()
	while not game.Workspace.CurrentCamera do
		game.Workspace.Changed:wait()
	end

	-- ViewportSize is initally set to 1, 1 in Camera.cpp constructor.
	-- Also check against 0, 0 incase this is changed in the future.
	while game.Workspace.CurrentCamera.ViewportSize == Vector2.new(0,0) or
		game.Workspace.CurrentCamera.ViewportSize == Vector2.new(1,1) do
		game.Workspace.CurrentCamera.Changed:wait()
	end

	return game.Workspace.CurrentCamera.ViewportSize
end

local IsTenFootInterface = TenFootInterface:IsEnabled()
local IsVRMode = false
local IsMobile = UserInputService.TouchEnabled == true and UserInputService.MouseEnabled == false
local IsPhone = IsMobile and (getViewportSize().Y <= 370)
local IsTablet = IsMobile and not IsPhone

local IsCurrentlyPrompting = false

local LastInputWasGamepad = false
local WasCoreGuiNavigationEnabled = false
local WasGuiNavigationEnabled = false
local WasAutoSelectGuiEnabled = false

-- Inital prompt options. These are passed to CreatePrompt.
local DefaultPromptOptions = {
	WindowTitle = "Confirm",
	MainText = "Is this okay?",
	ConfirmationText = "Confirm",
	CancelText = "Cancel",
	CancelActive = true,
	StripeColor = Color3.new(0.01, 0.72, 0.34),
	Image = nil,
	ImageConsoleVR = nil,
	PromptCompletedCallback = nil,
}

local PromptCallback = nil
local LastPromptOptions = nil

--[[ Constants ]]--
-- Images
local BUTTON = 'rbxasset://textures/ui/VR/button.png'
local BUTTON_DOWN = 'rbxasset://textures/ui/VR/buttonSelected.png'

-- Context Actions
local FREEZE_THUMBSTICK2_ACTION_NAME = "doNothingThumbstick2PromptCreator"
local FREEZE_ABUTTON_ACTION_NAME = "doNothingAButtonPromptCreator"
local CONTROLLER_CANCEL_ACTION_NAME = "CoreScriptPromptCreatorCancel"
local CONTROLLER_SELECT_ACTION_NAME = "CoreScriptPromptCreatorSelect"

-- GUI constants
local TWEEN_TIME = 0.3

local DIALOG_SIZE = UDim2.new(0, 438, 0, 300)
local HIDE_POSITION = UDim2.new(0.5, -219, 0, -300)
local SHOW_POSITION = UDim2.new(0.5, -219, 0.5, -150)

if IsTenFootInterface or IsVRMode then
	DIALOG_SIZE = UDim2.new(1, 0, 0, 690)
	HIDE_POSITION = UDim2.new(0, 0, 0, -690)
	SHOW_POSITION = UDim2.new(0, 0, 0.5, -345)
elseif IsPhone then
	DIALOG_SIZE = UDim2.new(0.9, 0, 0.9, 0)
	HIDE_POSITION = UDim2.new(0.05, 0, -0.9, 0)
	SHOW_POSITION = UDim2.new(0.05, 0, 0.05, 0)
elseif IsTablet then
	DIALOG_SIZE = UDim2.new(0, 400, 0, 305)
	HIDE_POSITION = UDim2.new(0.5, -200, 0, -305)
	SHOW_POSITION = UDim2.new(0.5, -200, 0.5, -152)
end

local TITLE_HEIGHT = 52
local TITLE_TEXTSIZE = 24

if IsPhone then
	TITLE_HEIGHT = 44
end

local BUTTON_TEXTSIZE = 24

if IsTenFootInterface or IsVRMode then
	BUTTON_TEXTSIZE = 42
end

--[[ Gui Creation Functions ]]--
local function createFrame(name, size, position, bgTransparency, bgColor)
	local frame = Instance.new('Frame')
	frame.Name = name
	frame.Size = size
	frame.Position = position or UDim2.new(0, 0, 0, 0)
	frame.BackgroundTransparency = bgTransparency
	frame.BackgroundColor3 = bgColor or Color3.new()
	frame.BorderSizePixel = 0
	frame.ZIndex = 8

	return frame
end

local function createTextLabel(name, size, position, font, textSize, text)
	local textLabel = Instance.new('TextLabel')
	textLabel.Name = name
	textLabel.Size = size or UDim2.new(0, 0, 0, 0)
	textLabel.Position = position
	textLabel.BackgroundTransparency = 1
	textLabel.Font = font
	textLabel.TextSize = textSize
	textLabel.TextColor3 = Color3.new(1, 1, 1)
	textLabel.Text = text
	textLabel.ZIndex = 8

	return textLabel
end

local function createScrollingTextLabel(name, size, position, font, textSize, text, scrollBarThickness)
	local textLabel = createTextLabel(name, size, position, font, textSize, text)
	textLabel.TextXAlignment = Enum.TextXAlignment.Left
	textLabel.TextYAlignment = Enum.TextYAlignment.Top
	textLabel.TextWrapped = true

	local oldTextBounds = TextService:GetTextSize(text, textSize, font, Vector2.new(size.X.Offset, 10000))

	if oldTextBounds.Y > size.Y.Offset then
		local sizeOffset = Vector2.new(size.X.Offset - (scrollBarThickness + 20), 10000)
		local textBounds = TextService:GetTextSize(text, textSize, font, sizeOffset)
		-- Create scrolling frame.
		local parentFrame = Instance.new("Frame")
		parentFrame.Name = "ScrollingTextParent"
		parentFrame.BackgroundTransparency = 1
		parentFrame.BackgroundColor3 = Color3.new(1, 1, 1)
		parentFrame.BorderSizePixel = 0
		parentFrame.Position = position
		parentFrame.Size = size - UDim2.new(0, scrollBarThickness*2, 0, 0)

		local scrollingFrame = Instance.new('ScrollingFrame')
		scrollingFrame.Selectable = true
		scrollingFrame.Name = "ScrollingFrame"
		scrollingFrame.BackgroundTransparency = 1
		scrollingFrame.BackgroundColor3 = Color3.new(1, 1, 1)
		scrollingFrame.BorderSizePixel = 0
		scrollingFrame.Position = UDim2.new(0, 0, 0, 0)
		scrollingFrame.Size = size
		scrollingFrame.CanvasSize = UDim2.new(0, sizeOffset.X - scrollBarThickness*2, 0, textBounds.Y)
		scrollingFrame.ScrollBarThickness = scrollBarThickness
		scrollingFrame.SelectionImageObject = Instance.new("ImageLabel")
		scrollingFrame.SelectionImageObject.Name = "EmptySelectionImage"
		scrollingFrame.SelectionImageObject.BackgroundTransparency = 1
		scrollingFrame.SelectionImageObject.Image = ""
		scrollingFrame.Active = false

		scrollingFrame.SelectionGained:connect(function()
			parentFrame.BackgroundTransparency = 0.15
		end)

		scrollingFrame.SelectionLost:connect(function()
			parentFrame.BackgroundTransparency = 1
		end)

		textLabel.Position = UDim2.new(0, 10, 0, 0)
		textLabel.Size = UDim2.new(0, sizeOffset.X, 0, textBounds.Y)
		textLabel.Parent = scrollingFrame

		scrollingFrame.Parent = parentFrame

		return parentFrame
	end

	return textLabel
end


local function createImageLabel(name, size, position, image, fetchImageFunction)
	local imageLabel = Instance.new('ImageLabel')
	imageLabel.Name = name
	imageLabel.Size = size
	imageLabel.BackgroundTransparency = 1
	imageLabel.Position = position
	imageLabel.Image = image

	if fetchImageFunction then
		fetchImageFunction(imageLabel)
	end
	
	return imageLabel
end

local function createImageButtonWithText(name, size, position, image, imageDown, text, font)
	local imageButton = Instance.new('ImageButton')
	imageButton.Name = name
	imageButton.Size = size
	imageButton.Position = position
	imageButton.Image = image
	imageButton.BackgroundTransparency = 1
	imageButton.AutoButtonColor = false
	imageButton.ZIndex = 8
	imageButton.Modal = true
	imageButton.Selectable = true
	imageButton.SelectionImageObject = Instance.new("ImageLabel")
	imageButton.SelectionImageObject.Name = "EmptySelectionImage"
	imageButton.SelectionImageObject.BackgroundTransparency = 1
	imageButton.SelectionImageObject.Image = ""

	local textLabel = createTextLabel(name.."Text", UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 0, 0), font, BUTTON_TEXTSIZE, text)
	textLabel.ZIndex = 9
	textLabel.Parent = imageButton

	imageButton.MouseEnter:connect(function()
		imageButton.Image = imageDown
	end)
	imageButton.MouseLeave:connect(function()
		imageButton.Image = image
	end)
	imageButton.MouseButton1Click:connect(function()
		imageButton.Image = image
	end)
	imageButton.SelectionGained:connect(function()
		imageButton.Image = imageDown
	end)
	imageButton.SelectionLost:connect(function()
		imageButton.Image = image
	end)

	return imageButton
end

--[[ Begin Gui Creation ]]--
local PromptDialog = createFrame("PromptDialog", DIALOG_SIZE, HIDE_POSITION, 1, nil)
PromptDialog.Visible = false
PromptDialog.Parent = RobloxGui
PromptDialog.Active = true

local ContainerFrame = createFrame("ContainerFrame", UDim2.new(1, 0, 1, 0), nil, 0.36, Color3.new(0, 0, 0))
ContainerFrame.ZIndex = 8
ContainerFrame.Parent = PromptDialog

function AddDefaultsToPromptOptions(promptOptions, defaultPromptOptions)
	for key, value in pairs(defaultPromptOptions) do
		if promptOptions[key] == nil then
			promptOptions[key] = value
		end
	end
end

--- Creates a prompt for VR or console.
function CreatePromptVRorConsole(promptOptions)
	local xOffset = 90

	if promptOptions.ImageConsoleVR then
		local image = createImageLabel("Image", UDim2.new(0, 600, 0, 600), UDim2.new(0, 100, 0, 45), promptOptions.ImageConsoleVR, promptOptions.FetchImageFunctionConsoleVR)
		image.ZIndex = 9
		image.Parent = ContainerFrame

		xOffset = 800
	end

	local windowTitle = createTextLabel("WindowTitle", UDim2.new(0, 800, 0, 60),
																			UDim2.new(0, xOffset, 0, 60), Enum.Font.SourceSansBold, 48,
																			promptOptions.WindowTitle)
	windowTitle.TextXAlignment = Enum.TextXAlignment.Left
	windowTitle.TextYAlignment = Enum.TextYAlignment.Center
	windowTitle.Parent = ContainerFrame
	windowTitle.ZIndex = 9

	local colorStripe = createFrame("ColorStripe", UDim2.new(0, 832, 0, 4), UDim2.new(0, xOffset, 0, 120), 0, promptOptions.StripeColor)
	colorStripe.ZIndex = 9
	colorStripe.Parent = ContainerFrame

	local mainText = createScrollingTextLabel("MainText", UDim2.new(0, 800, 0, 450), UDim2.new(0, xOffset, 0, 152),
		Enum.Font.SourceSansBold, 44, promptOptions.MainText, 16)
	mainText.Parent = ContainerFrame

	local buttonSliceCenter = Rect.new(8, 8, 64 - 8, 64 - 8)
	local buttonScaleType = Enum.ScaleType.Slice

	local confirmButton = createImageButtonWithText("ConfirmButton", UDim2.new(0, 320, 0, 80), UDim2.new(0, xOffset, 1, -125), BUTTON,
		BUTTON_DOWN, promptOptions.ConfirmationText, Enum.Font.SourceSans)

	confirmButton.Parent = ContainerFrame
	confirmButton.ScaleType = buttonScaleType
	confirmButton.SliceCenter = buttonSliceCenter

	confirmButton.MouseButton1Click:connect(function()
		OnPromptEnded(true)
	end)

	if promptOptions.CancelActive then
		local cancelButton = createImageButtonWithText("CancelButton", UDim2.new(0, 320, 0, 80),  UDim2.new(0, xOffset + 340, 1, -125), BUTTON, BUTTON_DOWN,
			promptOptions.CancelText, Enum.Font.SourceSans)

		cancelButton.Parent = ContainerFrame
		cancelButton.ScaleType = buttonScaleType
		cancelButton.SliceCenter = buttonSliceCenter

		cancelButton.MouseButton1Click:connect(function()
			OnPromptEnded(false)
		end)
	end
end

function CreatePromptPCorTablet(promptOptions)
	local windowTitle = createTextLabel("WindowTitle", UDim2.new(1, 0, 0, TITLE_HEIGHT),
																			UDim2.new(0, 0, 0, 0), Enum.Font.SourceSansBold, TITLE_TEXTSIZE,
																			promptOptions.WindowTitle)
	windowTitle.Parent = ContainerFrame
	windowTitle.ZIndex = 9

	local colorStripe = createFrame("ColorStripe", UDim2.new(1, 0, 0, 2), nil, 0, promptOptions.StripeColor)
	colorStripe.Position = UDim2.new(0, 0, 0, TITLE_HEIGHT)
	colorStripe.ZIndex = 9
	colorStripe.Parent = ContainerFrame

	local mainText = nil
	local image = nil

	if promptOptions.Image then
		image = createImageLabel("Image", UDim2.new(0, 150, 0, 150), UDim2.new(0, 15, 0, TITLE_HEIGHT + 17), promptOptions.Image, promptOptions.FetchImageFunction)
		image.ZIndex = 9
		image.Parent = ContainerFrame

		if IsTablet then
			mainText = createScrollingTextLabel("MainText", UDim2.new(0, 195, 0, 150), UDim2.new(0, 185, 0, TITLE_HEIGHT + 17),
				Enum.Font.SourceSansBold, 22, promptOptions.MainText, 8)
		else
			mainText = createScrollingTextLabel("MainText", UDim2.new(0, 233, 0, 150), UDim2.new(0, 185, 0, TITLE_HEIGHT + 17),
				Enum.Font.SourceSansBold, 22, promptOptions.MainText, 8)
		end
	else
		if IsTablet then
			mainText = createScrollingTextLabel("MainText", UDim2.new(0, 360, 0, 150), UDim2.new(0, 20, 0, TITLE_HEIGHT + 17),
				Enum.Font.SourceSansBold, 22, promptOptions.MainText, 8)
		else
			mainText = createScrollingTextLabel("MainText", UDim2.new(0, 398, 0, 150), UDim2.new(0, 20, 0, TITLE_HEIGHT + 17),
				Enum.Font.SourceSansBold, 22, promptOptions.MainText, 8)
		end
	end

	mainText.Parent = ContainerFrame

	local buttonSliceCenter = Rect.new(8, 8, 64 - 8, 64 - 8)
	local buttonScaleType = Enum.ScaleType.Slice

	local confirmButton = nil

	if IsTablet then
		if promptOptions.CancelActive then
			confirmButton = createImageButtonWithText("ConfirmButton",
				UDim2.new(0, 128, 0, 44), UDim2.new(0.5, -138, 1, -59), BUTTON, BUTTON_DOWN, promptOptions.ConfirmationText, Enum.Font.SourceSansBold)
		else
			confirmButton = createImageButtonWithText("ConfirmButton", UDim2.new(0, 128, 0, 44), UDim2.new(0.5, -64, 1, -59), BUTTON,
				BUTTON_DOWN, promptOptions.ConfirmationText, Enum.Font.SourceSans)
		end
	else
		if promptOptions.CancelActive then
			confirmButton = createImageButtonWithText("ConfirmButton",
		    UDim2.new(0, 128, 0, 38), UDim2.new(0.5, -138, 1, -53), BUTTON, BUTTON_DOWN, promptOptions.ConfirmationText, Enum.Font.SourceSansBold)
		else
			confirmButton = createImageButtonWithText("ConfirmButton", UDim2.new(0, 128, 0, 38), UDim2.new(0.5, -64, 1, -53), BUTTON,
			  BUTTON_DOWN, promptOptions.ConfirmationText, Enum.Font.SourceSans)
		end
	end

	confirmButton.Parent = ContainerFrame
	confirmButton.ScaleType = buttonScaleType
	confirmButton.SliceCenter = buttonSliceCenter

	confirmButton.MouseButton1Click:connect(function()
		OnPromptEnded(true)
	end)

	if promptOptions.CancelActive then
		local cancelButton = nil
		if IsTablet then
			cancelButton = createImageButtonWithText("CancelButton", UDim2.new(0, 128, 0, 44),  UDim2.new(0.5, 10, 1, -59), BUTTON, BUTTON_DOWN,
				promptOptions.CancelText, Enum.Font.SourceSans)
		else
			cancelButton = createImageButtonWithText("CancelButton", UDim2.new(0, 128, 0, 38),  UDim2.new(0.5, 10, 1, -53), BUTTON, BUTTON_DOWN,
				promptOptions.CancelText, Enum.Font.SourceSans)
		end

		cancelButton.Parent = ContainerFrame
		cancelButton.ScaleType = buttonScaleType
		cancelButton.SliceCenter = buttonSliceCenter

		cancelButton.MouseButton1Click:connect(function()
			OnPromptEnded(false)
		end)

		cancelButton.NextSelectionLeft = confirmButton
		confirmButton.NextSelectionRight = cancelButton
	end
end

function CreatePromptPhone(promptOptions)
	local windowTitle = createTextLabel("WindowTitle", UDim2.new(1, 0, 0, TITLE_HEIGHT),
																			UDim2.new(0, 0, 0, 0), Enum.Font.SourceSansBold, TITLE_TEXTSIZE,
																			promptOptions.WindowTitle)
	windowTitle.Parent = ContainerFrame
	windowTitle.ZIndex = 9

	local colorStripe = createFrame("ColorStripe", UDim2.new(1, 0, 0, 2), nil, 0, promptOptions.StripeColor)
	colorStripe.Position = UDim2.new(0, 0, 0, TITLE_HEIGHT)
	colorStripe.ZIndex = 9
	colorStripe.Parent = ContainerFrame

	local mainText = nil
	local image = nil

	if promptOptions.Image then
		image = createImageLabel("Image", UDim2.new(0, 120, 0, 120), UDim2.new(0, 15, 0, TITLE_HEIGHT + 17), promptOptions.Image, promptOptions.FetchImageFunction)
		image.ZIndex = 9
		image.Parent = ContainerFrame

		mainText = createScrollingTextLabel("MainText", UDim2.new(0, ContainerFrame.AbsoluteSize.X - 175, 0, 120), UDim2.new(0, 155, 0, TITLE_HEIGHT + 17),
			Enum.Font.SourceSansBold, 20, promptOptions.MainText, 8)
	else
		mainText = createScrollingTextLabel("MainText", UDim2.new(1, ContainerFrame.AbsoluteSize.X - 40, 0, 120), UDim2.new(0, 20, 0, TITLE_HEIGHT + 17),
			Enum.Font.SourceSansBold, 20, promptOptions.MainText, 8)
	end

	mainText.Parent = ContainerFrame

	local buttonSliceCenter = Rect.new(8, 8, 64 - 8, 64 - 8)
	local buttonScaleType = Enum.ScaleType.Slice

	local confirmButton = nil

	if promptOptions.CancelActive then
		confirmButton = createImageButtonWithText("ConfirmButton",
	    UDim2.new(0, 128, 0, 44), UDim2.new(0.5, -138, 1, -59), BUTTON, BUTTON_DOWN, promptOptions.ConfirmationText, Enum.Font.SourceSansBold)
	else
		confirmButton = createImageButtonWithText("ConfirmButton", UDim2.new(0, 128, 0, 44), UDim2.new(0.5, -64, 1, -59), BUTTON,
		  BUTTON_DOWN, promptOptions.ConfirmationText, Enum.Font.SourceSans)
	end

	confirmButton.Parent = ContainerFrame
	confirmButton.ScaleType = buttonScaleType
	confirmButton.SliceCenter = buttonSliceCenter

	confirmButton.MouseButton1Click:connect(function()
		OnPromptEnded(true)
	end)

	if promptOptions.CancelActive then
		local cancelButton = createImageButtonWithText("CancelButton", UDim2.new(0, 128, 0, 44),  UDim2.new(0.5, 10, 1, -59), BUTTON, BUTTON_DOWN,
			promptOptions.CancelText, Enum.Font.SourceSans)
		cancelButton.Parent = ContainerFrame
		cancelButton.ScaleType = buttonScaleType
		cancelButton.SliceCenter = buttonSliceCenter

		cancelButton.MouseButton1Click:connect(function()
			OnPromptEnded(false)
		end)
	end
end

function CreatePromptFromOptions(promptOptions)
	ContainerFrame:ClearAllChildren()

	if IsVRMode or IsTenFootInterface then
		CreatePromptVRorConsole(promptOptions)
	elseif IsPhone then
		CreatePromptPhone(promptOptions)
	else
		CreatePromptPCorTablet(promptOptions)
	end
end

function SetSelectedObject()
	local cancelButton = ContainerFrame:FindFirstChild("CancelButton")
	if cancelButton then
		GuiService.SelectedCoreObject = cancelButton
	else
		local confirmButton = ContainerFrame:FindFirstChild("ConfirmButton")
		if confirmButton then
			GuiService.SelectedCoreObject = confirmButton
		end
	end
end

function OnTweenInFinished()
	if LastInputWasGamepad or IsTenFootInterface then
		SetSelectedObject()
	end
end

function ShowPrompt()
	PromptDialog.Visible = true
	if IsTenFootInterface then
		UserInputService.OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.ForceHide
	end
	if IsVRMode then
		PromptDialog.Position = SHOW_POSITION
		PromptDialogVR:SetContent(PromptDialog)
		PromptDialogVR:Show(true)
		DisableControllerMovement()
	else
		PromptDialog:TweenPosition(SHOW_POSITION, Enum.EasingDirection.InOut, Enum.EasingStyle.Quad, TWEEN_TIME, true, OnTweenInFinished)
		DisableControllerMovement()
		EnableControllerInput()
	end
end

function HidePrompt()
	local function onClosed()
		PromptDialog.Visible = false
		IsCurrentlyPrompting = false
		GuiService.CoreGuiNavigationEnabled = WasCoreGuiNavigationEnabled
		GuiService.GuiNavigationEnabled = WasGuiNavigationEnabled
		GuiService.AutoSelectGuiEnabled = WasAutoSelectGuiEnabled
		GuiService.SelectedCoreObject = nil
		if IsTenFootInterface then
			UserInputService.OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.None
		end
	end
	if IsVRMode then
		PromptDialog.Position = HIDE_POSITION
		PromptDialogVR:Close()
		onClosed()
	else
		PromptDialog:TweenPosition(HIDE_POSITION, Enum.EasingDirection.InOut, Enum.EasingStyle.Quad, TWEEN_TIME, true, onClosed)
	end
end

function DoCreatePrompt(promptOptions)
	PromptCallback = promptOptions.PromptCompletedCallback
	AddDefaultsToPromptOptions(promptOptions, DefaultPromptOptions)
	LastPromptOptions = promptOptions
	CreatePromptFromOptions(promptOptions)
	ShowPrompt()
end

function OnPromptEnded(okayButtonPressed)
	if PromptCallback then
		if LastPromptOptions.CancelActive then
			spawn(function() PromptCallback(okayButtonPressed) end)
		else
			spawn(function() PromptCallback(true) end)
		end
	end
	HidePrompt()
	EnableControllerMovement()
	DisableControllerInput()
end

--[[ Controller input handling ]]

function NoOpFunc() end

function EnableControllerMovement()
	ContextActionService:UnbindCoreAction(FREEZE_THUMBSTICK2_ACTION_NAME)
	ContextActionService:UnbindCoreAction(FREEZE_ABUTTON_ACTION_NAME)
end

function DisableControllerMovement()
	ContextActionService:BindCoreAction(FREEZE_THUMBSTICK2_ACTION_NAME, NoOpFunc, false, Enum.KeyCode.Thumbstick2)
	ContextActionService:BindCoreAction(FREEZE_ABUTTON_ACTION_NAME, NoOpFunc, false, Enum.KeyCode.ButtonA)
end

function EnableControllerInput()
	--cancel the prompt when the user pressed the b button.
	ContextActionService:BindCoreAction(
		CONTROLLER_CANCEL_ACTION_NAME,
		function(actionName, inputState, inputObject)
			if inputState ~= Enum.UserInputState.Begin then return end

			if LastPromptOptions.CancelActive then
				OnPromptEnded(false)
			end
		end,
		false,
		Enum.KeyCode.ButtonB
	)

	ContextActionService:BindCoreAction(
		CONTROLLER_SELECT_ACTION_NAME,
		function(actionName, inputState, inputObject)
			if inputState ~= Enum.UserInputState.Begin then return end

			if GuiService.SelectedCoreObject == nil then
				SetSelectedObject()
			end
		end,
		false,
		Enum.KeyCode.ButtonSelect
	)
end

function DisableControllerInput()
	ContextActionService:UnbindCoreAction(CONTROLLER_CANCEL_ACTION_NAME)
	ContextActionService:UnbindCoreAction(CONTROLLER_SELECT_ACTION_NAME)
end

function valueInTable(val, tab)
	for _, v in pairs(tab) do
		if v == val then
			return true
		end
	end
	return false
end

function OnInputChanged(inputObject)
	local inputType = inputObject.UserInputType
	local inputTypes = Enum.UserInputType
	if not IsVRMode and valueInTable(inputType, {inputTypes.Gamepad1, inputTypes.Gamepad2, inputTypes.Gamepad3, inputTypes.Gamepad4}) then
		if inputObject.KeyCode == Enum.KeyCode.Thumbstick1 or inputObject.KeyCode == Enum.KeyCode.Thumbstick2 then
			if math.abs(inputObject.Position.X) > 0.1 or math.abs(inputObject.Position.Z) > 0.1 or math.abs(inputObject.Position.Y) > 0.1 then
				LastInputWasGamepad = true
			end
		else
			LastInputWasGamepad = true
		end
	else
		LastInputWasGamepad = false
	end
end
UserInputService.InputChanged:connect(OnInputChanged)
UserInputService.InputBegan:connect(OnInputChanged)

--[[ VR changed handling ]]
function OnVREnabled(vrEnabled)
	if vrEnabled then
		if not PromptDialogVR then
			PromptDialogVR = VRDialogModule.new()
		end
		PromptDialogVR:SetContent(PromptDialog)
		IsVRMode = true
	else
		IsVRMode = false
		if PromptDialogVR then
			PromptDialogVR:SetContent(nil)
		end
		PromptDialog.Parent = RobloxGui
	end
end

spawn(function()
	OnVREnabled(UserInputService.VREnabled)
end)

UserInputService.Changed:connect(function(prop)
	if prop == "VREnabled" then
		OnVREnabled(UserInputService.VREnabled)
	end
end)

GuiService.Changed:connect(function(prop)
	if IsCurrentlyPrompting then
		if prop == "CoreGuiNavigationEnabled" then
			if GuiService.CoreGuiNavigationEnabled ~= true then
				WasCoreGuiNavigationEnabled = GuiService.CoreGuiNavigationEnabled
				GuiService.CoreGuiNavigationEnabled = true
			end
		elseif prop == "GuiNavigationEnabled" then
			if GuiService.GuiNavigationEnabled ~= false then
				WasGuiNavigationEnabled = GuiService.GuiNavigationEnabled
				GuiService.GuiNavigationEnabled = false
			end
		elseif prop == "AutoSelectGuiEnabled" then
			if GuiService.AutoSelectGuiEnabled ~= false then
				WasAutoSelectGuiEnabled = GuiService.AutoSelectGuiEnabled
				GuiService.AutoSelectGuiEnabled = false
			end
		end
	end
end)

function SetupGamepadSelection()
	WasCoreGuiNavigationEnabled = GuiService.CoreGuiNavigationEnabled
	WasGuiNavigationEnabled = GuiService.GuiNavigationEnabled
	WasAutoSelectGuiEnabled = GuiService.AutoSelectGuiEnabled

	GuiService.SelectedCoreObject = nil
	GuiService.CoreGuiNavigationEnabled = true
	GuiService.GuiNavigationEnabled = false
	GuiService.AutoSelectGuiEnabled = false
end

-- [[ Public Methods ]]
function moduleApiTable:CreatePrompt(promptOptions)
	if IsCurrentlyPrompting then
		return false
	end
	IsCurrentlyPrompting = true
	SetupGamepadSelection()
	DoCreatePrompt(promptOptions)
	return true
end

function moduleApiTable:IsCurrentlyPrompting()
	return IsCurrentlyPrompting
end

return moduleApiTable
