--!strict
-- This script is responsible for allowing the in game avatar to mirror the actions
-- of VR Controllers and head tilt. The Avatar must be R15 with all the necessary parts and
-- attachments

local VRService = game:GetService("VRService")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local RobloxReplicatedStorage = game:GetService('RobloxReplicatedStorage')
-- TODO: AvatarGestures is relying on VRHub.IsFirstPerson which is not implemented in master yet
local VRHub = require(script.Parent.VRHub)

local LocalPlayer = Players.LocalPlayer
while not LocalPlayer do
	Players.Changed:Wait()
	LocalPlayer = Players.LocalPlayer
end

export type AvatarGesturesControllerType = {
	-- Methods
	new: (Player) -> any,
	setupCharacter: (self: AvatarGesturesControllerType) -> (),
	connectAvatarChanges: (self: AvatarGesturesControllerType) -> (),
	setEnabled: (self: AvatarGesturesControllerType, boolean) -> (),
	setAnimationsEnabled: (self: AvatarGesturesControllerType, boolean) -> (),
	updateSide: (self: AvatarGesturesControllerType, string, CFrame) -> (),
	updateParts: (self: AvatarGesturesControllerType) -> (),
	updateTransforms: (self: AvatarGesturesControllerType) -> (),

	-- Member Variables
	character: any,
	player: any,
	animationsEnabled: boolean,
	measurements: { string: any},
	characterValid: boolean,
	enabled: boolean,
	renderFailures: number,
	runServiceConnection: RBXScriptConnection,
	remoteEventHead: RemoteEvent,
	remoteEventLeftHand: RemoteEvent,
	remoteEventRightHand: RemoteEvent
}

local AvatarGesturesController: AvatarGesturesControllerType = {} :: AvatarGesturesControllerType
(AvatarGesturesController :: any).__index = AvatarGesturesController

-- should not be instantiated without a valid player
function AvatarGesturesController.new(player)
	local self: any = setmetatable({}, AvatarGesturesController)

	self.player = player
	self.enabled = false
	self.characterValid = false
	self.animationsEnabled = true

	self.character = player.Character
	if self.character and self.character.Parent then
		self:setupCharacter()
	end

	self.characterAddedConnection = player.CharacterAdded:Connect(function()
		self.character = player.Character
		self:setupCharacter()
	end)
	
	if self.player == LocalPlayer and VRService.VREnabled then
		self.remoteEventHead = RobloxReplicatedStorage:WaitForChild("AvatarGesturesHead") :: RemoteEvent 
		self.remoteEventLeftHand = RobloxReplicatedStorage:WaitForChild("AvatarGesturesLeftHand") :: RemoteEvent 
		self.remoteEventRightHand = RobloxReplicatedStorage:WaitForChild("AvatarGesturesRightHand") :: RemoteEvent 
	end

	return (self :: any) :: AvatarGesturesControllerType
end

