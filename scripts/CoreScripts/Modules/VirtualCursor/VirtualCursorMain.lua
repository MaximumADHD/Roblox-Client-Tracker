--[[
	// FileName: GamepadVirtualCursor.lua
	// Written by: dangel (Garnold)
	// Description: Implementation of the Virtual Cursor selection mode for gamepads
]]

local VirtualCursorFolder = script.Parent

local GuiService = game:GetService("GuiService")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local UserSettings = UserSettings():GetService("UserGameSettings")
local GamepadService = game:GetService("GamepadService")

-- Submodules
local input = require(VirtualCursorFolder:WaitForChild("Input"))
local interface = require(VirtualCursorFolder:WaitForChild("Interface"))
local onRenderStep = require(VirtualCursorFolder:WaitForChild("OnRenderStep"))

-- There should only be one instance of virtual cursor.
-- This will allow it to stay a class, while also still being able to rely on guiservice enabling/disabling
local VirtualCursorSingleton = nil
local lastInputTypeChangedEventConnection = nil
local menuOpenedEventConnection = nil

local bindToRenderStepName = "VirtualCursorStepped"

local function enableVirtualCursor(position)
	if not VirtualCursorSingleton then return end
	position = position or VirtualCursorSingleton.CursorPosition

	VirtualCursorSingleton.Enabled = true
	VirtualCursorSingleton.CursorPosition = position

	interface:EnableUI(position)
	input:EnableInput()

	input:SetCurrentSensitivity(UserSettings.GamepadCameraSensitivity)

	VirtualCursorSingleton.IsInitialRun = true
	RunService:BindToRenderStep(bindToRenderStepName, Enum.RenderPriority.Input.Value + 1, VirtualCursorSingleton.OnRenderStep)

	lastInputTypeChangedEventConnection = UserInputService.LastInputTypeChanged:Connect(function(inputType)
		if inputType ~= Enum.UserInputType.Gamepad1 then
			GamepadService.GamepadCursorEnabled = false
		end
	end)
	menuOpenedEventConnection = GuiService.MenuOpened:Connect(function()
		GamepadService.GamepadCursorEnabled = false
	end)
end

local function disableVirtualCursor()
	-- disconnect events
	lastInputTypeChangedEventConnection:Disconnect()
	lastInputTypeChangedEventConnection = nil

	menuOpenedEventConnection:Disconnect()
	menuOpenedEventConnection = nil

	interface:DisableUI()
	input:DisableInput()

	RunService:UnbindFromRenderStep(bindToRenderStepName)

	if VirtualCursorSingleton.SelectedObject then
		GuiService.SelectedObject = nil -- if we are in hybrid, rely on the engine to handle this
		VirtualCursorSingleton.SelectedObject = nil
	end

	VirtualCursorSingleton.Enabled = false
end

-- define class
local VirtualCursor = {}
VirtualCursor.__index = VirtualCursor

function VirtualCursor:GetEnabled()
	return self.Enabled
end

function VirtualCursor:InitialRun() -- so renderstep knows if this is the first run (to override position not being changed)
	if self.IsInitialRun then
		self.IsInitialRun = false
		return true
	end
	return false
end

function VirtualCursor.new()
	local self = {
		Enabled = false,
		CursorPosition = Vector2.new(),
		SelectedObject = nil,
		IsInitialRun = false,
	}

	self.OnRenderStep = function(delta)
		onRenderStep(self, delta)
	end

	setmetatable(self, VirtualCursor)

	VirtualCursorSingleton = self

	return self
end

GamepadService:GetPropertyChangedSignal("GamepadCursorEnabled"):Connect(function()
	local state = GamepadService.GamepadCursorEnabled
	if VirtualCursorSingleton then
		if state then
			local position = UserInputService:GetMouseLocation()
			enableVirtualCursor(position)
		else
			disableVirtualCursor()
		end
	end
end)

UserSettings.Changed:Connect(function(prop)
	if prop == "GamepadNavigationMode" then
		if VirtualCursorSingleton and VirtualCursorSingleton.Enabled then
			disableVirtualCursor()
		else
			-- turn off ui navigation selection as well
			GuiService.SelectedObject = nil
			VirtualCursorSingleton.SelectedObject = nil
		end
	elseif prop == "GamepadCameraSensitivity" then
		input:SetCurrentSensitivity(UserSettings[prop])
	end
end)

return VirtualCursor.new()
