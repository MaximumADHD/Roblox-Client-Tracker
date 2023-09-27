--!nonstrict
--[[
		// Filename: ScreenshotHud.lua
		// Version 1.0
		// Written by: xyin
		// Description: Implementation of the Screenshot HUD
]]
local AnalyticsService = game:GetService("RbxAnalyticsService")
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local HttpRbxApiService = game:GetService("HttpRbxApiService")
local Players = game:GetService("Players")
local ProximityPromptService = game:GetService("ProximityPromptService")
local StarterGui = game:GetService("StarterGui")
local UserInputService = game:GetService("UserInputService")
local ContextActionService = game:GetService("ContextActionService")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local CaptureMaster = require(RobloxGui.Modules.CaptureMaster)
local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)

local httpRequest = require(CorePackages.AppTempCommon.Temp.httpRequest)
local httpImpl = httpRequest(HttpRbxApiService)
local PermissionsProtocol = require(CorePackages.Workspace.Packages.PermissionsProtocol).PermissionsProtocol
local Promise = require(CorePackages.Promise)

local GetGameNameAndDescription = require(CorePackages.Workspace.Packages.GameDetailRodux).Requests.GetGameNameAndDescription
local GetFFlagScreenshotHudApi = require(RobloxGui.Modules.Flags.GetFFlagScreenshotHudApi)

if not GetFFlagScreenshotHudApi() then
	return
end

local ScreenshotHud = GuiService:WaitForChild("ScreenshotHud")

--[[ Images ]]
--
local CAMERA_IMAGE = "rbxasset://textures/ui/ScreenshotHud/Camera.png"
local CLOSE_IMAGE = "rbxasset://textures/ui/ScreenshotHud/Close.png"
local ROBLOX_LOGO_IMAGE = "rbxasset://textures/ui/ScreenshotHud/RobloxLogo.png"
local XBOX_Y = "rbxasset://textures/ui/Controls/xboxY.png"
local XBOX_B = "rbxasset://textures/ui/Controls/xboxB.png"

local CameraButtonStyle = {
	Default = {
		BackgroundColor3 = Color3.fromRGB(0, 180, 109),
		BackgroundTransparency = 0,
	},
	Hovered = {
		BackgroundColor3 = Color3.fromRGB(0, 232, 126),
		BackgroundTransparency = 0,
	},
	Pressed = {
		BackgroundColor3 = Color3.fromRGB(0, 232, 126),
		BackgroundTransparency = 0.5,
	},
}

--[[ Constants ]]
--
local DELAY_SECONDS = 0.2 -- in second

--[[ FFlags ]]
--
local GetFFlagAllowUsernameOverlayInScreenshotHud = require(
	RobloxGui.Modules.Flags.GetFFlagAllowUsernameOverlayInScreenshotHud
)

-- [[ Variables ]]
--
local CameraButton
local CloseButton

local Connections = {}
local BoundActions = {}
local CameraButtonConnection = nil
local UsingGamepad = false

--[[ Gui Creation ]]
--
local function createFrame(props, parent)
	local frame = Instance.new("Frame")
	frame.BackgroundColor3 = Color3.new(1, 1, 1)
	frame.BackgroundTransparency = 1
	frame.BorderSizePixel = 0
	frame.Position = UDim2.new(0, 0, 0, 0)
	frame.Size = UDim2.new(1, 0, 1, 0)

	for key, value in pairs(props) do
		frame[key] = value
	end

	frame.Parent = parent

	return frame
end

local function createImageLabel(image, props, parent)
	local imageLabel = Instance.new("ImageLabel")
	imageLabel.Image = image

	imageLabel.BackgroundTransparency = 1
	imageLabel.BorderSizePixel = 0
	imageLabel.Position = UDim2.new(0, 0, 0, 0)
	imageLabel.Size = UDim2.new(1, 0, 1, 0)

	for key, value in pairs(props) do
		imageLabel[key] = value
	end

	imageLabel.Parent = parent

	return imageLabel
end

local function createImageButton(image, props, parent)
	local imageButton = Instance.new("ImageButton")
	imageButton.Image = image

	imageButton.BackgroundTransparency = 1
	imageButton.BorderSizePixel = 0
	imageButton.Position = UDim2.new(0, 0, 0, 0)
	imageButton.Size = UDim2.new(1, 0, 1, 0)

	for key, value in pairs(props) do
		imageButton[key] = value
	end

	imageButton.Parent = parent

	return imageButton
