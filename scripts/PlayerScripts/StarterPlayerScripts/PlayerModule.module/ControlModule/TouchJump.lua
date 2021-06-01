--[[
	// FileName: TouchJump
	// Version 1.0
	// Written by: jmargh
	// Description: Implements jump controls for touch devices. Use with Thumbstick and Thumbpad
--]]

local Players = game:GetService("Players")
local GuiService = game:GetService("GuiService")

--[[ Constants ]]--
local TOUCH_CONTROL_SHEET = "rbxasset://textures/ui/Input/TouchControlsSheetV2.png"

--[[ The Module ]]--
local BaseCharacterController = require(script.Parent:WaitForChild("BaseCharacterController"))
local TouchJump = setmetatable({}, BaseCharacterController)
TouchJump.__index = TouchJump

function TouchJump.new()
	local self = setmetatable(BaseCharacterController.new(), TouchJump)

	self.parentUIFrame = nil
	self.jumpButton = nil
	self.characterAddedConn = nil
	self.humanoidStateEnabledChangedConn = nil
	self.humanoidJumpPowerConn = nil
	self.humanoidParentConn = nil
	self.externallyEnabled = false
	self.jumpPower = 0
	self.jumpStateEnabled = true
	self.isJumping = false
	self.humanoid = nil -- saved reference because property change connections are made using it

	return self
end

function TouchJump:EnableButton(enable)
	if enable then
		if not self.jumpButton then
			self:Create()
		end
		local humanoid = Players.LocalPlayer.Character and Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
		if humanoid and self.externallyEnabled then
			if self.externallyEnabled then
				if humanoid.JumpPower > 0 then
					self.jumpButton.Visible = true
				end
			end
		end
	else
		self.jumpButton.Visible = false
		self.isJumping = false
		self.jumpButton.ImageRectOffset = Vector2.new(1, 146)
	end
end

function TouchJump:UpdateEnabled()
	if self.jumpPower > 0 and self.jumpStateEnabled then
		self:EnableButton(true)
	else
		self:EnableButton(false)
	end
end

function TouchJump:HumanoidChanged(prop)
	local humanoid = Players.LocalPlayer.Character and Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
	if humanoid then
		if prop == "JumpPower" then
			self.jumpPower =  humanoid.JumpPower
			self:UpdateEnabled()
		elseif prop == "Parent" then
			if not humanoid.Parent then
				self.humanoidChangeConn:Disconnect()
			end
		end
	end
end

function TouchJump:HumanoidStateEnabledChanged(state, isEnabled)
	if state == Enum.HumanoidStateType.Jumping then
		self.jumpStateEnabled = isEnabled
		self:UpdateEnabled()
	end
end

function TouchJump:CharacterAdded(char)
	if self.humanoidChangeConn then
		self.humanoidChangeConn:Disconnect()
		self.humanoidChangeConn = nil
	end

	self.humanoid = char:FindFirstChildOfClass("Humanoid")
	while not self.humanoid do
		char.ChildAdded:wait()
		self.humanoid = char:FindFirstChildOfClass("Humanoid")
	end

	self.humanoidJumpPowerConn = self.humanoid:GetPropertyChangedSignal("JumpPower"):Connect(function()
		self.jumpPower =  self.humanoid.JumpPower
		self:UpdateEnabled()
	end)

	self.humanoidParentConn = self.humanoid:GetPropertyChangedSignal("Parent"):Connect(function()
		if not self.humanoid.Parent then
			self.humanoidJumpPowerConn:Disconnect()
			self.humanoidJumpPowerConn = nil
			self.humanoidParentConn:Disconnect()
			self.humanoidParentConn = nil
		end
	end)

	self.humanoidStateEnabledChangedConn = self.humanoid.StateEnabledChanged:Connect(function(state, enabled)
		self:HumanoidStateEnabledChanged(state, enabled)
	end)

	self.jumpPower = self.humanoid.JumpPower
	self.jumpStateEnabled = self.humanoid:GetStateEnabled(Enum.HumanoidStateType.Jumping)
	self:UpdateEnabled()
end

function TouchJump:SetupCharacterAddedFunction()
	self.characterAddedConn = Players.LocalPlayer.CharacterAdded:Connect(function(char)
		self:CharacterAdded(char)
	end)
	if Players.LocalPlayer.Character then
		self:CharacterAdded(Players.LocalPlayer.Character)
	end
end

function TouchJump:Enable(enable, parentFrame)
	if parentFrame then
		self.parentUIFrame = parentFrame
	end
	self.externallyEnabled = enable
	self:EnableButton(enable)
end

function TouchJump:Create()
	if not self.parentUIFrame then
		return
	end

	if self.jumpButton then
		self.jumpButton:Destroy()
		self.jumpButton = nil
	end

	local minAxis = math.min(self.parentUIFrame.AbsoluteSize.x, self.parentUIFrame.AbsoluteSize.y)
	local isSmallScreen = minAxis <= 500
	local jumpButtonSize = isSmallScreen and 70 or 120

	self.jumpButton = Instance.new("ImageButton")
	self.jumpButton.Name = "JumpButton"
	self.jumpButton.Visible = false
	self.jumpButton.BackgroundTransparency = 1
	self.jumpButton.Image = TOUCH_CONTROL_SHEET
	self.jumpButton.ImageRectOffset = Vector2.new(1, 146)
	self.jumpButton.ImageRectSize = Vector2.new(144, 144)
	self.jumpButton.Size = UDim2.new(0, jumpButtonSize, 0, jumpButtonSize)

    self.jumpButton.Position = isSmallScreen and UDim2.new(1, -(jumpButtonSize*1.5-10), 1, -jumpButtonSize - 20) or
        UDim2.new(1, -(jumpButtonSize*1.5-10), 1, -jumpButtonSize * 1.75)

	local touchObject = nil
	self.jumpButton.InputBegan:connect(function(inputObject)
		--A touch that starts elsewhere on the screen will be sent to a frame's InputBegan event
		--if it moves over the frame. So we check that this is actually a new touch (inputObject.UserInputState ~= Enum.UserInputState.Begin)
		if touchObject or inputObject.UserInputType ~= Enum.UserInputType.Touch
			or inputObject.UserInputState ~= Enum.UserInputState.Begin then
			return
		end

		touchObject = inputObject
		self.jumpButton.ImageRectOffset = Vector2.new(146, 146)
		self.isJumping = true
	end)

	local OnInputEnded = function()
		touchObject = nil
		self.isJumping = false
		self.jumpButton.ImageRectOffset = Vector2.new(1, 146)
	end

	self.jumpButton.InputEnded:connect(function(inputObject)
		if inputObject == touchObject then
			OnInputEnded()
		end
	end)

	GuiService.MenuOpened:connect(function()
		if touchObject then
			OnInputEnded()
		end
	end)

	if not self.characterAddedConn then
		self:SetupCharacterAddedFunction()
	end

	self.jumpButton.Parent = self.parentUIFrame
end

return TouchJump
