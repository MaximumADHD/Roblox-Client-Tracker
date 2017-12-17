--[[
	// FileName: DPad
	// Version 1.0
	// Written by: jmargh
	// Description: Implements DPad controls for touch devices
--]]

local Players = game:GetService('Players')
local GuiService = game:GetService('GuiService')

local DPad = {}

local MasterControl = require(script.Parent)

--[[ Script Variables ]]--
while not Players.LocalPlayer do
	wait()
end
local LocalPlayer = Players.LocalPlayer
local DPadFrame = nil
local TouchObject = nil
local OnInputEnded = nil		-- defined in Create()

--[[ Constants ]]--
local DPAD_SHEET = "rbxasset://textures/ui/DPadSheet.png"
local COMPASS_DIR = {
	Vector3.new(1, 0, 0),			-- E
	Vector3.new(1, 0, 1).unit,		-- SE
	Vector3.new(0, 0, 1),			-- S
	Vector3.new(-1, 0, 1).unit,		-- SW
	Vector3.new(-1, 0, 0),			-- W
	Vector3.new(-1, 0, -1).unit,	-- NW
	Vector3.new(0, 0, -1),			-- N
	Vector3.new(1, 0, -1).unit,		-- NE
}

--[[ lua Function Cache ]]--
local ATAN2 = math.atan2
local FLOOR = math.floor
local PI = math.pi

--[[ Local Functions ]]--
local function createArrowLabel(name, position, size, rectOffset, rectSize)
	local image = Instance.new('ImageLabel')
	image.Name = name
	image.Image = DPAD_SHEET
	image.ImageRectOffset = rectOffset
	image.ImageRectSize = rectSize
	image.BackgroundTransparency = 1
	image.Size = size
	image.Position = position
	image.Parent = DPadFrame
	
	return image
end

local function getCenterPosition()
	return Vector2.new(DPadFrame.AbsolutePosition.x + DPadFrame.AbsoluteSize.x/2, DPadFrame.AbsolutePosition.y + DPadFrame.AbsoluteSize.y/2)
end

--[[ Public API ]]--
function DPad:Enable()
	DPadFrame.Visible = true
end

function DPad:Disable()
	DPadFrame.Visible = false
	OnInputEnded()
end

function DPad:Create(parentFrame)
	if DPadFrame then
		DPadFrame:Destroy()
		DPadFrame = nil
	end
	
	local position = UDim2.new(0, 10, 1, -230)
	DPadFrame = Instance.new('Frame')
	DPadFrame.Name = "DPadFrame"
	DPadFrame.Active = true
	DPadFrame.Visible = false
	DPadFrame.Size = UDim2.new(0, 192, 0, 192)
	DPadFrame.Position = position
	DPadFrame.BackgroundTransparency = 1
	
	local smArrowSize = UDim2.new(0, 23, 0, 23)
	local lgArrowSize = UDim2.new(0, 64, 0, 64)
	local smImgOffset = Vector2.new(46, 46)
	local lgImgOffset = Vector2.new(128, 128)
	
	local bBtn = createArrowLabel("BackButton", UDim2.new(0.5, -32, 1, -64), lgArrowSize, Vector2.new(0, 0), lgImgOffset)
	local fBtn = createArrowLabel("ForwardButton", UDim2.new(0.5, -32, 0, 0), lgArrowSize, Vector2.new(0, 258), lgImgOffset)
	local lBtn = createArrowLabel("LeftButton", UDim2.new(0, 0, 0.5, -32), lgArrowSize, Vector2.new(129, 129), lgImgOffset)
	local rBtn = createArrowLabel("RightButton", UDim2.new(1, -64, 0.5, -32), lgArrowSize, Vector2.new(0, 129), lgImgOffset)
	local jumpBtn = createArrowLabel("JumpButton", UDim2.new(0.5, -32, 0.5, -32), lgArrowSize, Vector2.new(129, 0), lgImgOffset)
	local flBtn = createArrowLabel("ForwardLeftButton", UDim2.new(0, 35, 0, 35), smArrowSize, Vector2.new(129, 258), smImgOffset)
	local frBtn = createArrowLabel("ForwardRightButton", UDim2.new(1, -55, 0, 35), smArrowSize, Vector2.new(176, 258), smImgOffset)
	flBtn.Visible = false
	frBtn.Visible = false
	
	-- input connections
	jumpBtn.InputBegan:connect(function(inputObject)
		MasterControl:DoJump()
	end)
	
	local movementVector = Vector3.new(0,0,0)
	local function normalizeDirection(inputPosition)
		local jumpRadius = jumpBtn.AbsoluteSize.x/2
		local centerPosition = getCenterPosition()
		local direction = Vector2.new(inputPosition.x - centerPosition.x, inputPosition.y - centerPosition.y)
		
		if direction.magnitude > jumpRadius then
			local angle = ATAN2(direction.y, direction.x)
			local octant = (FLOOR(8 * angle / (2 * PI) + 8.5)%8) + 1
			movementVector = COMPASS_DIR[octant]
		end
		
		if not flBtn.Visible and movementVector == COMPASS_DIR[7] then
			flBtn.Visible = true
			frBtn.Visible = true
		end
	end
	
	DPadFrame.InputBegan:connect(function(inputObject)
		if TouchObject or inputObject.UserInputType ~= Enum.UserInputType.Touch then
			return
		end
		
		MasterControl:AddToPlayerMovement(-movementVector)
		
		TouchObject = inputObject
		normalizeDirection(TouchObject.Position)
		
		MasterControl:AddToPlayerMovement(movementVector)
	end)
	
	DPadFrame.InputChanged:connect(function(inputObject)
		if inputObject == TouchObject then
			MasterControl:AddToPlayerMovement(-movementVector)
			normalizeDirection(TouchObject.Position)
			MasterControl:AddToPlayerMovement(movementVector)
			MasterControl:SetIsJumping(false)
		end
	end)
	
	OnInputEnded = function()
		TouchObject = nil
		flBtn.Visible = false
		frBtn.Visible = false
		
		MasterControl:AddToPlayerMovement(-movementVector)
		movementVector = Vector3.new(0, 0, 0)
	end
	
	DPadFrame.InputEnded:connect(function(inputObject)
		if inputObject == TouchObject then
			OnInputEnded()
		end
	end)
	
	GuiService.MenuOpened:connect(function()
		if TouchObject then
			OnInputEnded()
		end
	end)
	
	DPadFrame.Parent = parentFrame
end

return DPad