end

local function createTextLabel(text, props, parent)
	local textLabel = Instance.new("TextLabel")
	textLabel.Text = text

	textLabel.BackgroundTransparency = 1
	textLabel.BorderSizePixel = 0
	textLabel.Font = Enum.Font.GothamMedium
	textLabel.Position = UDim2.new(0, 0, 0, 0)
	textLabel.Size = UDim2.new(1, 0, 1, 0)
	textLabel.TextColor3 = Color3.new(1, 1, 1)
	textLabel.TextSize = 20

	for key, value in pairs(props) do
		textLabel[key] = value
	end

	textLabel.Parent = parent

	return textLabel
end

local topLeftInset, bottomRightInset = GuiService:GetGuiInset()
local ScreenshotHudFrame = createFrame({
	Name = "ScreenshotHudFrame",
	Position = UDim2.new(0, -topLeftInset.X, 0, -topLeftInset.Y),
	Size = UDim2.new(1, topLeftInset.X + bottomRightInset.X, 1, topLeftInset.Y + bottomRightInset.Y),
	Visible = false,
}, RobloxGui)

local ScreenshotHudContent = createFrame({
	Name = "ScreenshotHudContent",
	Position = UDim2.new(0, topLeftInset.X, 0, topLeftInset.Y),
	Size = UDim2.new(1, -topLeftInset.X - bottomRightInset.X, 1, -topLeftInset.Y - bottomRightInset.Y),
	Visible = false,
}, ScreenshotHudFrame)

local DefaultCameraButton = createImageButton("", {
	AnchorPoint = Vector2.new(0.5, 0.5),
	AutoButtonColor = false,
	BackgroundColor3 = Color3.fromRGB(0, 180, 109),
	BackgroundTransparency = 0.5,
	Name = "CameraButton",
	Position = UDim2.new(0.5, 0, 1, -50),
	Size = UDim2.fromOffset(64, 64),
}, nil)

local CameraButtonUICorner = Instance.new("UICorner")
CameraButtonUICorner.CornerRadius = UDim.new(0, 32)
CameraButtonUICorner.Parent = DefaultCameraButton

local CameraButtonInnerCircle = createImageLabel("", {
	AnchorPoint = Vector2.new(0.5, 0.5),
	BackgroundColor3 = CameraButtonStyle.Default.BackgroundColor3,
	BackgroundTransparency = CameraButtonStyle.Default.BackgroundTransparency,
	Position = UDim2.fromScale(0.5, 0.5),
	Size = UDim2.fromOffset(52, 52),
}, DefaultCameraButton)

local InnerUICorner = Instance.new("UICorner")
InnerUICorner.CornerRadius = UDim.new(0, 26)
InnerUICorner.Parent = CameraButtonInnerCircle

local CameraIcon = createImageLabel(CAMERA_IMAGE, {
	AnchorPoint = Vector2.new(0.5, 0.5),
	Position = UDim2.fromScale(0.5, 0.5),
	Size = UDim2.fromOffset(32, 32),
}, CameraButtonInnerCircle)

local DefaultCloseButton = createImageButton("", {
	AnchorPoint = Vector2.new(0.5, 0.5),
	BackgroundColor3 = Color3.fromRGB(7, 7, 8),
	BackgroundTransparency = 0,
	Name = "CloseButton",
	Position = UDim2.new(0.5, -66, 1, -50),
	Size = UDim2.fromOffset(48, 48),
}, nil)

local CloseUICorner = Instance.new("UICorner")
CloseUICorner.CornerRadius = UDim.new(0, 24)
CloseUICorner.Parent = DefaultCloseButton

local CloseIcon = createImageLabel(CLOSE_IMAGE, {
	AnchorPoint = Vector2.new(0.5, 0.5),
	Position = UDim2.fromScale(0.5, 0.5),
	Size = UDim2.fromOffset(32, 32),
}, DefaultCloseButton)

local GamepadCameraButton = createImageButton("", {
	AnchorPoint = Vector2.new(0.5, 0.5),
	BackgroundColor3 = Color3.fromRGB(0, 180, 109),
	BackgroundTransparency = 0,
	Name = "CameraButton",
	Position = UDim2.new(1, -94, 1, -78),
	Size = UDim2.fromOffset(140, 36),
}, nil)

