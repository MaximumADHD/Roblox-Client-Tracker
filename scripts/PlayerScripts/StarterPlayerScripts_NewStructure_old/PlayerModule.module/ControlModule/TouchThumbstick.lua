--[[
	
	TouchThumbstick
	
--]]
local Players = game:GetService("Players")
local GuiService = game:GetService("GuiService")
local UserInputService = game:GetService("UserInputService")
--[[ Constants ]]--
local ZERO_VECTOR3 = Vector3.new(0,0,0)
local TOUCH_CONTROL_SHEET = "rbxasset://textures/ui/TouchControlsSheet.png"
--[[ The Module ]]--
local BaseCharacterController = require(script.Parent:WaitForChild("BaseCharacterController"))
local TouchThumbstick = setmetatable({}, BaseCharacterController)
TouchThumbstick.__index = TouchThumbstick
function TouchThumbstick.new()
	local self = setmetatable(BaseCharacterController.new(), TouchThumbstick)
	
	self.isFollowStick = false
	
	self.thumbstickFrame = nil
	self.moveTouchObject = nil
	self.onTouchMovedConn = nil
	self.onTouchEndedConn = nil
	self.screenPos = nil
	self.stickImage = nil
	self.thumbstickSize = nil -- Float
	
	return self
end
function TouchThumbstick:Enable(enable, uiParentFrame)
	if enable == nil then return false end			-- If nil, return false (invalid argument)
	enable = enable and true or false				-- Force anything non-nil to boolean before comparison
	if self.enabled == enable then return true end	-- If no state change, return true indicating already in requested state
	
	self.moveVector = ZERO_VECTOR3
	self.isJumping = false
	
	if enable then
		-- Enable
		if not self.thumbstickFrame then
			self:Create(uiParentFrame)
		end
		self.thumbstickFrame.Visible = true
	else 
		-- Disable
		self.thumbstickFrame.Visible = false
		self:OnInputEnded()
	end
	self.enabled = enable
end
function TouchThumbstick:OnInputEnded()
	self.thumbstickFrame.Position = self.screenPos
	self.stickImage.Position = UDim2.new(0, self.thumbstickFrame.Size.X.Offset/2 - self.thumbstickSize/4, 0, self.thumbstickFrame.Size.Y.Offset/2 - self.thumbstickSize/4)
	
	self.moveVector = ZERO_VECTOR3
	self.isJumping = false
	self.thumbstickFrame.Position = self.screenPos
	self.moveTouchObject = nil
