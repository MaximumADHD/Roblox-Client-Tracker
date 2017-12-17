--[[
	// FileName: Thumbstick
	// Version 1.0
	// Written by: jmargh
	// Description: Implements thumbstick controls for touch devices
--]]
local Players = game:GetService('Players')
local UserInputService = game:GetService('UserInputService')
local GuiService = game:GetService('GuiService')

local MasterControl = require(script.Parent)

local Thumbstick = {}

--[[ Script Variables ]]--
while not Players.LocalPlayer do
	wait()
end
local LocalPlayer = Players.LocalPlayer
local IsFollowStick = false
local ThumbstickFrame = nil
local MoveTouchObject = nil
local OnTouchEnded = nil		-- defined in Create()
local OnTouchMovedCn = nil
local OnTouchEndedCn = nil
local currentMoveVector = Vector3.new(0,0,0)

--[[ Constants ]]--
local TOUCH_CONTROL_SHEET = "rbxasset://textures/ui/TouchControlsSheet.png"

--[[ Public API ]]--
function Thumbstick:Enable()
	ThumbstickFrame.Visible = true
end

function Thumbstick:Disable()
	ThumbstickFrame.Visible = false
	OnTouchEnded()
end

function Thumbstick:Create(parentFrame)
	if ThumbstickFrame then
		ThumbstickFrame:Destroy()
		ThumbstickFrame = nil
		if OnTouchMovedCn then
			OnTouchMovedCn:disconnect()
			OnTouchMovedCn = nil
		end
		if OnTouchEndedCn then
			OnTouchEndedCn:disconnect()
			OnTouchEndedCn = nil
		end
	end
	
	local minAxis = math.min(parentFrame.AbsoluteSize.x, parentFrame.AbsoluteSize.y)
	local isSmallScreen = minAxis <= 500
	local thumbstickSize = isSmallScreen and 70 or 120
	local position = isSmallScreen and UDim2.new(0, (thumbstickSize/2) - 10, 1, -thumbstickSize - 20) or
		UDim2.new(0, thumbstickSize/2, 1, -thumbstickSize * 1.75)
		
	ThumbstickFrame = Instance.new('Frame')
	ThumbstickFrame.Name = "ThumbstickFrame"
	ThumbstickFrame.Active = true
	ThumbstickFrame.Visible = false
	ThumbstickFrame.Size = UDim2.new(0, thumbstickSize, 0, thumbstickSize)
	ThumbstickFrame.Position = position
	ThumbstickFrame.BackgroundTransparency = 1
	
	local outerImage = Instance.new('ImageLabel')
	outerImage.Name = "OuterImage"
	outerImage.Image = TOUCH_CONTROL_SHEET
	outerImage.ImageRectOffset = Vector2.new()
	outerImage.ImageRectSize = Vector2.new(220, 220)
	outerImage.BackgroundTransparency = 1
	outerImage.Size = UDim2.new(0, thumbstickSize, 0, thumbstickSize)
	outerImage.Position = UDim2.new(0, 0, 0, 0)
	outerImage.Parent = ThumbstickFrame
	
	StickImage = Instance.new('ImageLabel')
	StickImage.Name = "StickImage"
	StickImage.Image = TOUCH_CONTROL_SHEET
	StickImage.ImageRectOffset = Vector2.new(220, 0)
	StickImage.ImageRectSize = Vector2.new(111, 111)
	StickImage.BackgroundTransparency = 1
	StickImage.Size = UDim2.new(0, thumbstickSize/2, 0, thumbstickSize/2)
	StickImage.Position = UDim2.new(0, thumbstickSize/2 - thumbstickSize/4, 0, thumbstickSize/2 - thumbstickSize/4)
	StickImage.ZIndex = 2
	StickImage.Parent = ThumbstickFrame
	
	local centerPosition = nil
	local deadZone = 0.05
	local function doMove(direction)
		MasterControl:AddToPlayerMovement(-currentMoveVector)
		
		currentMoveVector = direction / (thumbstickSize/2)
		
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
		
		MasterControl:AddToPlayerMovement(currentMoveVector)
	end
	
	local function moveStick(pos)
		local relativePosition = Vector2.new(pos.x - centerPosition.x, pos.y - centerPosition.y)
		local length = relativePosition.magnitude
		local maxLength = ThumbstickFrame.AbsoluteSize.x/2
		if IsFollowStick and length > maxLength then
			local offset = relativePosition.unit * maxLength
			ThumbstickFrame.Position = UDim2.new(
				0, pos.x - ThumbstickFrame.AbsoluteSize.x/2 - offset.x,
				0, pos.y - ThumbstickFrame.AbsoluteSize.y/2 - offset.y)
		else
			length = math.min(length, maxLength)
			relativePosition = relativePosition.unit * length
		end
		StickImage.Position = UDim2.new(0, relativePosition.x + StickImage.AbsoluteSize.x/2, 0, relativePosition.y + StickImage.AbsoluteSize.y/2)
	end
	
	-- input connections
	ThumbstickFrame.InputBegan:connect(function(inputObject)
		--A touch that starts elsewhere on the screen will be sent to a frame's InputBegan event
		--if it moves over the frame. So we check that this is actually a new touch (inputObject.UserInputState ~= Enum.UserInputState.Begin)
		if MoveTouchObject or inputObject.UserInputType ~= Enum.UserInputType.Touch
			or inputObject.UserInputState ~= Enum.UserInputState.Begin then
			return
		end
		
		MoveTouchObject = inputObject
		ThumbstickFrame.Position = UDim2.new(0, inputObject.Position.x - ThumbstickFrame.Size.X.Offset/2, 0, inputObject.Position.y - ThumbstickFrame.Size.Y.Offset/2)
		centerPosition = Vector2.new(ThumbstickFrame.AbsolutePosition.x + ThumbstickFrame.AbsoluteSize.x/2,
			ThumbstickFrame.AbsolutePosition.y + ThumbstickFrame.AbsoluteSize.y/2)
		local direction = Vector2.new(inputObject.Position.x - centerPosition.x, inputObject.Position.y - centerPosition.y)
	end)
	
	OnTouchMovedCn = UserInputService.TouchMoved:connect(function(inputObject, isProcessed)
		if inputObject == MoveTouchObject then
			centerPosition = Vector2.new(ThumbstickFrame.AbsolutePosition.x + ThumbstickFrame.AbsoluteSize.x/2,
				ThumbstickFrame.AbsolutePosition.y + ThumbstickFrame.AbsoluteSize.y/2)
			local direction = Vector2.new(inputObject.Position.x - centerPosition.x, inputObject.Position.y - centerPosition.y)
			doMove(direction)
			moveStick(inputObject.Position)
		end
	end)
	
	OnTouchEnded = function()
		ThumbstickFrame.Position = position
		StickImage.Position = UDim2.new(0, ThumbstickFrame.Size.X.Offset/2 - thumbstickSize/4, 0, ThumbstickFrame.Size.Y.Offset/2 - thumbstickSize/4)
		MoveTouchObject = nil
		
		MasterControl:AddToPlayerMovement(-currentMoveVector)
		currentMoveVector = Vector3.new(0,0,0)
		MasterControl:SetIsJumping(false)
	end
	
	OnTouchEndedCn = UserInputService.TouchEnded:connect(function(inputObject, isProcessed)
		if inputObject == MoveTouchObject then
			OnTouchEnded()
		end
	end)
	
	GuiService.MenuOpened:connect(function()
		if MoveTouchObject then
			OnTouchEnded()
		end
	end)	
	
	ThumbstickFrame.Parent = parentFrame
end

return Thumbstick