local GamepadCameraButtonUICorner = Instance.new("UICorner")
GamepadCameraButtonUICorner.CornerRadius = UDim.new(0, 18)
GamepadCameraButtonUICorner.Parent = GamepadCameraButton

local XboxYIcon = createImageLabel(XBOX_Y, {
	AnchorPoint = Vector2.new(0, 0.5),
	Position = UDim2.new(0, 6, 0.5, 0),
	Size = UDim2.fromOffset(24, 24),
}, GamepadCameraButton)

local takePhotoText = RobloxTranslator:FormatByKey("CoreScripts.ScreenshotHud.Action.TakePhoto")
local TakePhotoTextLabel = createTextLabel(takePhotoText, {
	AnchorPoint = Vector2.new(0, 0.5),
	Position = UDim2.new(0, 30, 0.5, 0),
	Size = UDim2.new(1, -36, 0, 20),
	TextScaled = true,
	TextWrapped = true,
}, GamepadCameraButton)

local GamepadCloseButton = createImageButton("", {
	AnchorPoint = Vector2.new(0.5, 0.5),
	BackgroundColor3 = Color3.fromRGB(7, 7, 8),
	BackgroundTransparency = 0,
	Name = "CloseButton",
	Position = UDim2.new(1, -228, 1, -78),
	Size = UDim2.fromOffset(104, 36),
}, nil)

local GamepadCloseButtonUICorner = Instance.new("UICorner")
GamepadCloseButtonUICorner.CornerRadius = UDim.new(0, 18)
GamepadCloseButtonUICorner.Parent = GamepadCloseButton

local XboxBIcon = createImageLabel(XBOX_B, {
	AnchorPoint = Vector2.new(0, 0.5),
	Position = UDim2.new(0, 6, 0.5, 0),
	Size = UDim2.fromOffset(24, 24),
}, GamepadCloseButton)

local cancelText = RobloxTranslator:FormatByKey("CoreScripts.ScreenshotHud.Action.Cancel")
local CancelTextLabel = createTextLabel(cancelText, {
	AnchorPoint = Vector2.new(0, 0.5),
	Position = UDim2.new(0, 30, 0.5, 0),
	Size = UDim2.new(1, -36, 0, 20),
	TextScaled = true,
	TextWrapped = true,
}, GamepadCloseButton)

local OverlayFrame = createFrame({
	Name = "ScreenshotOverlay",
	Position = UDim2.new(0, topLeftInset.X, 0, topLeftInset.Y),
	Size = UDim2.new(1, -topLeftInset.X - bottomRightInset.X, 1, -topLeftInset.Y - bottomRightInset.Y),
	ZIndex = 2,
}, ScreenshotHudFrame)

local ExperienceNameTextLabel = createTextLabel(game.Name, {
	Font = ScreenshotHud.OverlayFont,
	Name = "ExperienceName",
	Position = UDim2.new(0, 24, 0, 24),
	Size = UDim2.new(1, 0, 0, 48),
	TextSize = 22,
	TextXAlignment = Enum.TextXAlignment.Left,
	TextYAlignment = Enum.TextYAlignment.Top,
	TextWrapped = true,
	Visible = ScreenshotHud.ExperienceNameOverlayEnabled,
}, OverlayFrame)

local UserNameTextLabel = createTextLabel("@" .. Players.LocalPlayer.DisplayName, {
	AnchorPoint = Vector2.new(1, 1),
	Font = ScreenshotHud.OverlayFont,
	Name = "UserName",
	Position = UDim2.new(1, -24, 1, -4),
	Size = UDim2.new(1, -24, 0, 18),
	TextSize = 18,
	TextTransparency = 0.3,
	TextXAlignment = Enum.TextXAlignment.Right,
	Visible = ScreenshotHud.UsernameOverlayEnabled,
}, OverlayFrame)

local RobloxLogo = createImageLabel(ROBLOX_LOGO_IMAGE, {
	AnchorPoint = Vector2.new(1, 1),
	Position = UDim2.new(1, -24, 1, -24),
	Size = UDim2.fromOffset(103, 18),
}, OverlayFrame)

local FlashOverlayFrame = createFrame({
	Active = true,
	BackgroundTransparency = 0.5,
	Name = "FlashOverlay",
	Visible = false,
	ZIndex = 3,
}, ScreenshotHudFrame)