-- should be called when self.character is valid, sets self.characterValid to false if 
-- character cannot be controlled by AvatarGesturesController (e.g. R6 or modified) and true otherwise
-- Disables certain connections of the avatar and animations
function AvatarGesturesController:setupCharacter()
	-- retry setup in case character needs to load from server, otherwise assume the character is invalid and 
	-- cannot be controlled (e.g. developer deleted hands)
	local retries = 25

	-- attempt character setup
	while not pcall(function()
			self.measurements = {}
			for _, side in pairs({"Left", "Right"}) do
				-- can't do measurements directly on the character because the animations can change their positioning relative to each other
				-- instead, assume hand is at 0,0,0 and calculate theoretical offset of other parts if the arm is straight 

				local wristRigAttachment = self.character[side.."LowerArm"][side.."WristRigAttachment"]
				local shoulderRigAttachment = self.character[side.."UpperArm"][side.."ShoulderRigAttachment"]
				local gripAttachment = self.character[side.."Hand"][side.."GripAttachment"]

				local wristMotor = self.character[side.."Hand"][side.."Wrist"]
				local elbowMotor = self.character[side.."LowerArm"][side.."Elbow"]

				local handCFrame = CFrame.new(0,0,0)
				local lowerArmCFrame = handCFrame * wristMotor.C1 * wristMotor.C0:inverse() -- lower arm cframe if wristMotor's transform is 0,0,0
				local upperArmCframe = lowerArmCFrame * elbowMotor.C1 * elbowMotor.C0:inverse() -- upper arm cframe if elbow's transform is 0,0,0

				local shoulderRigAttachmentCFrame = upperArmCframe * shoulderRigAttachment.CFrame
				local gripAttachmentCFrame = handCFrame * gripAttachment.CFrame
				local wristRigAttachmentCFrame = handCFrame * wristRigAttachment.CFrame

				-- armLength from grip to shoulderrig
				self.measurements[side.."ArmLength"] = (shoulderRigAttachmentCFrame.Position - gripAttachmentCFrame.Position).Magnitude
				-- cframe offset from the the wristattachment looking at the shoulderrigattachment to wristattachment oriented correctly
				-- (used to keep the arm pointed at the shoulder)
				self.measurements[side.."WristShoulderOffset"] = CFrame.lookAt(wristRigAttachmentCFrame.Position, shoulderRigAttachmentCFrame.Position):ToObjectSpace(wristRigAttachmentCFrame)

			end

			-- if the avatar changes, we'll need to recalculate
			self:connectAvatarChanges()

			self.characterValid = true
			-- only if the character is valid, should we enable AvatarGesturesController
			self:setEnabled(true)
		end) do
		-- character setup failed, wait and retry
		retries -= 1
		if retries < 0 then
			self.characterValid = false
			self:setEnabled(false)
			return
		end
		-- 25 retries, 0.2 seconds between each try = 5 seconds before giving up
		wait(0.2)
	end
end

-- if the avatar changes size, we'll need to recalculate. This should not be called without a pcall
function AvatarGesturesController:connectAvatarChanges()
	self.character.Humanoid.ChildAdded:Connect(function(child)
		if (child.Name == "HeadScale" or 
			child.Name == "BodyWidthScale" or
			child.Name == "BodyHeightScale" or
			child.Name == "BodyDepthScale") then
			self:setupCharacter()
		end
	end)

	local changeValues = {
		[self.character.Humanoid.HeadScale] = "headScaleChanged",
		[self.character.Humanoid.BodyWidthScale] = "bodyWidthScaleChanged",
		[self.character.Humanoid.BodyHeightScale] = "bodyHeightScaleChanged",
		[self.character.Humanoid.BodyDepthScale] = "bodyDepthScaleChanged",
	}
	for numberValue, connection in pairs(changeValues) do
		if numberValue then
			if self[connection] then self[connection]:Disconnect() self[connection] = nil end
			self[connection] = numberValue.Changed:Connect(function()
				self:setupCharacter()
			end)			
		end		
	end
end

-- This function assumes the avatar should be set up as a standard R15 character and could throw errors if that's not the case.
-- should be use in a pcall
function AvatarGesturesController:setAnimationsEnabled(value) 
	if self.animationsEnabled == value then
		return
	end

	for _, side in ipairs({"Left", "Right"}) do
		if value then
			-- Enable shoulder and wrist connection
			self.character[side.."UpperArm"][side.."Shoulder"].Enabled = true
			self.character[side.."Hand"][side.."Wrist"].Enabled = true

			-- unanchor
			self.character[side.."Hand"].Anchored = false
			self.character[side.."LowerArm"].Anchored = false
		else
			-- Disable shoulder and wrist connections
			self.character[side.."UpperArm"][side.."Shoulder"].Enabled = false
			self.character[side.."Hand"][side.."Wrist"].Enabled = false

			-- Anchor arms
			self.character[side.."Hand"].Anchored = true
			self.character[side.."LowerArm"].Anchored = true
		end
	end

	self.animationsEnabled = value
end

