--[[
	
	TouchThumbpad
	
--]]

local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local GuiService = game:GetService("GuiService")

--[[ Constants ]]--
local DPAD_SHEET = "rbxasset://textures/ui/DPadSheet.png"
local TOUCH_CONTROL_SHEET = "rbxasset://textures/ui/TouchControlsSheet.png"
local ZERO_VECTOR3 = Vector3.new(0,0,0)
local UNIT_Z = Vector3.new(0,0,1)
local UNIT_X = Vector3.new(1,0,0)

--[[ The Module ]]--
local BaseCharacterController = require(script.Parent:WaitForChild("BaseCharacterController"))
local TouchThumbpad = setmetatable({}, BaseCharacterController)
TouchThumbpad.__index = TouchThumbpad

function TouchThumbpad.new()
	local self = setmetatable(BaseCharacterController.new(), TouchThumbpad)
	
	self.thumbpadFrame = nil
	self.touchChangedConn = nil
	self.touchEndedConn = nil
	self.menuOpenedConn = nil
	self.screenPos = nil
	self.isRight, self.isLeft, self.isUp, self.isDown = false, false, false, false
	self.smArrowSize = nil
	self.lgArrowSize = nil
	self.smImgOffset = nil
	self.lgImgOffset = nil
	return self
end

--[[ Local Helper Functions ]]--
local function doTween(guiObject, endSize, endPosition)
	guiObject:TweenSizeAndPosition(endSize, endPosition, Enum.EasingDirection.InOut, Enum.EasingStyle.Linear, 0.15, true)
end

local function CreateArrowLabel(name, position, size, rectOffset, rectSize, parent)
	local image = Instance.new("ImageLabel")
	image.Name = name
	image.Image = DPAD_SHEET
	image.ImageRectOffset = rectOffset
	image.ImageRectSize = rectSize
	image.BackgroundTransparency = 1
	image.ImageColor3 = Color3.fromRGB(190, 190, 190)
	image.Size = size
	image.Position = position
	image.Parent = parent
	return image
end

function TouchThumbpad:Enable(enable, uiParentFrame)
	if enable == nil then return false end			-- If nil, return false (invalid argument)
	enable = enable and true or false				-- Force anything non-nil to boolean before comparison
	if self.enabled == enable then return true end	-- If no state change, return true indicating already in requested state
	
	if enable then
		-- Enable
		if not self.thumbpadFrame then
			self:Create(uiParentFrame)
		end
		self.thumbpadFrame.Visible = true
	else 
		-- Disable
		self.thumbpadFrame.Visible = false
		self:OnInputEnded()
	end
	self.enabled = enable
end
	
function TouchThumbpad:OnInputEnded()
	self.moveVector = Vector3.new(0,0,0)
	self.isJumping = false

	self.thumbpadFrame.Position = self.screenPos
	self.touchObject = nil
	self.isUp, self.isDown, self.isLeft, self.isRight = false, false, false, false
	doTween(self.dArrow, self.smArrowSize, UDim2.new(0.5, -0.5*self.smArrowSize.X.Offset, 1, self.lgImgOffset))
	doTween(self.uArrow, self.smArrowSize, UDim2.new(0.5, -0.5*self.smArrowSize.X.Offset, 0, self.smImgOffset))
	doTween(self.lArrow, self.smArrowSize, UDim2.new(0, self.smImgOffset, 0.5, -0.5*self.smArrowSize.Y.Offset))
	doTween(self.rArrow, self.smArrowSize, UDim2.new(1, self.lgImgOffset, 0.5, -0.5*self.smArrowSize.Y.Offset))
end