--[[ Event functions ]]
--

local function fetchExperienceName()
	if game.GameId ~= 0 then
		GetGameNameAndDescription(httpImpl, game.GameId):andThen(function(result)
			if result.Name then
				ExperienceNameTextLabel.Text = result.Name
			end
		end)
	end
end

local function checkOrRequestExternalStoragePermissions()
	return PermissionsProtocol.default:checkOrRequestPermissions({
			PermissionsProtocol.Permissions.WRITE_MEDIA_STORAGE,
		}):andThen(function(permissionResponseStatus)
			local permissionGranted = permissionResponseStatus == PermissionsProtocol.Status.AUTHORIZED
			return permissionGranted and Promise.resolve() or Promise.reject()
		end)
end

local function getEnabledPlayerScreenGuis()
	local playerGuis = Players.LocalPlayer.PlayerGui:GetDescendants()
	local enabledScreenGuis = {}
	for _, gui in ipairs(playerGuis) do
		if gui:IsA("ScreenGui") and gui.Enabled then
			table.insert(enabledScreenGuis, gui)
		end
	end
	return enabledScreenGuis
end

local function getEnabledCoreGuiTypes()
	local enabledCoreGuiTypes = {}
	for _, coreGuiType in ipairs(Enum.CoreGuiType:GetEnumItems()) do
		if StarterGui:GetCoreGuiEnabled(coreGuiType) then
			table.insert(enabledCoreGuiTypes, coreGuiType)
		end
	end
	return enabledCoreGuiTypes
end

local doTakeScreenshot = function() end

local function onCameraButtonActivated()
	if UserInputService:GetPlatform() == Enum.Platform.Android then
		checkOrRequestExternalStoragePermissions():andThen(doTakeScreenshot, function()
			CaptureMaster:ShowPermissionToast()
		end)
	else
		doTakeScreenshot()
	end
end

doTakeScreenshot = function()
	-- Use CaptureNotification to display screenshot result
	CaptureMaster:DismissNotification()

	if CameraButtonConnection then
		CameraButtonConnection:Disconnect()
		CameraButtonConnection = nil
	end

	-- Hide playerGui
	local disabledPlayerGuis = getEnabledPlayerScreenGuis()
	for _, gui in ipairs(disabledPlayerGuis) do
		gui.Enabled = false
	end

	-- Hide coreGui
	local disabledCoreGuiTypes = getEnabledCoreGuiTypes()
	for _, coreGuiType in ipairs(disabledCoreGuiTypes) do
		StarterGui:SetCoreGuiEnabled(coreGuiType, false)
	end

	-- Hide Proximity Prompts
	local proximityPromptsWereEnabled = ProximityPromptService.Enabled
	ProximityPromptService.Enabled = false

	-- Hide screenshot UI
	ScreenshotHudContent.Visible = false

	wait(DELAY_SECONDS)

	-- Hide usernames
	local displayNameTypes = {}
	for _, player in pairs(Players:GetPlayers()) do
		local humanoid = player.Character and player.Character:WaitForChild("Humanoid")
		if humanoid then
			displayNameTypes[humanoid] = humanoid.DisplayDistanceType
			humanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
		end
	end

	CoreGui:TakeScreenshot()
	wait(DELAY_SECONDS)

	-- Enable screenshot UI again
	ScreenshotHudContent.Visible = true

	-- Display flash overlay
	FlashOverlayFrame.Visible = true

	wait(DELAY_SECONDS)
	FlashOverlayFrame.Visible = false

	if not CameraButtonConnection then
		CameraButtonConnection = DefaultCameraButton.Activated:connect(onCameraButtonActivated)
	end

	-- Restore Proximity Prompts
	ProximityPromptService.Enabled = proximityPromptsWereEnabled

	-- Show usernames
	for _, player in pairs(Players:GetPlayers()) do
		local humanoid = player.Character and player.Character:WaitForChild("Humanoid")
		if humanoid and displayNameTypes[humanoid] then
			humanoid.DisplayDistanceType = displayNameTypes[humanoid]
		end
	end

	-- Show playerGui
	for _, gui in ipairs(disabledPlayerGuis) do
		gui.Enabled = true
	end

	-- Show coreGui
	for _, coreGuiType in ipairs(disabledCoreGuiTypes) do
		StarterGui:SetCoreGuiEnabled(coreGuiType, true)
	end

	if ScreenshotHud.CloseWhenScreenshotTaken then
		ScreenshotHud.Visible = false
	end

	AnalyticsService:SendEventDeferred("client", "screenshotHud", "TakeScreenshot", {
		pid = tostring(game.PlaceId),
	})