-- updates the location of the hands 
-- handCFrame is the goal cframe of the hand in world space
function AvatarGesturesController:updateSide(side: string, handCFrame: CFrame)
	-- goal cframe of the hand in world terms
	local handWorldCFrame = handCFrame
	
	--  grip attachment cframe goal
	local gripAttachment: Attachment = self.character[side.."Hand"][side.."GripAttachment"]
	local gripGoal = handWorldCFrame * gripAttachment.CFrame

	-- calculate how far away the hand is from the shoulder (and constrain if necessary)
	local shoulderRigAttachment = self.character.UpperTorso[side.."ShoulderRigAttachment"]
	local handToShoulderDistance = (shoulderRigAttachment.WorldPosition - (gripGoal).Position).Magnitude
	-- constrain how far away the hand is
	if handToShoulderDistance > self.measurements[side.."ArmLength"] then
		-- get the grip goal offset in terms of shoulder cframe
		local gripShoulderOffset = (gripGoal).Position - shoulderRigAttachment.WorldPosition
		local constrainedgripShoulderOffset = gripShoulderOffset.Unit * self.measurements[side.."ArmLength"]
		local constrainedGripGoal = CFrame.new(shoulderRigAttachment.WorldPosition + constrainedgripShoulderOffset) * gripGoal.Rotation

		handWorldCFrame = constrainedGripGoal * gripAttachment.CFrame:Inverse()
	end
	
	-- set the hand's cframe
	self.character[side.."Hand"].CFrame = handWorldCFrame
	
	-- point the arm at the shoulder
	local handWristRigAttachment = self.character[side.."Hand"][side.."WristRigAttachment"]
	local lowerArmWristRigAttachment = self.character[side.."LowerArm"][side.."WristRigAttachment"]
	local wristgoal = CFrame.lookAt(handWristRigAttachment.WorldPosition, shoulderRigAttachment.WorldPosition) * self.measurements[side.."WristShoulderOffset"]
	self.character[side.."LowerArm"].CFrame = wristgoal * lowerArmWristRigAttachment.CFrame:Inverse()

end

function AvatarGesturesController:updateParts()
	if not pcall(function()
			-- should we manually update the arm/head cframes, or use animations
			-- this will be set to true if any of the usercrframes (head, left hand, right hand) are valid
			local shouldmirror = false

			-- get cframes for localplayer from controller input, otherwise use data from server
			local vrLeftHandCFrame = CFrame.new()
			local vrRightHandCFrame = CFrame.new()

			if self.player == LocalPlayer and VRService.VREnabled then
				if VRService:GetUserCFrameEnabled(Enum.UserCFrame.LeftHand) then
					vrLeftHandCFrame = UserInputService:GetUserCFrame(Enum.UserCFrame.LeftHand)			
					shouldmirror = true
				end
				if VRService:GetUserCFrameEnabled(Enum.UserCFrame.RightHand) then
					vrRightHandCFrame = UserInputService:GetUserCFrame(Enum.UserCFrame.RightHand)
					shouldmirror = true
				end
				
				-- calculate the goal cframe of the hands based on first/third person
				if shouldmirror then
					if VRHub.IsFirstPerson then
						local camera = workspace.CurrentCamera :: Camera
						vrLeftHandCFrame = camera.CFrame * vrLeftHandCFrame * CFrame.Angles(math.rad(90),0 , 0)
						vrRightHandCFrame = camera.CFrame * vrRightHandCFrame * CFrame.Angles(math.rad(90),0 , 0)
					else
						-- the CFrame of the vr head, used to "mirror" the player's movements onto the avatar 
						-- with the location of the head as base
						local vrHeadCFrame = UserInputService:GetUserCFrame(Enum.UserCFrame.Head)

						-- hand cframe adjusted to character's head
						vrLeftHandCFrame = self.character.Head.CFrame * vrHeadCFrame:ToObjectSpace(vrLeftHandCFrame) * CFrame.Angles(math.rad(90),0 , 0)
						vrRightHandCFrame = self.character.Head.CFrame * vrHeadCFrame:ToObjectSpace(vrRightHandCFrame) * CFrame.Angles(math.rad(90),0 , 0)
					end
					
					self.remoteEventLeftHand:FireServer(vrLeftHandCFrame)
					self.remoteEventRightHand:FireServer(vrRightHandCFrame)
				end
			else
				-- hand location from the server will be replicated either with a collider part 
				-- or by using a cframevalue instance
				local leftHandCFrame = nil
				if self.character.LeftHand:FindFirstChild("Collider") then
					leftHandCFrame = self.character.LeftHand.Collider.CFrame
				elseif self.player:FindFirstChild("LeftHandCFrame") then
					leftHandCFrame = self.player:FindFirstChild("LeftHandCFrame").Value :: CFrame
				end
				
				if leftHandCFrame ~= nil then
					vrLeftHandCFrame = leftHandCFrame
					shouldmirror = true
				end
				
				local rightHandCFrame = nil
				if self.character.RightHand:FindFirstChild("Collider") then
					rightHandCFrame = self.character.RightHand.Collider.CFrame
				elseif self.player:FindFirstChild("RightHandCFrame") then
					rightHandCFrame = self.player:FindFirstChild("RightHandCFrame").Value :: CFrame
				end

				if rightHandCFrame ~= nil then
					vrRightHandCFrame = rightHandCFrame
					shouldmirror = true
				end
			end

			if shouldmirror then
				-- turn off animations 
				self:setAnimationsEnabled(false)

				self:updateSide("Left", vrLeftHandCFrame)
				self:updateSide("Right", vrRightHandCFrame)
			else 
				-- turn on animations 
				self:setAnimationsEnabled(true)
			end


		end) then

		self.renderFailures += 1
		if self.renderFailures > 5 then
			self.characterValid = false
			self:setEnabled(false)
		end
	end
