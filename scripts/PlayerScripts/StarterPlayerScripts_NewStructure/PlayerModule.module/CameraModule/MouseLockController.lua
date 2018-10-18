--[[
	MouseLockController - Replacement for ShiftLockController, manages use of mouse-locked mode
	2018 Camera Update - AllYourBlox		
--]]

--[[ Constants ]]--
local DEFAULT_MOUSE_LOCK_CURSOR = "rbxasset://textures/MouseLockedCursor.png"

local Util = require(script.Parent:WaitForChild("CameraUtils"))

--[[ Services ]]--
local PlayersService = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local Settings = UserSettings()	-- ignore warning
local GameSettings = Settings.GameSettings
local Mouse = PlayersService.LocalPlayer:GetMouse()

--[[ The Module ]]--
local MouseLockController = {}
MouseLockController.__index = MouseLockController

function MouseLockController.new()
	local self = setmetatable({}, MouseLockController)
	
	self.inputBeganConn = nil
	self.isMouseLocked = false
	self.savedMouseCursor = nil
	self.boundKeys = {Enum.KeyCode.LeftShift, Enum.KeyCode.RightShift} -- defaults
	
	self.mouseLockToggledEvent = Instance.new("BindableEvent")
	
	local boundKeysObj = script:FindFirstChild("BoundKeys")
	if (not boundKeysObj) or (not boundKeysObj:IsA("StringValue")) then
		-- If object with correct name was found, but it's not a StringValue, destroy and replace
		if boundKeysObj then
			boundKeysObj:Destroy()
		end
		
		boundKeysObj = Instance.new("StringValue")
		boundKeysObj.Name = "BoundKeys"
		boundKeysObj.Value = "LeftShift,RightShift"
		boundKeysObj.Parent = script
	end
	
	if boundKeysObj then
		boundKeysObj.Changed:Connect(function(value)
			self:OnBoundKeysObjectChanged(value)
		end)
		self:OnBoundKeysObjectChanged(boundKeysObj.Value) -- Initial setup call
	end
	
	-- Watch for changes to user's ControlMode and ComputerMovementMode settings and update the feature availability accordingly
	GameSettings.Changed:Connect(function(property)
		if property == "ControlMode" or property == "ComputerMovementMode" then
			self:UpdateMouseLockAvailability()
		end
	end)
	
	-- Watch for changes to DevEnableMouseLock and update the feature availability accordingly
	PlayersService.LocalPlayer:GetPropertyChangedSignal("DevEnableMouseLock"):Connect(function()
		self:UpdateMouseLockAvailability()
	end)
	
	-- Watch for changes to DevEnableMouseLock and update the feature availability accordingly
	PlayersService.LocalPlayer:GetPropertyChangedSignal("DevComputerMovementMode"):Connect(function()
		self:UpdateMouseLockAvailability()
	end)
	
	self:UpdateMouseLockAvailability()
	
	return self
end

function MouseLockController:GetIsMouseLocked()
	return self.isMouseLocked
end

function MouseLockController:GetBindableToggleEvent()
	return self.mouseLockToggledEvent.Event
end

function MouseLockController:GetMouseLockOffset()
	local offsetValueObj = script:FindFirstChild("CameraOffset")
	if offsetValueObj and offsetValueObj:IsA("Vector3Value") then
		return offsetValueObj.Value
	else
		-- If CameraOffset object was found but not correct type, destroy
		if offsetValueObj then
			offsetValueObj:Destroy()
		end
		offsetValueObj = Instance.new("Vector3Value")
		offsetValueObj.Name = "CameraOffset"
		offsetValueObj.Value = Vector3.new(1.75,0,0) -- Legacy Default Value
		offsetValueObj.Parent = script
	end
	
	if offsetValueObj and offsetValueObj.Value then
		return offsetValueObj.Value
	end
	
	return Vector3.new(1.75,0,0)
end

function MouseLockController:UpdateMouseLockAvailability()
	local devAllowsMouseLock = PlayersService.LocalPlayer.DevEnableMouseLock
	local devMovementModeIsScriptable = PlayersService.LocalPlayer.DevComputerMovementMode == Enum.DevComputerMovementMode.Scriptable
	local userHasMouseLockModeEnabled = GameSettings.ControlMode == Enum.ControlMode.MouseLockSwitch
	local userHasClickToMoveEnabled =  GameSettings.ComputerMovementMode == Enum.ComputerMovementMode.ClickToMove
	local MouseLockAvailable = devAllowsMouseLock and userHasMouseLockModeEnabled and not userHasClickToMoveEnabled and not devMovementModeIsScriptable
	
	if MouseLockAvailable~=self.enabled then
		self:EnableMouseLock(MouseLockAvailable)
	end
end

function MouseLockController:OnBoundKeysObjectChanged(newValue)
	self.boundKeys = {} -- Overriding defaults, note: possibly with nothing at all if boundKeysObj.Value is "" or contains invalid values
	for token in string.gmatch(newValue,"[^%s,]+") do
		for keyCode, keyEnum in pairs(Enum.KeyCode:GetEnumItems()) do
			if token == keyEnum.Name then
				self.boundKeys[#self.boundKeys+1] = keyEnum
				break
			end
		end
	end
end

--[[ Local Functions ]]--
function MouseLockController:OnMouseLockToggled()
	self.isMouseLocked = not self.isMouseLocked
	
	if self.isMouseLocked then
		local cursorImageValueObj = script:FindFirstChild("CursorImage")
		if cursorImageValueObj and cursorImageValueObj:IsA("StringValue") and cursorImageValueObj.Value then
			self.savedMouseCursor = Mouse.Icon
			Mouse.Icon = cursorImageValueObj.Value
		else
			if cursorImageValueObj then
				cursorImageValueObj:Destroy()
			end
			cursorImageValueObj = Instance.new("StringValue")
			cursorImageValueObj.Name = "CursorImage"
			cursorImageValueObj.Value = DEFAULT_MOUSE_LOCK_CURSOR
			cursorImageValueObj.Parent = script
			self.savedMouseCursor = Mouse.Icon
			Mouse.Icon = DEFAULT_MOUSE_LOCK_CURSOR
		end
	else
		if self.savedMouseCursor then
			Mouse.Icon = self.savedMouseCursor
			self.savedMouseCursor = nil
		end
	end
	
	self.mouseLockToggledEvent:Fire()
end

function MouseLockController:OnInputBegan(input, processed)
	if processed then return end
	
	if input.UserInputType == Enum.UserInputType.Keyboard then
		for _, keyCode in pairs(self.boundKeys) do
			if keyCode == input.KeyCode then
				self:OnMouseLockToggled()
				return
			end
		end
	end
end

function MouseLockController:IsMouseLocked()
	return self.enabled and self.isMouseLocked
end

function MouseLockController:EnableMouseLock(enable)
	if enable~=self.enabled then
		
		self.enabled = enable

		if self.enabled then
			-- Enabling the mode
			if self.inputBeganConn then
				self.inputBeganConn:Disconnect()
			end
			self.inputBeganConn = UserInputService.InputBegan:Connect(function(input, processed)
				self:OnInputBegan(input, processed)
			end)
		else
			-- Disabling
			-- Restore mouse cursor
			if Mouse.Icon~="" then
				Mouse.Icon = ""
			end
			if self.inputBeganConn then
				self.inputBeganConn:Disconnect()
			end
			self.inputBeganConn = nil

			-- If the mode is disabled while being used, fire the event to toggle it off
			if self.isMouseLocked then
				self.mouseLockToggledEvent:Fire()
			end			
			
			self.isMouseLocked = false
		end		
		
	end
end

return MouseLockController