end

local function isGamepad(inputType: Enum.UserInputType)
	return inputType.Name:match("^Gamepad*") ~= nil
end

local function updateGamepadButtons()
	if CameraButton then
		CameraButton.Parent = nil
	end
	if CloseButton then
		CloseButton.Parent = nil
	end

	CameraButton = if UsingGamepad then GamepadCameraButton else DefaultCameraButton
	CloseButton = if UsingGamepad then GamepadCloseButton else DefaultCloseButton

	CameraButton.Parent = ScreenshotHudContent
	CloseButton.Parent = ScreenshotHudContent

	-- Only set the position when devs specify a differnt position
	-- Otherwise use our default positions
	if ScreenshotHud.CameraButtonPosition ~= UDim2.fromOffset(0, 0) then
		CameraButton.Position = ScreenshotHud.CameraButtonPosition
	end

	if ScreenshotHud.CloseButtonPosition ~= UDim2.fromOffset(0, 0) then
		CloseButton.Position = ScreenshotHud.CloseButtonPosition
	end
end

local function onLastInputTypeChanged(lastInputType: Enum.UserInputType?)
	local inputType: Enum.UserInputType
	if lastInputType then
		inputType = lastInputType
	else
		inputType = UserInputService:GetLastInputType()
	end

	-- Update UI according to lastInputType
	local newUsingGamepad = isGamepad(inputType)
	if UsingGamepad ~= newUsingGamepad then
		UsingGamepad = newUsingGamepad
		updateGamepadButtons()
	end
end

local function setupConnections()
	local inputBeganConn = DefaultCameraButton.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement then
			CameraButtonInnerCircle.BackgroundColor3 = CameraButtonStyle.Hovered.BackgroundColor3
			CameraButtonInnerCircle.BackgroundTransparency = CameraButtonStyle.Hovered.BackgroundTransparency
		elseif
			input.UserInputType == Enum.UserInputType.MouseButton1
			or input.UserInputType == Enum.UserInputType.Touch
		then
			CameraButtonInnerCircle.BackgroundColor3 = CameraButtonStyle.Pressed.BackgroundColor3
			CameraButtonInnerCircle.BackgroundTransparency = CameraButtonStyle.Pressed.BackgroundTransparency
		end
	end)
	table.insert(Connections, inputBeganConn)

	local inputEndedConn = DefaultCameraButton.InputEnded:Connect(function()
		CameraButtonInnerCircle.BackgroundColor3 = CameraButtonStyle.Default.BackgroundColor3
		CameraButtonInnerCircle.BackgroundTransparency = CameraButtonStyle.Default.BackgroundTransparency
	end)
	table.insert(Connections, inputEndedConn)

	if CameraButtonConnection then
		CameraButtonConnection:Disconnect()
		CameraButtonConnection = nil
	end
	CameraButtonConnection = DefaultCameraButton.Activated:connect(onCameraButtonActivated)
	table.insert(Connections, CameraButtonConnection)

	local closeButttonActivated = DefaultCloseButton.Activated:connect(function()
		ScreenshotHud.Visible = false
	end)
	table.insert(Connections, closeButttonActivated)

	-- Gamepad button handlers
	local function gamepadHandleClose(actionName, inputState, inputObject)
		if inputState == Enum.UserInputState.End and isGamepad(inputObject.UserInputType) then
			ScreenshotHud.Visible = false
		end
	end

	local GAMEPAD_CLOSE_ACTION = "ScreenshotHudGamepadClose"
	ContextActionService:BindAction(GAMEPAD_CLOSE_ACTION, gamepadHandleClose, false, Enum.KeyCode.ButtonB)
	table.insert(BoundActions, GAMEPAD_CLOSE_ACTION)

	local function gamepadHandleCamera(actionName, inputState, inputObject)
		if inputState == Enum.UserInputState.End and isGamepad(inputObject.UserInputType) then
			onCameraButtonActivated()
		end
	end

	local GAMEPAD_CAMERA_ACTION = "ScreenshotHudGamepadCamera"
	ContextActionService:BindAction(GAMEPAD_CAMERA_ACTION, gamepadHandleCamera, false, Enum.KeyCode.ButtonY)
	table.insert(BoundActions, GAMEPAD_CAMERA_ACTION)

	onLastInputTypeChanged()
	local lastInputTypeChanged = UserInputService.LastInputTypeChanged:Connect(onLastInputTypeChanged)
	table.insert(Connections, lastInputTypeChanged)