end

-- updates to motor6d transforms must happen in RunService.Stepped or they will get overwritten by the animator
function AvatarGesturesController:updateTransforms()
	if not pcall(function()
			-- should we manually update the arm/head cframes, or use animations
			-- this will be set to true if any of the usercrframes (head, left hand, right hand) are valid
			-- TODO: maybe use animations instead of mirrors when the avatar is running?
			local shouldmirror = false

			-- get cframes for localplayer from controller input, otherwise use data from server
			local vrHeadCFrame = CFrame.new()

			if self.player == LocalPlayer and VRService.VREnabled then
				if VRService:GetUserCFrameEnabled(Enum.UserCFrame.Head) then
					vrHeadCFrame = UserInputService:GetUserCFrame(Enum.UserCFrame.Head)
					shouldmirror = true
				end
			else
				local headCFrameInstance = self.player:FindFirstChild("HeadCFrame") :: CFrameValue
				if headCFrameInstance ~= nil then
					vrHeadCFrame = headCFrameInstance.Value
					shouldmirror = true 
				end
			end

			if shouldmirror then
				-- turn off animations 
				self:setAnimationsEnabled(false)

				-- rotate the avatar's head based on the VR device position
				self.character.Head.Neck.Transform = vrHeadCFrame.Rotation

				-- disable elbow animations
				self.character["LeftLowerArm"]["LeftElbow"].Transform = CFrame.new()
				self.character["RightLowerArm"]["RightElbow"].Transform = CFrame.new()
			else 
				-- turn on animations 
				self:setAnimationsEnabled(true)
			end
		end) then

		self.renderFailures += 1
		if self.renderFailures > 5 then
			self.characterValid = false
			self:setEnabled(false)
		end
	end
end

function AvatarGesturesController:setEnabled(enabled)
	self.enabled = enabled
	if enabled then
		-- if the character is not valid, will retry a couple of times before switching itself back off
		self.renderFailures = 0
		RunService:BindToRenderStep("avatarGesturesController", Enum.RenderPriority.Character.Value, function() self:updateParts() end)
		self.runServiceConnection = RunService.Stepped:Connect(function() self:updateTransforms() end)
	else
		warn("Invalid Character for AvatarGesturesController")
		RunService:UnbindFromRenderStep("avatarGesturesController")
	end
end

local playerList = {}
local function onPlayerAdded(player)
	-- create a movement mirror for each new player
	if playerList[player] == nil then
		playerList[player] = AvatarGesturesController.new(player)
	end
end

-- this connection has to happen before iterating through the playerlist because AvatarGesturesController.new() can yield
Players.PlayerAdded:Connect(onPlayerAdded)
for _, player in ipairs(Players:GetPlayers()) do
	onPlayerAdded(player)
end

Players.PlayerRemoving:Connect(function(player)
	playerList[player] = nil
end)

return AvatarGesturesController
