--!nonstrict
-- This script is responsible for scaling the world in VR based on the size of the avatar

local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local VRService = game:GetService("VRService")
local UserGameSettings = UserSettings():GetService("UserGameSettings")
local Players = game:GetService("Players")
local AvatarUtil = require(RobloxGui.Modules.Common.AvatarUtil)

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
	VRService.UserCFrameChanged:Connect(function(userCFrameType, _)
		if userCFrameType == Enum.UserCFrame.Floor then
			self:onPlayerHeightChanged()
		end
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
	
	local measuredHeight = -VRService:GetUserCFrame(Enum.UserCFrame.Floor).Position.Y

	local newHeadScale
	-- if less than 80% of configured height, assume seated
	if measuredHeight < 0.8 * UserGameSettings.PlayerHeight then
		-- use configured height when seated
		newHeadScale = avatarHeight / UserGameSettings.PlayerHeight
	else
		-- use measured height when standing to correctly align the floor position
		newHeadScale = avatarHeight / measuredHeight
	end

	local camera = workspace.CurrentCamera
	if not camera then return end

	camera.HeadScale = newHeadScale
end

-- returns the height of the subject, nil or zero if the character is invalid or has no height
function VRAvatarHeightScaling:GetSubjectHeight(character)

	local humanoid = character:FindFirstChild("Humanoid")
	if humanoid and humanoid:GetState() == Enum.HumanoidStateType.Dead then return end
	
	-- measures the location of the camera to the floor. This uses the camera location from where the playerscripts
	-- would have placed the camera instead of the actual height of the avatar, prioritizing floor location vs 
	-- acurate avatar height
	local rootPart = humanoid and humanoid.RootPart or character:FindFirstChild("HumanoidRootPart")
	if rootPart and humanoid then
		local hipHeight = humanoid.HipHeight

		if humanoid.RigType == Enum.HumanoidRigType.R6 then 
			-- hip height is always 0 in R6
			hipHeight = 2
		end

		if humanoid.AutomaticScalingEnabled then
			local rootPartSizeOffset = (rootPart.Size.Y/2) + 0.5
			return rootPart.Size.Y / 2 + hipHeight + rootPartSizeOffset + humanoid.CameraOffset.Y
		else
			return rootPart.Size.Y / 2 + hipHeight + 2 + humanoid.CameraOffset.Y
		end
	end

	-- character is invalid, we can't scale
	return nil
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
