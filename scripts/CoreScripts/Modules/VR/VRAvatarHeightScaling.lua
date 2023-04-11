--!nonstrict
-- This script is responsible for scaling the world in VR based on the size of the avatar

local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local VRService = game:GetService("VRService")
local UserGameSettings = UserSettings():GetService("UserGameSettings")
local Players = game:GetService("Players")
local AvatarUtil = require(RobloxGui.Modules.VR.AvatarUtil)

local VRAvatarHeightScaling = {}
VRAvatarHeightScaling.__index = VRAvatarHeightScaling

function VRAvatarHeightScaling.new()
	local self: any = setmetatable({}, VRAvatarHeightScaling)

	self.avatarUtil = AvatarUtil.new()
	VRService:GetPropertyChangedSignal("AutomaticScaling"):Connect(function()
		self:onScalingChanged()
	end)
	UserGameSettings:GetPropertyChangedSignal("PlayerHeight"):Connect(function()
		self:onPlayerHeightChanged()
	end)
	self:onScalingChanged() -- run once at the begining to set current state
	return self
end

-- sets camera.HeadScale, does nothing if subject or camera is invalid
-- does not assume scaling is on
function VRAvatarHeightScaling:setHeadScale(character)
	-- needs to ensure scaling is enabled before setting headscale because this callback can be called 
	-- from AvatarUtil after scaling is toggled off
	if VRService.AutomaticScaling ~= Enum.VRScaling.World then
		return
	end

	local avatarHeight = self:GetSubjectHeight(character)
	if not avatarHeight or avatarHeight <= 0 then return end
	
	local newHeadScale = avatarHeight / UserGameSettings.PlayerHeight
	if newHeadScale <= 0 then
		return
	end

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

function VRAvatarHeightScaling:onPlayerHeightChanged()
	-- reset the headscale
	if Players.LocalPlayer and Players.LocalPlayer.Character then
		self:setHeadScale(Players.LocalPlayer.Character)
	end
end

function VRAvatarHeightScaling:onScalingChanged()
	if VRService.AutomaticScaling == Enum.VRScaling.World then
		-- connect to avatar changes
		if not self.characterChangedConnection then
			self.characterChangedConnection = self.avatarUtil:connectLocalCharacterChanges(function(character)
				self:setHeadScale(character)
			end)
		end
	else 
		-- disconnect from avatar if turned off
		if self.characterChangedConnection then self.characterChangedConnection:Disconnect(); self.characterChangedConnection = nil end
	end
end

return VRAvatarHeightScaling.new()
