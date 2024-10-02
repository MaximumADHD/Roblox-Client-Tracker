--!nonstrict
--[[
	// FileName: TouchJump
	// Version 1.0
	// Written by: jmargh
	// Description: Implements jump controls for touch devices. Use with Thumbstick and Thumbpad
--]]

local Players = game:GetService("Players")
local GuiService = game:GetService("GuiService")

local CommonUtils = script.Parent.Parent:WaitForChild("CommonUtils")
local FlagUtil = require(CommonUtils:WaitForChild("FlagUtil"))

local FFlagUserUpdateTouchJump = FlagUtil.getUserFlag("UserUpdateTouchJump")
local ConnectionUtil
local CharacterUtil
if FFlagUserUpdateTouchJump then
	ConnectionUtil = require(CommonUtils:WaitForChild("ConnectionUtil"))
	CharacterUtil = require(CommonUtils:WaitForChild("CharacterUtil"))
end

local TOUCH_CONTROL_SHEET = "rbxasset://textures/ui/Input/TouchControlsSheetV2.png"
local CONNECTIONS = {
	HUMANOID_STATE_ENABLED_CHANGED = "HUMANOID_STATE_ENABLED_CHANGED",
	HUMANOID_JUMP_POWER = "HUMANOID_JUMP_POWER",
	HUMANOID = "HUMANOID",
	JUMP_INPUT_ENDED = "JUMP_INPUT_ENDED",
	MENU_OPENED = "MENU_OPENED",
}

type TouchJumpClass = {
	new: () -> TouchJump,

	-- resets the state of the class, does not affect enable/disable status.
	-- Does not disconnect or create new connections.
	_reset: (self: TouchJump) -> (),
	-- checks the relevant APIs that may change the state of the module and adds connects
	-- to checks for changes
	_setupConfigurations: (self: TouchJump) -> (),
}

export type TouchJump = typeof(setmetatable({} :: {
	_connectionUtil: any -- ConnectionUtil.ConnectionUtil,

}, {} :: TouchJumpClass))


--[[ The Module ]]--
local BaseCharacterController = require(script.Parent:WaitForChild("BaseCharacterController"))
local TouchJump = setmetatable({}, BaseCharacterController)
TouchJump.__index = TouchJump

function TouchJump.new()
	local self = setmetatable(BaseCharacterController.new() :: any, TouchJump)

	self.parentUIFrame = nil
	self.jumpButton = nil

	if not FFlagUserUpdateTouchJump then
		self.characterAddedConn = nil -- remove with FFlagUserUpdateTouchJump
		self.humanoidStateEnabledChangedConn = nil -- remove with FFlagUserUpdateTouchJump
		self.humanoidJumpPowerConn = nil -- remove with FFlagUserUpdateTouchJump
		self.humanoidParentConn = nil -- remove with FFlagUserUpdateTouchJump
		self.jumpPower = 0 -- remove with FFlagUserUpdateTouchJump
		self.jumpStateEnabled = true -- remove with FFlagUserUpdateTouchJump
		self.humanoid = nil -- saved reference because property change connections are made using it - remove with FFlagUserUpdateTouchJump
	end

	self.externallyEnabled = false
	self.isJumping = false
	if FFlagUserUpdateTouchJump then
		self._connectionUtil = ConnectionUtil.new()
	end

	return self
end

if FFlagUserUpdateTouchJump then
function TouchJump:_reset()
	self.isJumping = false
	self.touchObject = nil
	if self.jumpButton then
		self.jumpButton.ImageRectOffset = Vector2.new(1, 146)
	end
end
end

function TouchJump:EnableButton(enable)
	if FFlagUserUpdateTouchJump then
		if enable then
			if not self.jumpButton then
				self:Create()
			end
			self.jumpButton.Visible = true

			-- input connections
			-- stop jumping connection
			self._connectionUtil:trackConnection(
				CONNECTIONS.JUMP_INPUT_ENDED,
				self.jumpButton.InputEnded:Connect(function(inputObject)
					if inputObject == self.touchObject then
						self:_reset()
					end
				end)
			)

			-- stop jumping on menu open
			self._connectionUtil:trackConnection(
				CONNECTIONS.MENU_OPENED,
				GuiService.MenuOpened:Connect(function()
					if self.touchObject then
						self:_reset()
					end
				end)
			)
		else
			if self.jumpButton then
				self.jumpButton.Visible = false
			end
			self._connectionUtil:disconnect(CONNECTIONS.JUMP_INPUT_ENDED)
			self._connectionUtil:disconnect(CONNECTIONS.MENU_OPENED)
		end
		self:_reset()
	else
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
			self.touchObject = nil
			self.isJumping = false
			self.jumpButton.ImageRectOffset = Vector2.new(1, 146)
		end
	end
end

function TouchJump:UpdateEnabled()
	if FFlagUserUpdateTouchJump then
		local humanoid = CharacterUtil.getChild("Humanoid", "Humanoid") 
		if humanoid and self.externallyEnabled and humanoid.JumpPower > 0 and humanoid:GetStateEnabled(Enum.HumanoidStateType.Jumping) then
			self:EnableButton(true)
		else
			self:EnableButton(false)
		end
	else
		if self.jumpPower > 0 and self.jumpStateEnabled then
			self:EnableButton(true)
		else
			self:EnableButton(false)
		end
	end
end

