--[[
		// Filename: CaptureHud.lua
		// Version 1.0
		// Written by: xyin
		// Description: Implementation of the Capture mode HUD
		// All the things commented out are disabled for v0, but will be enabled for v1
]]
local AnalyticsService = game:GetService("RbxAnalyticsService")
local CoreGui = game:GetService("CoreGui")
local GuiService = game:GetService("GuiService")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local BackpackScript = require(RobloxGui.Modules.BackpackScript)
local CaptureMaster = require(RobloxGui.Modules.CaptureMaster)
local ChatSelector = require(RobloxGui.Modules.ChatSelector)
local PlayerListManager = require(RobloxGui.Modules.PlayerList.PlayerListManager)
local TopBar = require(RobloxGui.Modules.TopBar)

--[[ Images ]]--
-- local CLOSE_ICON = 'rbxasset://textures/ui/Capture/CloseButton.png'
-- local SHUTTER_ICON = 'rbxasset://textures/ui/Capture/Shutter.png'
-- local SHUTTER_PRESSED_ICON = 'rbxasset://textures/ui/Capture/ShutterPressed.png'

--[[ Constants ]]--
local CAPTURE_MODE_KEY = "CaptureMode"

--[[ Gui Creation ]]--
-- local function createImageLabel(name, size, position, image, parent)
-- 	local imageLabel = Instance.new('ImageLabel')
-- 	imageLabel.Name = name
-- 	imageLabel.Size = size
-- 	imageLabel.Position = position
-- 	imageLabel.BackgroundTransparency = 1
-- 	imageLabel.Image = image
-- 	imageLabel.Parent = parent

-- 	return imageLabel
-- end

-- local function createImageButton(name, size, position, image, parent)
-- 	local imageButton = Instance.new('ImageButton')
-- 	imageButton.Name = name
-- 	imageButton.Size = size
-- 	imageButton.Position = position
-- 	imageButton.BackgroundTransparency = 1
-- 	imageButton.Image = image
-- 	imageButton.Parent = parent

-- 	return imageButton
-- end

local inGameGlobalGuiInset = settings():GetFVariable("InGameGlobalGuiInset")
local CaptureHudFrame = Instance.new('Frame')
CaptureHudFrame.Name = "CaptureHudFrame"
CaptureHudFrame.Size = UDim2.new(1, 0, 1, inGameGlobalGuiInset)
CaptureHudFrame.Position = UDim2.new(0, 0, 0, -inGameGlobalGuiInset)
CaptureHudFrame.BackgroundColor3 = Color3.new(0, 0, 0)
CaptureHudFrame.BackgroundTransparency = 1
CaptureHudFrame.Visible = false
CaptureHudFrame.Parent = RobloxGui

 -- Hide for v0
-- local LeftCloseButton = createImageButton("CloseButton", UDim2.fromOffset(30, 30), UDim2.fromOffset(16, 3),
-- 	"", CaptureHudFrame)

-- local LeftCloseImage = createImageLabel("CloseImage", UDim2.fromOffset(26, 26), UDim2.fromScale(0.5, 0.5),
-- CLOSE_ICON, LeftCloseButton)
-- LeftCloseImage.AnchorPoint = Vector2.new(0.5, 0.5)

-- local RightCloseButton = createImageButton("CloseButton", UDim2.fromOffset(30, 30), UDim2.new(1, -16, 0, 3),
-- 	"", CaptureHudFrame)
-- RightCloseButton.AnchorPoint = Vector2.new(1, 0)

-- local RightCloseImage = createImageLabel("CloseImage", UDim2.fromOffset(26, 26), UDim2.fromScale(0.5, 0.5),
-- CLOSE_ICON, RightCloseButton)
-- RightCloseImage.AnchorPoint = Vector2.new(0.5, 0.5)

local DarkOverlayFrame = Instance.new('Frame')
DarkOverlayFrame.Name = "DarkOverlayFrame"
DarkOverlayFrame.Size = UDim2.new(1, 0, 1, 0)
DarkOverlayFrame.Position = UDim2.new(0, 0, 0, 0)
DarkOverlayFrame.Active = true
DarkOverlayFrame.BackgroundColor3 = Color3.new(0, 0, 0)
DarkOverlayFrame.BackgroundTransparency = 0
DarkOverlayFrame.Visible = false
DarkOverlayFrame.ZIndex = 2
DarkOverlayFrame.Parent = CaptureHudFrame