function TouchThumbpad:Create(parentFrame)
	if self.thumbpadFrame then
		self.thumbpadFrame:Destroy()
		self.thumbpadFrame = nil
	end
	if self.touchChangedConn then
		self.touchChangedConn:Disconnect()
		self.touchChangedConn = nil
	end
	if self.touchEndedConn then
		self.touchEndedConn:Disconnect()
		self.touchEndedConn = nil
	end
	if self.menuOpenedConn then
		self.menuOpenedConn:Disconnect()
		self.menuOpenedConn = nil
	end
	
	local minAxis = math.min(parentFrame.AbsoluteSize.x, parentFrame.AbsoluteSize.y)
	local isSmallScreen = minAxis <= 500
	local thumbpadSize = isSmallScreen and 70 or 120
	self.screenPos = isSmallScreen and UDim2.new(0, thumbpadSize * 1.25, 1, -thumbpadSize - 20) or
		UDim2.new(0, thumbpadSize * 0.5 - 10, 1, -thumbpadSize * 1.75 - 10)
	
	self.thumbpadFrame = Instance.new("Frame")
	self.thumbpadFrame.Name = "ThumbpadFrame"
	self.thumbpadFrame.Visible = false
	self.thumbpadFrame.Active = true
	self.thumbpadFrame.Size = UDim2.new(0, thumbpadSize + 20, 0, thumbpadSize + 20)
	self.thumbpadFrame.Position = self.screenPos
	self.thumbpadFrame.BackgroundTransparency = 1
	
	local outerImage = Instance.new("ImageLabel")
	outerImage.Name = "OuterImage"
	outerImage.Image = TOUCH_CONTROL_SHEET
	outerImage.ImageRectOffset = Vector2.new(0, 0)
	outerImage.ImageRectSize = Vector2.new(220, 220)
	outerImage.BackgroundTransparency = 1
	outerImage.Size = UDim2.new(0, thumbpadSize, 0, thumbpadSize)
	outerImage.Position = UDim2.new(0, 10, 0, 10)
	outerImage.Parent = self.thumbpadFrame
	
	self.smArrowSize = isSmallScreen and UDim2.new(0, 32, 0, 32) or UDim2.new(0, 64, 0, 64)
	self.lgArrowSize = UDim2.new(0, self.smArrowSize.X.Offset * 2, 0, self.smArrowSize.Y.Offset * 2)
	local imgRectSize = Vector2.new(110, 110)
	self.smImgOffset = isSmallScreen and -4 or -9
	self.lgImgOffset = isSmallScreen and -28 or -55
	
	self.dArrow = CreateArrowLabel("DownArrow", UDim2.new(0.5, -0.5*self.smArrowSize.X.Offset, 1, self.lgImgOffset), self.smArrowSize, Vector2.new(8, 8), imgRectSize, outerImage)
	self.uArrow = CreateArrowLabel("UpArrow", UDim2.new(0.5, -0.5*self.smArrowSize.X.Offset, 0, self.smImgOffset), self.smArrowSize, Vector2.new(8, 266), imgRectSize, outerImage)
	self.lArrow = CreateArrowLabel("LeftArrow", UDim2.new(0, self.smImgOffset, 0.5, -0.5*self.smArrowSize.Y.Offset), self.smArrowSize, Vector2.new(137, 137), imgRectSize, outerImage)
	self.rArrow = CreateArrowLabel("RightArrow", UDim2.new(1, self.lgImgOffset, 0.5, -0.5*self.smArrowSize.Y.Offset), self.smArrowSize, Vector2.new(8, 137), imgRectSize, outerImage)
	
	local function doTween(guiObject, endSize, endPosition)
		guiObject:TweenSizeAndPosition(endSize, endPosition, Enum.EasingDirection.InOut, Enum.EasingStyle.Linear, 0.15, true)
	end
	
	local padOrigin = nil
	local deadZone = 0.1
	self.isRight, self.isLeft, self.isUp, self.isDown = false, false, false, false
	
	local function doMove(pos)
		
		local moveDelta = pos - padOrigin
		local moveVector2 = 2 * moveDelta / thumbpadSize
		
		-- Scaled Radial Dead Zone
		if moveVector2.Magnitude < deadZone then
			self.moveVector = ZERO_VECTOR3
		else
			moveVector2 = moveVector2.unit * ((moveVector2.Magnitude - deadZone) / (1 - deadZone))
			
			-- prevent NAN Vector from trying to do zerovector.Unit
			if moveVector2.Magnitude == 0 then
				self.moveVector = ZERO_VECTOR3
			else
				self.moveVector = Vector3.new(moveVector2.x, 0, moveVector2.y).Unit
			end
		end
		
		local forwardDot = self.moveVector:Dot(-UNIT_Z)
		local rightDot = self.moveVector:Dot(UNIT_X)
		
		if forwardDot > 0.5 then		-- UP
			if not self.isUp then
				self.isUp, self.isDown = true, false
				doTween(self.uArrow, self.lgArrowSize, UDim2.new(0.5, -self.smArrowSize.X.Offset, 0, self.smImgOffset - 1.5*self.smArrowSize.Y.Offset))
				doTween(self.dArrow, self.smArrowSize, UDim2.new(0.5, -0.5*self.smArrowSize.X.Offset, 1, self.lgImgOffset))
			end
		elseif forwardDot < -0.5 then	-- DOWN
			if not self.isDown then
				self.isDown, self.isUp = true, false
				doTween(self.dArrow, self.lgArrowSize, UDim2.new(0.5, -self.smArrowSize.X.Offset, 1, self.lgImgOffset + 0.5*self.smArrowSize.Y.Offset))
				doTween(self.uArrow, self.smArrowSize, UDim2.new(0.5, -0.5*self.smArrowSize.X.Offset, 0, self.smImgOffset))
			end
		else
			self.isUp, self.isDown = false, false
			doTween(self.dArrow, self.smArrowSize, UDim2.new(0.5, -0.5*self.smArrowSize.X.Offset, 1, self.lgImgOffset))
			doTween(self.uArrow, self.smArrowSize, UDim2.new(0.5, -0.5*self.smArrowSize.X.Offset, 0, self.smImgOffset))
		end
		
		if rightDot > 0.5 then
			if not self.isRight then
				self.isRight, self.isLeft = true, false
				doTween(self.rArrow, self.lgArrowSize, UDim2.new(1, self.lgImgOffset + 0.5*self.smArrowSize.X.Offset, 0.5, -self.smArrowSize.Y.Offset))
				doTween(self.lArrow, self.smArrowSize, UDim2.new(0, self.smImgOffset, 0.5, -0.5*self.smArrowSize.Y.Offset))
			end
		elseif rightDot < -0.5 then
			if not self.isLeft then
				self.isLeft, self.isRight = true, false
				doTween(self.lArrow, self.lgArrowSize, UDim2.new(0, self.smImgOffset - 1.5*self.smArrowSize.X.Offset, 0.5, -self.smArrowSize.Y.Offset))
				doTween(self.rArrow, self.smArrowSize, UDim2.new(1, self.lgImgOffset, 0.5, -0.5*self.smArrowSize.Y.Offset))
			end
		else
			self.isRight, self.isLeft = false, false
			doTween(self.lArrow, self.smArrowSize, UDim2.new(0, self.smImgOffset, 0.5, -0.5*self.smArrowSize.Y.Offset))
			doTween(self.rArrow, self.smArrowSize, UDim2.new(1, self.lgImgOffset, 0.5, -0.5*self.smArrowSize.Y.Offset))
		end
	end
	
	--input connections
	self.thumbpadFrame.InputBegan:connect(function(inputObject)
		--A touch that starts elsewhere on the screen will be sent to a frame's InputBegan event
		--if it moves over the frame. So we check that this is actually a new touch (inputObject.UserInputState ~= Enum.UserInputState.Begin)
		if self.touchObject or inputObject.UserInputType ~= Enum.UserInputType.Touch
			or inputObject.UserInputState ~= Enum.UserInputState.Begin then
			return
		end
		
		self.thumbpadFrame.Position = UDim2.new(0, inputObject.Position.x - 0.5*self.thumbpadFrame.AbsoluteSize.x, 0, inputObject.Position.y - 0.5*self.thumbpadFrame.Size.Y.Offset)
		padOrigin = Vector3.new(self.thumbpadFrame.AbsolutePosition.x +0.5* self.thumbpadFrame.AbsoluteSize.x,
			self.thumbpadFrame.AbsolutePosition.y + 0.5*self.thumbpadFrame.AbsoluteSize.y, 0)
		doMove(inputObject.Position)
		self.touchObject = inputObject
	end)
	
	self.touchChangedConn = UserInputService.TouchMoved:connect(function(inputObject, isProcessed)
		if inputObject == self.touchObject then
			doMove(self.touchObject.Position)
		end
	end)
	
	self.touchEndedConn = UserInputService.TouchEnded:Connect(function(inputObject)
		if inputObject == self.touchObject then
			self:OnInputEnded()
		end
	end)
	
	self.menuOpenedConn = GuiService.MenuOpened:Connect(function()
		if self.touchObject then
			self:OnInputEnded()
		end
	end)	
	
	self.thumbpadFrame.Parent = parentFrame
end

return TouchThumbpad
