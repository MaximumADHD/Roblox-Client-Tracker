--[[
	// FileName: Thumbpad
	// Version 1.0
	// Written by: jmargh
	// Description: Implements thumbpad controls for touch devices
--]]

local Players = game:GetService('Players')
local UserInputService = game:GetService('UserInputService')
local GuiService = game:GetService('GuiService')

local Thumbpad = {}

local MasterControl = require(script.Parent)

--[[ Script Variables ]]--
while not Players.LocalPlayer do
	wait()
end
local LocalPlayer = Players.LocalPlayer
local ThumbpadFrame = nil
local TouchObject = nil
local OnInputEnded = nil	-- is defined in Create()
local OnTouchChangedCn = nil
local OnTouchEndedCn = nil
local currentMoveVector = Vector3.new(0,0,0)

--[[ Constants ]]--
local DPAD_SHEET = "rbxasset://textures/ui/DPadSheet.png"
local TOUCH_CONTROL_SHEET = "rbxasset://textures/ui/TouchControlsSheet.png"

--[[ Local Functions ]]--
local function createArrowLabel(name, parent, position, size, rectOffset, rectSize)
	local image = Instance.new('ImageLabel')
	image.Name = name
	image.Image = DPAD_SHEET
	image.ImageRectOffset = rectOffset
	image.ImageRectSize = rectSize
	image.BackgroundTransparency = 1
	image.ImageColor3 = Color3.new(190/255, 190/255, 190/255)
	image.Size = size
	image.Position = position
	image.Parent = parent
	
	return image
end

--[[ Public API ]]--
function Thumbpad:Enable()
	ThumbpadFrame.Visible = true
end

function Thumbpad:Disable()
	ThumbpadFrame.Visible = false
	OnInputEnded()
end