end

local function disconnectAll()
	for _, conn in ipairs(Connections) do
		conn:Disconnect()
		conn = nil
	end
	Connections = {}

	for _, action in ipairs(BoundActions) do
		ContextActionService:UnbindAction(action)
	end
	BoundActions = {}
end

local function screenshotHudEnabled(enabled: boolean)
	ScreenshotHudFrame.Visible = ScreenshotHud.Visible
	disconnectAll()

	if ScreenshotHud.Visible then
		ScreenshotHudContent.Visible = true
		FlashOverlayFrame.Visible = false
		setupConnections()
		CaptureMaster:Start()
	end

	AnalyticsService:SendEventDeferred("client", "screenshotHud", "ScreenshotHudEnabled", {
		pid = tostring(game.PlaceId),
		enabled = enabled,
	})
end

ScreenshotHud:GetPropertyChangedSignal("Visible"):Connect(function()
	screenshotHudEnabled(ScreenshotHud.Visible)
end)

ScreenshotHud:GetPropertyChangedSignal("OverlayFont"):Connect(function()
	ExperienceNameTextLabel.Font = ScreenshotHud.OverlayFont
	UserNameTextLabel.Font = ScreenshotHud.OverlayFont

	AnalyticsService:SendEventDeferred("client", "screenshotHud", "OverlayFont", {
		pid = tostring(game.PlaceId),
		font = ScreenshotHud.OverlayFont.Name,
	})
end)

ScreenshotHud:GetPropertyChangedSignal("ExperienceNameOverlayEnabled"):Connect(function()
	ExperienceNameTextLabel.Visible = ScreenshotHud.ExperienceNameOverlayEnabled

	AnalyticsService:SendEventDeferred("client", "screenshotHud", "ExperienceNameOverlayEnabled", {
		pid = tostring(game.PlaceId),
		enabled = ScreenshotHud.ExperienceNameOverlayEnabled,
	})
end)

ScreenshotHud:GetPropertyChangedSignal("UsernameOverlayEnabled"):Connect(function()
	local usernameOverlayEnabled = false
	if ScreenshotHud.UsernameOverlayEnabled and GetFFlagAllowUsernameOverlayInScreenshotHud() then
		usernameOverlayEnabled = true
	end
	UserNameTextLabel.Visible = usernameOverlayEnabled

	AnalyticsService:SendEventDeferred("client", "screenshotHud", "UsernameOverlayEnabled", {
		pid = tostring(game.PlaceId),
		enabled = usernameOverlayEnabled,
	})
end)

ScreenshotHud:GetPropertyChangedSignal("CameraButtonIcon"):Connect(function()
	CameraIcon.Image = ScreenshotHud.CameraButtonIcon or CAMERA_IMAGE

	AnalyticsService:SendEventDeferred("client", "screenshotHud", "CameraButtonIcon", {
		pid = tostring(game.PlaceId),
		icon = ScreenshotHud.CameraButtonIcon,
	})
end)

ScreenshotHud:GetPropertyChangedSignal("CameraButtonPosition"):Connect(function()
	CameraButton.Position = ScreenshotHud.CameraButtonPosition

	AnalyticsService:SendEventDeferred("client", "screenshotHud", "CameraButtonPosition", {
		pid = tostring(game.PlaceId),
		position = tostring(ScreenshotHud.CameraButtonPosition),
	})
end)
ScreenshotHud:GetPropertyChangedSignal("CloseButtonPosition"):Connect(function()
	CloseButton.Position = ScreenshotHud.CloseButtonPosition

	AnalyticsService:SendEventDeferred("client", "screenshotHud", "CloseButtonPosition", {
		pid = tostring(game.PlaceId),
		position = tostring(ScreenshotHud.CloseButtonPosition),
	})
end)

fetchExperienceName()
updateGamepadButtons()
screenshotHudEnabled(ScreenshotHud.Visible)