-- Hide for v0
-- local CapturePressedImage = createImageLabel("ShutterPressed", UDim2.fromOffset(44, 44), UDim2.new(1, -58, 0.5, 0),
-- 	SHUTTER_PRESSED_ICON, DarkOverlayFrame)
-- CapturePressedImage.AnchorPoint = Vector2.new(1, 0.5)

-- local CaptureButton = createImageButton("CaptureButton", UDim2.fromOffset(60, 60), UDim2.new(1, -48, 0.5, 0),
-- 	SHUTTER_ICON, CaptureHudFrame)
-- CaptureButton.AnchorPoint = Vector2.new(1, 0.5)

-- local captureButtonConnection = nil
local function onCaptureButtonActivated()
	-- if captureButtonConnection then
	-- 	captureButtonConnection:disconnect()
	-- 	captureButtonConnection = nil
	-- 	CaptureButton.ImageTransparency = 0.4
	-- end

	-- Hide capture UI
	CaptureHudFrame.Visible = false

	wait(0.2)
	CoreGui:TakeScreenshot()
	wait(0.2)

	-- Enable capture UI again
	CaptureHudFrame.Visible = true

	-- Display dark overlay
	DarkOverlayFrame.Visible = true

	wait(0.2)
	DarkOverlayFrame.Visible = false

	-- if not captureButtonConnection then
	-- 	captureButtonConnection = CaptureButton.Activated:connect(onCaptureButtonActivated)
	-- 	CaptureButton.ImageTransparency = 0
	-- end
end
-- captureButtonConnection = CaptureButton.Activated:connect(onCaptureButtonActivated)

local chatWasVisible
local isCaptureModeActive = false

local function enterCaptureMode(closeFromRight)
	isCaptureModeActive = true
	CaptureHudFrame.Visible = true

	-- Hide for v0
	-- LeftCloseButton.Visible = not closeFromRight
	-- RightCloseButton.Visible = not not closeFromRight

	PlayerListManager:HideTemp(CAPTURE_MODE_KEY, true)
	GuiService:SetMenuIsOpen(true, CAPTURE_MODE_KEY)
	TopBar:setInspectMenuOpen(true)

	if ChatSelector:GetVisibility() then
		chatWasVisible = true
		ChatSelector:ToggleVisibility()
	end

	if BackpackScript.IsOpen then
		BackpackScript:OpenClose()
	end
end

local function exitCaptureMode()
	isCaptureModeActive = false
	CaptureHudFrame.Visible = false

	PlayerListManager:HideTemp(CAPTURE_MODE_KEY, false)
	GuiService:SetMenuIsOpen(false, CAPTURE_MODE_KEY)
	TopBar:setInspectMenuOpen(false)

	if chatWasVisible then
		ChatSelector:ToggleVisibility()
		chatWasVisible = false
	end
end

-- Hide for v0
-- LeftCloseButton.Activated:connect(exitCaptureMode)
-- RightCloseButton.Activated:connect(exitCaptureMode)

-- local function captureModeActive(active, closeFromRight)
-- 	local newCaptureModeActive = not not active
-- 	if isCaptureModeActive == newCaptureModeActive then
-- 		return
-- 	end

-- 	isCaptureModeActive = newCaptureModeActive
-- 	if isCaptureModeActive then
-- 		enterCaptureMode(closeFromRight)
-- 	else
-- 		exitCaptureMode()
-- 	end
-- 	AnalyticsService:TrackEvent("Game", "CaptureModeActive", "placeId: " .. tostring(game.PlaceId), active)
-- end

local capturing = false

-- Auto capture in v0, will change to manual capture in v1
CaptureMaster.captureEvent.Event:connect(function()
	if capturing then
		return
	end
	capturing = true
	enterCaptureMode()
	onCaptureButtonActivated()
	exitCaptureMode()
	capturing = false

	AnalyticsService:SetRBXEventStream("client", "CaptureHud", "CaptureEvent", {
		placeId = game.PlaceId,
	})
end)
