--!nonstrict
-- This package is DEPRECATED, per https://roblox.atlassian.net/browse/UIBLOX-2597
-- Virtual Cursor has been moved to lua-apps/modules/app-common/virtual-cursor, this location's VC will be deleted after rollout of FFlagUseAppCommonVirtualCursorWithFixes

--[[
	// FileName: GamepadVirtualCursor.lua
	// Written by: dangel (Garnold)
	// Description: Implementation of the Virtual Cursor selection mode for gamepads
]]

local VirtualCursorFolder = script.Parent

local GuiService = game:GetService("GuiService")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local GamepadService = game:GetService("GamepadService")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

-- Submodules
local input = require(VirtualCursorFolder:WaitForChild("Input"))
local interface = require(VirtualCursorFolder:WaitForChild("Interface"))
local onRenderStep = require(VirtualCursorFolder:WaitForChild("OnRenderStep"))

local getFFlagPointAndClickCursor = require(VirtualCursorFolder:WaitForChild("getFFlagPointAndClickCursor"))
local FFlagPointAndClickCursor = getFFlagPointAndClickCursor()

-- There should only be one instance of virtual cursor.
-- This will allow it to stay a class, while also still being able to rely on guiservice enabling/disabling
local VirtualCursorSingleton = nil
local lastInputTypeChangedEventConnection = nil
local menuOpenedEventConnection = nil
local wasDisabledFromOtherInput = false

local bindToRenderStepName = "VirtualCursorStepped"

local function enableVirtualCursor(position)
	if not VirtualCursorSingleton then return end
	position = position or VirtualCursorSingleton.CursorPosition

	VirtualCursorSingleton.Enabled = true
	VirtualCursorSingleton.CursorPosition = position

	interface:EnableUI(position)
	GamepadService:SetGamepadCursorPosition(position)
	input:EnableInput()
	if FFlagPointAndClickCursor then
		input:DisablePreview()
	end

	RunService:BindToRenderStep(bindToRenderStepName, Enum.RenderPriority.Input.Value + 1, VirtualCursorSingleton.OnRenderStep)
	
	menuOpenedEventConnection = GuiService.MenuOpened:Connect(function()
		GamepadService.GamepadCursorEnabled = false
	end)
end

local function disableVirtualCursor()
	if not VirtualCursorSingleton.Enabled then 
		return 
	end

	-- disconnect events
	menuOpenedEventConnection:Disconnect()
	menuOpenedEventConnection = nil
	VirtualCursorSingleton.PreviouslySelectedObject = nil

	interface:DisableUI()
	input:DisableInput()
	if FFlagPointAndClickCursor then
		input:EnablePreview()
	end

	RunService:UnbindFromRenderStep(bindToRenderStepName)

	if VirtualCursorSingleton.SelectedObject then
		GuiService.SelectedObject = nil -- if we are in hybrid, rely on the engine to handle this
		GuiService.SelectedCoreObject = nil
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

function VirtualCursor.new()
	local self = {
		Enabled = false,
		CursorPosition = Vector2.new(),
		SelectedObject = nil,
		PreviouslySelectedObject = nil,
	}

	self.OnRenderStep = function(delta)
		onRenderStep(self, delta)
	end

	lastInputTypeChangedEventConnection = UserInputService.LastInputTypeChanged:Connect(function(inputType)
		if inputType ~= Enum.UserInputType.Gamepad1 and inputType ~= Enum.UserInputType.Focus and GamepadService.GamepadCursorEnabled then
			GamepadService.GamepadCursorEnabled = false
			wasDisabledFromOtherInput = true
		elseif inputType == Enum.UserInputType.Gamepad1 and wasDisabledFromOtherInput then
			GamepadService.GamepadCursorEnabled = true
			wasDisabledFromOtherInput = false
		end
	end)

	if FFlagPointAndClickCursor then
		input:EnablePreview()
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

return VirtualCursor.new()
