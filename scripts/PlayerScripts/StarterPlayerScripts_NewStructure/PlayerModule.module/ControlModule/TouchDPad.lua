--[[
	
	
	
--]]

local Players = game:GetService("Players")
local GuiService = game:GetService("GuiService")

--[[ Constants ]]--
local DPAD_SHEET = "rbxasset://textures/ui/DPadSheet.png"
local ZERO_VECTOR3 = Vector3.new(0,0,0)
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


--[[ The Module ]]--
local BaseCharacterController = require(script.Parent:WaitForChild("BaseCharacterController"))
local TouchDPad = setmetatable({}, BaseCharacterController)
TouchDPad.__index = TouchDPad

function TouchDPad.new()
	local self = setmetatable(BaseCharacterController.new(), TouchDPad)
	
	self.DPadFrame = nil
	self.touchObject = nil
	self.flBtn = nil
	self.frBtn = nil
	
	return self
end

--[[ Local Functions ]]--
local function CreateArrowLabel(name, position, size, rectOffset, rectSize, parent)
	local image = Instance.new("ImageLabel")
	image.Name = name
	image.Image = DPAD_SHEET
	image.ImageRectOffset = rectOffset
	image.ImageRectSize = rectSize
	image.BackgroundTransparency = 1
	image.Size = size
	image.Position = position
	image.Parent = parent
	return image
end

function TouchDPad:GetCenterPosition()
	return Vector2.new(self.DPadFrame.AbsolutePosition.x + self.DPadFrame.AbsoluteSize.x * 0.5, self.DPadFrame.AbsolutePosition.y + self.DPadFrame.AbsoluteSize.y * 0.5)
end

function TouchDPad:Enable(enable, uiParentFrame)
	if enable == nil then return false end			-- If nil, return false (invalid argument)
	enable = enable and true or false				-- Force anything non-nil to boolean before comparison
	if self.enabled == enable then return true end	-- If no state change, return true indicating already in requested state
	
	if enable then
		-- Enable
		if not self.DPadFrame then
			self:Create(uiParentFrame)
		end
		self.DPadFrame.Visible = true
	else 
		-- Disable
		self.DPadFrame.Visible = false
		self:OnInputEnded()
	end
	self.enabled = enable
end

-- Note: Overrides base class GetIsJumping with get-and-clear behavior to do a single jump
-- rather than sustained jumping. This is only to preserve the current behavior through the refactor.
function TouchDPad:GetIsJumping()
	local wasJumping = self.isJumping
	self.isJumping = false
	return wasJumping
end

function TouchDPad:OnInputEnded()
	self.touchObject =nil
	if self.flBtn then self.flBtn.Visible = false end
	if self.frBtn then self.frBtn.Visible = false end
	self.moveVector = ZERO_VECTOR3
end

function TouchDPad:Create(parentFrame)
	if self.DPadFrame then
		self.DPadFrame:Destroy()
		self.DPadFrame = nil
	end
	
	local position = UDim2.new(0, 10, 1, -230)
	self.DPadFrame = Instance.new("Frame")
	self.DPadFrame.Name = "DPadFrame"
	self.DPadFrame.Active = true
	self.DPadFrame.Visible = false
	self.DPadFrame.Size = UDim2.new(0, 192, 0, 192)
	self.DPadFrame.Position = position
	self.DPadFrame.BackgroundTransparency = 1
	
	local smArrowSize = UDim2.new(0, 23, 0, 23)
	local lgArrowSize = UDim2.new(0, 64, 0, 64)
	local smImgOffset = Vector2.new(46, 46)
	local lgImgOffset = Vector2.new(128, 128)
	
	local bBtn = CreateArrowLabel("BackButton", UDim2.new(0.5, -32, 1, -64), lgArrowSize, Vector2.new(0, 0), lgImgOffset, self.DPadFrame)
	local fBtn = CreateArrowLabel("ForwardButton", UDim2.new(0.5, -32, 0, 0), lgArrowSize, Vector2.new(0, 258), lgImgOffset, self.DPadFrame)
	local lBtn = CreateArrowLabel("LeftButton", UDim2.new(0, 0, 0.5, -32), lgArrowSize, Vector2.new(129, 129), lgImgOffset, self.DPadFrame)
	local rBtn = CreateArrowLabel("RightButton", UDim2.new(1, -64, 0.5, -32), lgArrowSize, Vector2.new(0, 129), lgImgOffset, self.DPadFrame)
	local jumpBtn = CreateArrowLabel("JumpButton", UDim2.new(0.5, -32, 0.5, -32), lgArrowSize, Vector2.new(129, 0), lgImgOffset, self.DPadFrame)
	self.flBtn = CreateArrowLabel("ForwardLeftButton", UDim2.new(0, 35, 0, 35), smArrowSize, Vector2.new(129, 258), smImgOffset, self.DPadFrame)
	self.frBtn = CreateArrowLabel("ForwardRightButton", UDim2.new(1, -55, 0, 35), smArrowSize, Vector2.new(176, 258), smImgOffset, self.DPadFrame)
	self.flBtn.Visible = false
	self.frBtn.Visible = false
	
	-- input connections
	jumpBtn.InputBegan:Connect(function(inputObject)
		self.isJumping = true
	end)
	
	local function normalizeDirection(inputPosition)
		local jumpRadius = jumpBtn.AbsoluteSize.x*0.5
		local centerPosition = self:GetCenterPosition()
		local direction = Vector2.new(inputPosition.x - centerPosition.x, inputPosition.y - centerPosition.y)
		
		if direction.magnitude > jumpRadius then
			local angle = math.atan2(direction.y, direction.x)
			local octant = (math.floor(8 * angle / (2 * math.pi) + 8.5)%8) + 1
			self.moveVector = COMPASS_DIR[octant]
		end
		
		if not self.flBtn.Visible and self.moveVector == COMPASS_DIR[7] then
			self.flBtn.Visible = true
			self.frBtn.Visible = true
		end
	end
	
	self.DPadFrame.InputBegan:Connect(function(inputObject)
		if self.touchObject or inputObject.UserInputType ~= Enum.UserInputType.Touch then
			return
		end
		
		self.touchObject = inputObject
		normalizeDirection(self.touchObject.Position)
	end)
	
	self.DPadFrame.InputChanged:Connect(function(inputObject)
		if inputObject == self.touchObject then
			normalizeDirection(self.touchObject.Position)
			self.isJumping = false
		end
	end)
	
	self.DPadFrame.InputEnded:connect(function(inputObject)
		if inputObject == self.touchObject then
			self:OnInputEnded()
		end
	end)
	
	GuiService.MenuOpened:Connect(function()
		if self.touchObject then
			self:OnInputEnded()
		end
	end)
	
	self.DPadFrame.Parent = parentFrame
end

return TouchDPad