if FFlagUserUpdateTouchJump then
	function TouchJump:_setupConfigurations()
		local function update()
			self:UpdateEnabled()
		end

		-- listen to jump APIs on the humanoid
		local humanoidConnection = CharacterUtil.onChild("Humanoid", "Humanoid", function(humanoid)
			update()
			self._connectionUtil:trackConnection(
				CONNECTIONS.HUMANOID_JUMP_POWER,
				humanoid:GetPropertyChangedSignal("JumpPower"):Connect(update)
			)
			self._connectionUtil:trackConnection(
				CONNECTIONS.HUMANOID_STATE_ENABLED_CHANGED,
				humanoid.StateEnabledChanged:Connect(update)
			)
		end)
		self._connectionUtil:trackConnection(CONNECTIONS.HUMANOID, humanoidConnection)
	end
end

if not FFlagUserUpdateTouchJump then
	function TouchJump:HumanoidChanged(prop) -- remove with FFlagUserUpdateTouchJump
		local humanoid = Players.LocalPlayer.Character
			and Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
		if humanoid then
			if prop == "JumpPower" then
				self.jumpPower = humanoid.JumpPower
				self:UpdateEnabled()
			elseif prop == "Parent" then
				if not humanoid.Parent then
					self.humanoidChangeConn:Disconnect()
				end
			end
		end
	end

	function TouchJump:HumanoidStateEnabledChanged(state, isEnabled) -- remove with FFlagUserUpdateTouchJump
		if state == Enum.HumanoidStateType.Jumping then
			self.jumpStateEnabled = isEnabled
			self:UpdateEnabled()
		end
	end

	function TouchJump:CharacterAdded(char) -- remove with FFlagUserUpdateTouchJump
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
			self.jumpPower = self.humanoid.JumpPower
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

	function TouchJump:SetupCharacterAddedFunction() -- remove with FFlagUserUpdateTouchJump
		self.characterAddedConn = Players.LocalPlayer.CharacterAdded:Connect(function(char)
			self:CharacterAdded(char)
		end)
		if Players.LocalPlayer.Character then
			self:CharacterAdded(Players.LocalPlayer.Character)
		end
	end
end

function TouchJump:Enable(enable, parentFrame)
	if parentFrame then
		self.parentUIFrame = parentFrame
	end
	self.externallyEnabled = enable
	if FFlagUserUpdateTouchJump then
		self:UpdateEnabled()

		if enable then
			self:_setupConfigurations()
		else
			self._connectionUtil:disconnectAll()
		end
	else
		self:EnableButton(enable)
	end
end

function TouchJump:Create()
	if not self.parentUIFrame then
		return
	end

	if self.jumpButton then
		self.jumpButton:Destroy()
		self.jumpButton = nil
	end

	if self.absoluteSizeChangedConn then
		self.absoluteSizeChangedConn:Disconnect()
		self.absoluteSizeChangedConn = nil
	end

	self.jumpButton = Instance.new("ImageButton")
	self.jumpButton.Name = "JumpButton"
	self.jumpButton.Visible = false
	self.jumpButton.BackgroundTransparency = 1
	self.jumpButton.Image = TOUCH_CONTROL_SHEET
	self.jumpButton.ImageRectOffset = Vector2.new(1, 146)
	self.jumpButton.ImageRectSize = Vector2.new(144, 144)
	
	local function ResizeJumpButton()
		local minAxis = math.min(self.parentUIFrame.AbsoluteSize.x, self.parentUIFrame.AbsoluteSize.y)
		local isSmallScreen = minAxis <= 500
		local jumpButtonSize = isSmallScreen and 70 or 120

		self.jumpButton.Size = UDim2.new(0, jumpButtonSize, 0, jumpButtonSize)
		self.jumpButton.Position = isSmallScreen and UDim2.new(1, -(jumpButtonSize*1.5-10), 1, -jumpButtonSize - 20) or
			UDim2.new(1, -(jumpButtonSize*1.5-10), 1, -jumpButtonSize * 1.75)
	end

	ResizeJumpButton()
	self.absoluteSizeChangedConn = self.parentUIFrame:GetPropertyChangedSignal("AbsoluteSize"):Connect(ResizeJumpButton)

	self.touchObject = nil
	self.jumpButton.InputBegan:connect(function(inputObject)
		--A touch that starts elsewhere on the screen will be sent to a frame's InputBegan event
		--if it moves over the frame. So we check that this is actually a new touch (inputObject.UserInputState ~= Enum.UserInputState.Begin)
		if self.touchObject or inputObject.UserInputType ~= Enum.UserInputType.Touch
			or inputObject.UserInputState ~= Enum.UserInputState.Begin then
			return
		end

		self.touchObject = inputObject
		self.jumpButton.ImageRectOffset = Vector2.new(146, 146)
		self.isJumping = true
	end)

	if not FFlagUserUpdateTouchJump then
		local OnInputEnded = function()
			self.touchObject = nil
			self.isJumping = false
			self.jumpButton.ImageRectOffset = Vector2.new(1, 146)
		end
	
		self.jumpButton.InputEnded:connect(function(inputObject: InputObject)
			if inputObject == self.touchObject then
				OnInputEnded()
			end
		end)
	
		GuiService.MenuOpened:connect(function()
			if self.touchObject then
				OnInputEnded()
			end
		end)

		if not self.characterAddedConn then
			self:SetupCharacterAddedFunction()
		end
	end

	self.jumpButton.Parent = self.parentUIFrame
end

return TouchJump
