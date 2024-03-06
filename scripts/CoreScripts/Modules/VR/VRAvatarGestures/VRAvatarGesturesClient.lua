--!nonstrict
-- This script is responsible for allowing the in game avatar to mirror the actions
-- of VR Controllers and head tilt. The Avatar must be R15 with all the necessary parts and
-- attachments

local VRService = game:GetService("VRService")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local ConnectionUtil = require(RobloxGui.Modules.Common.ConnectionUtil)
local AvatarUtil = require(RobloxGui.Modules.Common.AvatarUtil)

local FIRST_PERSON_THRESHOLD_DISTANCE = 5
local HEAD_OFFSET_FORWARD_RATIO = 1/8
local HEAD_OFFSET_HEIGHT_RATIO = 1/4

-- flag to enable immersion mode for all player including non VR for testing purposes
local FFlagDebugImmersionModeNonVR = game:DefineFastFlag("DebugImmersionModeNonVR", false)

export type VRAvatarGesturesClientType = {
	--------------- Member Variables ------------------------
	-- holds the input data received at the beginning of the frame and saves it for 
	-- calculations at a later part of the frame
	partCFrameMap: {[string]: CFrame},
	connections: any,
	-------------------- Methods ----------------------------
	new: () -> VRAvatarGesturesClientType,

	-- connects to VR input events or simulated input events
	connectInputCFrames: (self: VRAvatarGesturesClientType) -> (),

	onAvatarGesturesChanged: (self: VRAvatarGesturesClientType) -> (),
	onCharacterChanged: (self: VRAvatarGesturesClientType, Model) -> (),
	-- updates the avatar cframes in partCFrameMap
	steppedCframes: (self: VRAvatarGesturesClientType) -> (),
	-- given a part name and CFrame, updates the parts on the avatar to match the cframe
	updateCFrames: (self: VRAvatarGesturesClientType, string, CFrame) -> (),
}

local VRAvatarGesturesClient: VRAvatarGesturesClientType = {} :: VRAvatarGesturesClientType
(VRAvatarGesturesClient :: any).__index = VRAvatarGesturesClient

function VRAvatarGesturesClient.new()
	local self: any = setmetatable({}, VRAvatarGesturesClient)
	self.partCFrameMap = {}
	self.connections = ConnectionUtil.new()
	self.connections:connect(VRService:GetPropertyChangedSignal("AvatarGestures"), function() self:onAvatarGesturesChanged() end)
	if VRService.AvatarGestures then self:onAvatarGesturesChanged() end
	return self :: any 
end

function VRAvatarGesturesClient:onCharacterChanged(character)
	local humanoid = character:FindFirstChild("Humanoid")
	if not humanoid then
		return
	end

	-- no smooth times on client only (looks laggy)
	local ikControlNames = { "VRIKLeftHand", "VRIKRightHand", "VRIKHead" }
	for _, ikName in pairs(ikControlNames) do
		local ikControl = humanoid:FindFirstChild(ikName) :: IKControl

		if ikControl then
			ikControl.SmoothTime = 0
		end
	end
end

function VRAvatarGesturesClient:onAvatarGesturesChanged()
	if VRService.AvatarGestures then
		self:connectInputCFrames()
		if VRService.VREnabled or FFlagDebugImmersionModeNonVR then
			if not self.avatarUtil then
				self.avatarUtil = AvatarUtil.new()
				self.avatarUtil:connectLocalCharacterChanges(function(character)
					self:onCharacterChanged(character)
				end)
			else
				-- already connected to avatarUtil, manually trigger change callback to reenable IK on existing characters
				if Players.LocalPlayer and Players.LocalPlayer.Character then
					self:onCharacterChanged(Players.LocalPlayer.Character :: Model)
				end
			end
		end
	else
		self.connections:disconnectAll()
		self.connections:connect(VRService:GetPropertyChangedSignal("AvatarGestures"), function() self:onAvatarGesturesChanged() end)
	end
end