function Thumbpad:Create(parentFrame)
	if ThumbpadFrame then
		ThumbpadFrame:Destroy()
		ThumbpadFrame = nil
		if OnTouchChangedCn then
			OnTouchChangedCn:disconnect()
			OnTouchChangedCn = nil
		end
		if OnTouchEndedCn then
			OnTouchEndedCn:disconnect()
			OnTouchEndedCn = nil
		end
	end
	
	local minAxis = math.min(parentFrame.AbsoluteSize.x, parentFrame.AbsoluteSize.y)
	local isSmallScreen = minAxis <= 500
	local thumbpadSize = isSmallScreen and 70 or 120
	local position = isSmallScreen and UDim2.new(0, thumbpadSize * 1.25, 1, -thumbpadSize - 20) or
		UDim2.new(0, thumbpadSize/2 - 10, 1, -thumbpadSize * 1.75 - 10)
	
	ThumbpadFrame = Instance.new('Frame')
	ThumbpadFrame.Name = "ThumbpadFrame"
	ThumbpadFrame.Visible = false
	ThumbpadFrame.Active = true
	ThumbpadFrame.Size = UDim2.new(0, thumbpadSize + 20, 0, thumbpadSize + 20)
	ThumbpadFrame.Position = position
	ThumbpadFrame.BackgroundTransparency = 1
	
	local outerImage = Instance.new('ImageLabel')
	outerImage.Name = "OuterImage"
	outerImage.Image = TOUCH_CONTROL_SHEET
	outerImage.ImageRectOffset = Vector2.new(0, 0)
	outerImage.ImageRectSize = Vector2.new(220, 220)
	outerImage.BackgroundTransparency = 1
	outerImage.Size = UDim2.new(0, thumbpadSize, 0, thumbpadSize)
	outerImage.Position = UDim2.new(0, 10, 0, 10)
	outerImage.Parent = ThumbpadFrame
	
	local smArrowSize = isSmallScreen and UDim2.new(0, 32, 0, 32) or UDim2.new(0, 64, 0, 64)
	local lgArrowSize = UDim2.new(0, smArrowSize.X.Offset * 2, 0, smArrowSize.Y.Offset * 2)
	local imgRectSize = Vector2.new(110, 110)
	local smImgOffset = isSmallScreen and -4 or -9
	local lgImgOffset = isSmallScreen and -28 or -55
	
	local dArrow = createArrowLabel("DownArrow", outerImage, UDim2.new(0.5, -smArrowSize.X.Offset/2, 1, lgImgOffset), smArrowSize, Vector2.new(8, 8), imgRectSize)
	local uArrow = createArrowLabel("UpArrow", outerImage, UDim2.new(0.5, -smArrowSize.X.Offset/2, 0, smImgOffset), smArrowSize, Vector2.new(8, 266), imgRectSize)
	local lArrow = createArrowLabel("LeftArrow", outerImage, UDim2.new(0, smImgOffset, 0.5, -smArrowSize.Y.Offset/2), smArrowSize, Vector2.new(137, 137), imgRectSize)
	local rArrow = createArrowLabel("RightArrow", outerImage, UDim2.new(1, lgImgOffset, 0.5, -smArrowSize.Y.Offset/2), smArrowSize, Vector2.new(8, 137), imgRectSize)
	
	local function doTween(guiObject, endSize, endPosition)
		guiObject:TweenSizeAndPosition(endSize, endPosition, Enum.EasingDirection.InOut, Enum.EasingStyle.Linear, 0.15, true)
	end
	
	local padOrigin = nil
	local deadZone = 0.1
	local isRight, isLeft, isUp, isDown = false, false, false, false
	local vForward = Vector3.new(0, 0, -1)
	local vRight = Vector3.new(1, 0, 0)
	local function doMove(pos)
		MasterControl:AddToPlayerMovement(-currentMoveVector)
		
		local delta = Vector2.new(pos.x, pos.y) - padOrigin
		currentMoveVector = delta / (thumbpadSize/2)
		
		-- Scaled Radial Dead Zone
		local inputAxisMagnitude = currentMoveVector.magnitude
		if inputAxisMagnitude < deadZone then
			currentMoveVector = Vector3.new(0, 0, 0)
		else
			currentMoveVector = currentMoveVector.unit * ((inputAxisMagnitude - deadZone) / (1 - deadZone))
			-- catch possible NAN Vector
			if currentMoveVector.magnitude == 0 then
				currentMoveVector = Vector3.new(0, 0, 0)
			else
				currentMoveVector = Vector3.new(currentMoveVector.x, 0, currentMoveVector.y).unit
			end
		end
		
		MasterControl:AddToPlayerMovement(currentMoveVector)
		
		local forwardDot = currentMoveVector:Dot(vForward)
		local rightDot = currentMoveVector:Dot(vRight)
		if forwardDot > 0.5 then		-- UP
			if not isUp then
				isUp, isDown = true, false
				doTween(uArrow, lgArrowSize, UDim2.new(0.5, -smArrowSize.X.Offset, 0, smImgOffset - smArrowSize.Y.Offset * 1.5))
				doTween(dArrow, smArrowSize, UDim2.new(0.5, -smArrowSize.X.Offset/2, 1, lgImgOffset))
			end
		elseif forwardDot < -0.5 then	-- DOWN
			if not isDown then
				isDown, isUp = true, false
				doTween(dArrow, lgArrowSize, UDim2.new(0.5, -smArrowSize.X.Offset, 1, lgImgOffset + smArrowSize.Y.Offset/2))
				doTween(uArrow, smArrowSize, UDim2.new(0.5, -smArrowSize.X.Offset/2, 0, smImgOffset))
			end
		else
			isUp, isDown = false, false
			doTween(dArrow, smArrowSize, UDim2.new(0.5, -smArrowSize.X.Offset/2, 1, lgImgOffset))
			doTween(uArrow, smArrowSize, UDim2.new(0.5, -smArrowSize.X.Offset/2, 0, smImgOffset))
		end
		
		if rightDot > 0.5 then
			if not isRight then
				isRight, isLeft = true, false
				doTween(rArrow, lgArrowSize, UDim2.new(1, lgImgOffset + smArrowSize.X.Offset/2, 0.5, -smArrowSize.Y.Offset))
				doTween(lArrow, smArrowSize, UDim2.new(0, smImgOffset, 0.5, -smArrowSize.Y.Offset/2))
			end
		elseif rightDot < -0.5 then
			if not isLeft then
				isLeft, isRight = true, false
				doTween(lArrow, lgArrowSize, UDim2.new(0, smImgOffset - smArrowSize.X.Offset * 1.5, 0.5, -smArrowSize.Y.Offset))
				doTween(rArrow, smArrowSize, UDim2.new(1, lgImgOffset, 0.5, -smArrowSize.Y.Offset/2))
			end
		else
			isRight, isLeft = false, false
			doTween(lArrow, smArrowSize, UDim2.new(0, smImgOffset, 0.5, -smArrowSize.Y.Offset/2))
			doTween(rArrow, smArrowSize, UDim2.new(1, lgImgOffset, 0.5, -smArrowSize.Y.Offset/2))
		end
	end
	
	--input connections
	ThumbpadFrame.InputBegan:connect(function(inputObject)
		--A touch that starts elsewhere on the screen will be sent to a frame's InputBegan event
		--if it moves over the frame. So we check that this is actually a new touch (inputObject.UserInputState ~= Enum.UserInputState.Begin)
		if TouchObject or inputObject.UserInputType ~= Enum.UserInputType.Touch
			or inputObject.UserInputState ~= Enum.UserInputState.Begin then
			return
		end
		
		ThumbpadFrame.Position = UDim2.new(0, inputObject.Position.x - ThumbpadFrame.AbsoluteSize.x/2, 0, inputObject.Position.y - ThumbpadFrame.Size.Y.Offset/2)
		padOrigin = Vector2.new(ThumbpadFrame.AbsolutePosition.x + ThumbpadFrame.AbsoluteSize.x/2,
			ThumbpadFrame.AbsolutePosition.y + ThumbpadFrame.AbsoluteSize.y/2)
		doMove(inputObject.Position)
		TouchObject = inputObject
	end)
	
	OnTouchChangedCn = UserInputService.TouchMoved:connect(function(inputObject, isProcessed)
		if inputObject == TouchObject then
			doMove(TouchObject.Position)
		end
	end)
	
	OnInputEnded = function()
		MasterControl:AddToPlayerMovement(-currentMoveVector)
		currentMoveVector = Vector3.new(0,0,0)
		MasterControl:SetIsJumping(false)

		ThumbpadFrame.Position = position
		TouchObject = nil
		isUp, isDown, isLeft, isRight = false, false, false, false
		doTween(dArrow, smArrowSize, UDim2.new(0.5, -smArrowSize.X.Offset/2, 1, lgImgOffset))
		doTween(uArrow, smArrowSize, UDim2.new(0.5, -smArrowSize.X.Offset/2, 0, smImgOffset))
		doTween(lArrow, smArrowSize, UDim2.new(0, smImgOffset, 0.5, -smArrowSize.Y.Offset/2))
		doTween(rArrow, smArrowSize, UDim2.new(1, lgImgOffset, 0.5, -smArrowSize.Y.Offset/2))
	end
	
	OnTouchEndedCn = UserInputService.TouchEnded:connect(function(inputObject)
		if inputObject == TouchObject then
			OnInputEnded()
		end
	end)
	
	GuiService.MenuOpened:connect(function()
		if TouchObject then
			OnInputEnded()
		end
	end)	
	
	ThumbpadFrame.Parent = parentFrame
end

return Thumbpad