end
function TouchThumbstick:Create(parentFrame)
	
	if self.thumbstickFrame then
		self.thumbstickFrame:Destroy()
		self.thumbstickFrame = nil
		if self.onTouchMovedConn then
			self.onTouchMovedConn:Disconnect()
			self.onTouchMovedConn = nil
		end
		if self.onTouchEndedConn then
			self.onTouchEndedConn:Disconnect()
			self.onTouchEndedConn = nil
		end
	end
	
	local minAxis = math.min(parentFrame.AbsoluteSize.x, parentFrame.AbsoluteSize.y)
	local isSmallScreen = minAxis <= 500
	self.thumbstickSize = isSmallScreen and 70 or 120
	self.screenPos = isSmallScreen and UDim2.new(0, (self.thumbstickSize/2) - 10, 1, -self.thumbstickSize - 20) or
		UDim2.new(0, self.thumbstickSize/2, 1, -self.thumbstickSize * 1.75)
		
	self.thumbstickFrame = Instance.new("Frame")
	self.thumbstickFrame.Name = "ThumbstickFrame"
	self.thumbstickFrame.Active = true
	self.thumbstickFrame.Visible = false
	self.thumbstickFrame.Size = UDim2.new(0, self.thumbstickSize, 0, self.thumbstickSize)
	self.thumbstickFrame.Position = self.screenPos
	self.thumbstickFrame.BackgroundTransparency = 1
	
	local outerImage = Instance.new("ImageLabel")
	outerImage.Name = "OuterImage"
	outerImage.Image = TOUCH_CONTROL_SHEET
	outerImage.ImageRectOffset = Vector2.new()
	outerImage.ImageRectSize = Vector2.new(220, 220)
	outerImage.BackgroundTransparency = 1
	outerImage.Size = UDim2.new(0, self.thumbstickSize, 0, self.thumbstickSize)
	outerImage.Position = UDim2.new(0, 0, 0, 0)
	outerImage.Parent = self.thumbstickFrame
	
	self.stickImage = Instance.new("ImageLabel")
	self.stickImage.Name = "StickImage"
	self.stickImage.Image = TOUCH_CONTROL_SHEET
	self.stickImage.ImageRectOffset = Vector2.new(220, 0)
	self.stickImage.ImageRectSize = Vector2.new(111, 111)
	self.stickImage.BackgroundTransparency = 1
	self.stickImage.Size = UDim2.new(0, self.thumbstickSize/2, 0, self.thumbstickSize/2)
	self.stickImage.Position = UDim2.new(0, self.thumbstickSize/2 - self.thumbstickSize/4, 0, self.thumbstickSize/2 - self.thumbstickSize/4)
	self.stickImage.ZIndex = 2
	self.stickImage.Parent = self.thumbstickFrame
	
	local centerPosition = nil
	local deadZone = 0.05
	
	local function DoMove(direction)
		
		local currentMoveVector = direction / (self.thumbstickSize/2)
		
		-- Scaled Radial Dead Zone
		local inputAxisMagnitude = currentMoveVector.magnitude
		if inputAxisMagnitude < deadZone then
			currentMoveVector = Vector3.new()
		else
			currentMoveVector = currentMoveVector.unit * ((inputAxisMagnitude - deadZone) / (1 - deadZone))
			-- NOTE: Making currentMoveVector a unit vector will cause the player to instantly go max speed
			-- must check for zero length vector is using unit
			currentMoveVector = Vector3.new(currentMoveVector.x, 0, currentMoveVector.y)
		end
		
		self.moveVector = currentMoveVector
	end
	
	local function MoveStick(pos)
		local relativePosition = Vector2.new(pos.x - centerPosition.x, pos.y - centerPosition.y)
		local length = relativePosition.magnitude
		local maxLength = self.thumbstickFrame.AbsoluteSize.x/2
		if self.isFollowStick and length > maxLength then
			local offset = relativePosition.unit * maxLength
			self.thumbstickFrame.Position = UDim2.new(
				0, pos.x - self.thumbstickFrame.AbsoluteSize.x/2 - offset.x,
				0, pos.y - self.thumbstickFrame.AbsoluteSize.y/2 - offset.y)
		else
			length = math.min(length, maxLength)
			relativePosition = relativePosition.unit * length
		end
		self.stickImage.Position = UDim2.new(0, relativePosition.x + self.stickImage.AbsoluteSize.x/2, 0, relativePosition.y + self.stickImage.AbsoluteSize.y/2)
	end
	
	-- input connections
	self.thumbstickFrame.InputBegan:Connect(function(inputObject)
		--A touch that starts elsewhere on the screen will be sent to a frame's InputBegan event
		--if it moves over the frame. So we check that this is actually a new touch (inputObject.UserInputState ~= Enum.UserInputState.Begin)
		if self.moveTouchObject or inputObject.UserInputType ~= Enum.UserInputType.Touch
			or inputObject.UserInputState ~= Enum.UserInputState.Begin then
			return
		end
		
		self.moveTouchObject = inputObject
		self.thumbstickFrame.Position = UDim2.new(0, inputObject.Position.x - self.thumbstickFrame.Size.X.Offset/2, 0, inputObject.Position.y - self.thumbstickFrame.Size.Y.Offset/2)
		centerPosition = Vector2.new(self.thumbstickFrame.AbsolutePosition.x + self.thumbstickFrame.AbsoluteSize.x/2,
			self.thumbstickFrame.AbsolutePosition.y + self.thumbstickFrame.AbsoluteSize.y/2)
		local direction = Vector2.new(inputObject.Position.x - centerPosition.x, inputObject.Position.y - centerPosition.y)
	end)
	
	self.onTouchMovedConn = UserInputService.TouchMoved:Connect(function(inputObject, isProcessed)
		if inputObject == self.moveTouchObject then
			centerPosition = Vector2.new(self.thumbstickFrame.AbsolutePosition.x + self.thumbstickFrame.AbsoluteSize.x/2,
				self.thumbstickFrame.AbsolutePosition.y + self.thumbstickFrame.AbsoluteSize.y/2)
			local direction = Vector2.new(inputObject.Position.x - centerPosition.x, inputObject.Position.y - centerPosition.y)
			DoMove(direction)
			MoveStick(inputObject.Position)
		end
	end)
	
	self.onTouchEndedConn = UserInputService.TouchEnded:Connect(function(inputObject, isProcessed)
		if inputObject == self.moveTouchObject then
			self:OnInputEnded()
		end
	end)
	
	GuiService.MenuOpened:Connect(function()
		if self.moveTouchObject then
			self:OnInputEnded()
		end
	end)	
	
	self.thumbstickFrame.Parent = parentFrame
end
return TouchThumbstick