function VRAvatarGesturesClient:updateCFrames(partName, cframeOffset)
	local player = Players.LocalPlayer :: Player
	if not Players.LocalPlayer then
		return
	end
		
	local character = player.Character :: Model
	if not player.Character then
		return
	end
		
	local part = character:FindFirstChild(partName) :: Part
	if not part then
		return
	end
	
	local camera = workspace.CurrentCamera :: Camera
	if not camera then
		return
	end
	
	local attachment = part:FindFirstChild(partName .. "Attachment") :: Attachment
	if not attachment then
		return
	end
	
	local alignPosition = part:FindFirstChild(partName .. "AlignPosition") :: AlignPosition
	if not alignPosition then
		return
	end
	
	local alignOrientation = part:FindFirstChild(partName .. "AlignOrientation") :: AlignOrientation
	if not alignOrientation then
		return
	end
	
	if VRService.VREnabled then
		cframeOffset = cframeOffset.Rotation + cframeOffset.Position * camera.HeadScale
		local worldCFrame = camera.CFrame * cframeOffset 
		
		local head = character:FindFirstChild("Head") :: Part
		
		-- third person
		if (camera.CFrame.Position - camera.Focus.Position).Magnitude > FIRST_PERSON_THRESHOLD_DISTANCE and head then
			local headCframeOffset = VRService:GetUserCFrame(Enum.UserCFrame.Head)
			headCframeOffset = headCframeOffset.Rotation + headCframeOffset.Position * camera.HeadScale
			local headWorld = camera.CFrame * headCframeOffset * CFrame.new(0, 0, 0.5)
			
			if partName ~= "VRGesturesHead" then
				-- the cframe of the input (hands) should be the same offset from the avatar's head as the input cframe from the player's head
				local headRelativeCFrame = head.CFrame:ToWorldSpace(headWorld:ToObjectSpace(worldCFrame)) 
				alignPosition.Position = headRelativeCFrame.Position
				alignOrientation.CFrame = headRelativeCFrame * CFrame.Angles(math.pi/2, 0, 0)
			else
				local rootPartCFrame = (character.PrimaryPart :: BasePart).CFrame
				alignPosition.Position = (rootPartCFrame * CFrame.new(0, rootPartCFrame.Position.Y * HEAD_OFFSET_HEIGHT_RATIO, -rootPartCFrame.Position.Y * HEAD_OFFSET_FORWARD_RATIO)).Position
				-- instead of using the camera to position the head orientation in the world, the orientation of the head should be relative to
				-- the avatar's root part. That is, if the player is looking at the front of their avatar (in third person), the avatar's head should 
				-- still be facing forward, not matching the player's head orientation.
				alignOrientation.CFrame = rootPartCFrame * cframeOffset
			end
		else
			alignPosition.Position = worldCFrame.Position
			if partName ~= "VRGesturesHead" then
				alignOrientation.CFrame = worldCFrame * CFrame.Angles(math.pi/2, 0, 0)
			else
				alignOrientation.CFrame = worldCFrame
			end
		end
		
	else -- Simulate VR Input
		local hrp = character:FindFirstChild("HumanoidRootPart") :: Part
		
		local cframe
		if partName ~= "VRGesturesHead" then
			cframe =  hrp.CFrame  * cframeOffset * CFrame.Angles(0, 0, math.rad(time() * 30)) * CFrame.new(1, 0, -0.5)
		else
			cframe = hrp.CFrame * cframeOffset
		end
		
		if hrp then
			alignPosition.Position = cframe.Position
			alignOrientation.CFrame = cframe
		end
	end

	-- On device, we want the hands to be as closely aligned with the controller input as possible. Don't
	-- want to wait for physics and smoothing.
	part.CFrame = CFrame.new(alignPosition.Position) * alignOrientation.CFrame.Rotation
end

function VRAvatarGesturesClient:steppedCframes()
	for partName, cframe in pairs(self.partCFrameMap) do
		self:updateCFrames(partName, cframe)
	end
end

function VRAvatarGesturesClient:connectInputCFrames()
	if VRService.VREnabled then
		self.connections:connect(VRService.UserCFrameChanged,function(type, cframe)
			if type == Enum.UserCFrame.LeftHand then
				self.partCFrameMap["VRGesturesLeftHand"] = cframe
			elseif type == Enum.UserCFrame.RightHand then
				self.partCFrameMap["VRGesturesRightHand"] = cframe
			elseif type == Enum.UserCFrame.Head then
				self.partCFrameMap["VRGesturesHead"] = cframe
			end
		end)
	elseif FFlagDebugImmersionModeNonVR then -- Simulate VR Input
		self.connections:connect(RunService.RenderStepped, function(_)
			self.partCFrameMap["VRGesturesLeftHand"] = CFrame.new(-0.5, 0, -0.5)
			self.partCFrameMap["VRGesturesRightHand"] = CFrame.new(0.5, 0, -0.5)
			self.partCFrameMap["VRGesturesHead"] = CFrame.new(0, 1, 0)
		end)
	end
	
	if VRService.VREnabled or FFlagDebugImmersionModeNonVR then
		self.connections:connect(RunService.RenderStepped, function(_)
			self:steppedCframes()
		end)
	end
end

return VRAvatarGesturesClient.new()