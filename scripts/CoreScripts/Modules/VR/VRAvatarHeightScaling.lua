--!nonstrict
-- This script is responsible for scaling the world in VR based on the size of the avatar

local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local AvatarUtil = require(RobloxGui.Modules.VR.AvatarUtil)

local VRAvatarHeightScaling = {}
VRAvatarHeightScaling.__index = VRAvatarHeightScaling

function VRAvatarHeightScaling.new()
	local self: any = setmetatable({}, VRAvatarHeightScaling)

	-- default playerheight is 5.5 studs (1.65 meters, ~5.41 feet)
	self.playerHeight = 5.5
	
	self.avatarUtil = AvatarUtil.new()
	self.characterChangedConnections = self.avatarUtil:connectLocalCharacterChanges(function(character)
		self:setHeadScale(character)
	end)

	return self
end

-- sets camera.HeadScale, does nothing if subject or camera is invalid
function VRAvatarHeightScaling:setHeadScale(character)
	local avatarHeight = self:GetSubjectHeight(character)
	if not avatarHeight or avatarHeight <= 0 then return end
	
	local newHeadScale = avatarHeight / self.playerHeight
	assert(newHeadScale > 0)

	local camera = workspace.CurrentCamera
	if not camera then return end

	camera.HeadScale = newHeadScale
end

-- returns the height of the subject
function VRAvatarHeightScaling:GetSubjectHeight(character)

	local humanoid = character:FindFirstChild("Humanoid")
	if humanoid and humanoid:GetState() == Enum.HumanoidStateType.Dead then return end
	
	local rootPart = humanoid and humanoid.RootPart or character:FindFirstChild("HumanoidRootPart")
	local lowerTorso = character:FindFirstChild("LowerTorso")
	local upperTorso = character:FindFirstChild("UpperTorso")
	local head = character:FindFirstChild("Head")
	
	-- take exact height measurements based on all the parts
	if rootPart and lowerTorso and upperTorso and head and humanoid then
		local rootMotor = lowerTorso:FindFirstChild("Root")
		local waistMotor = upperTorso:FindFirstChild("Waist")
		local neckMotor = head:FindFirstChild("Neck")
		
		if rootMotor and waistMotor and neckMotor then
			-- get the CFrames of the parts with motor6D transform = 0, removes the animations
			-- all cframes are with respect to the rootpart
			local lowerTorsoCFrame = rootMotor.C0 * rootMotor.C1:inverse()
			local upperTorsoCFrame = lowerTorsoCFrame * waistMotor.C0 * waistMotor.C1:inverse()
			local headCFrame = upperTorsoCFrame * neckMotor.C0 * neckMotor.C1:inverse()
			return headCFrame.Position.Y + head.Size.Y / 2 + rootPart.Size.Y / 2 + humanoid.HipHeight
		end
	end
	
	-- use the model extents
	return character:GetExtentsSize().Y
end

function VRAvatarHeightScaling:setPlayerHeight(playerHeight)
	self.playerHeight = playerHeight
	self:setHeadScale()
end

return VRAvatarHeightScaling.new()
