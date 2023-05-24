--!nonstrict
local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local AvatarUtil = require(RobloxGui.Modules.Common.AvatarUtil)

local VRServerAvatarGesturesController = {}
VRServerAvatarGesturesController.__index = VRServerAvatarGesturesController

function VRServerAvatarGesturesController.new()
	local self: any = setmetatable({}, VRServerAvatarGesturesController)

	self.avatarUtil = AvatarUtil.new()

	self.avatarUtil:connectAllPlayersCharacterChanges(function(character, player)
		self:onCharacterChanged(character, player)
	end)

	return self
end

function VRServerAvatarGesturesController:findOrCreateColliders(partName, character, player)
	-- Create collider part
	local colliderName = "VR" .. partName
	local vrCollider = character:FindFirstChild(colliderName)
	if not vrCollider then
		vrCollider = Instance.new("Part")
		vrCollider.Name = colliderName
		vrCollider.Transparency = 1
		vrCollider.CanCollide = false
		vrCollider.CanQuery = false
		vrCollider.CanTouch = false
		vrCollider.Parent = character
		vrCollider:SetNetworkOwner(player)
	end

	-- Add collider attachment
	local colliderAttachment = vrCollider:FindFirstChild(colliderName .. "Attachment")
	if not colliderAttachment then
		colliderAttachment = Instance.new("Attachment")
		colliderAttachment.Name = colliderName .. "Attachment"

		colliderAttachment.Parent = vrCollider
	end

	local alignPosition = vrCollider:FindFirstChild(colliderName .. "AlignPosition")
	if not alignPosition then
		alignPosition = Instance.new("AlignPosition")
		alignPosition.Name = colliderName .. "AlignPosition"
		alignPosition.Mode = Enum.PositionAlignmentMode.OneAttachment
		alignPosition.Attachment0 = colliderAttachment
		alignPosition.RigidityEnabled = true
		alignPosition.Parent = vrCollider
	end

	local alignOrientation = vrCollider:FindFirstChild(colliderName .. "AlignOrientation")
	if not alignOrientation then
		alignOrientation = Instance.new("AlignOrientation")
		alignOrientation.Name = colliderName .. "AlignOrientation"
		alignOrientation.Mode = Enum.OrientationAlignmentMode.OneAttachment
		alignOrientation.Attachment0 = colliderAttachment
		alignOrientation.RigidityEnabled = true
		alignOrientation.Parent = vrCollider
	end

	-- Size and place collider based on the character
	local part = character:FindFirstChild(partName)
	if part then
		vrCollider.Size = part.Size
		vrCollider.CFrame = part.CFrame
		alignPosition.Position = part.Position
		alignOrientation.CFrame = part.CFrame
	else
		vrCollider.Size = Vector3.new(1, 1, 1)
		vrCollider.CFrame = character.WorldPivot
		alignPosition.Position = character.WorldPivot.Position
		alignOrientation.CFrame = character.WorldPivot
	end
	
	-- IK control so that the hands follow the collider
	local humanoid = character:FindFirstChild("Humanoid")
	if humanoid then
		local ikControlName = "VRIK" .. partName
		local ikControl = humanoid:FindFirstChild(ikControlName)

		if not ikControl then
			ikControl = Instance.new("IKControl")
			ikControl.Name = ikControlName
		end

		ikControl.SmoothTime = 0
		ikControl.Parent = humanoid
		ikControl.Target = vrCollider

	end
	
	return vrCollider, part
end


function VRServerAvatarGesturesController:createHandCollider(side, character, player)
	local vrCollider, part = self:findOrCreateColliders(side .. "Hand", character, player)

	vrCollider.CanCollide = false
	
	-- IK control
	local humanoid = character:FindFirstChild("Humanoid")
	if humanoid then
		local ikControlName = "VRIK" .. side .. "Hand"
		local ikControl = humanoid:FindFirstChild(ikControlName)
		
		if ikControl then
			ikControl.Type = Enum.IKControlType.Transform

			local ikRoot = character:FindFirstChild(side .. "UpperArm")
			if ikRoot then
				-- IKControl needs a reset if the character's proportions may have changed. 
				-- This forces a recalculation of the limb lengths by setting the root to a different part, then 
				-- the correct one next from.
				ikControl.ChainRoot = part
				wait(0.1)
				ikControl.ChainRoot = ikRoot
			end

			if part then
				ikControl.EndEffector = part
			end
			ikControl.Priority = 1
		end
	end
end

function VRServerAvatarGesturesController:createHeadCollider(character, player)
	local vrCollider, part = self:findOrCreateColliders("Head", character, player)
	
	-- IK control
	local humanoid = character:FindFirstChild("Humanoid")
	if humanoid then
		local ikControlName = "VRIKHead"
		local ikControl = humanoid:FindFirstChild(ikControlName)

		if ikControl then
			ikControl.Type = Enum.IKControlType.Rotation

			local ikRoot = character:FindFirstChild("UpperTorso")
			if ikRoot then
				ikControl.ChainRoot = ikRoot
			end

			if part then
				ikControl.EndEffector = part
			end
		end
	end
	
end

-- Makes all of the parts necessary for displaying avatar gestures
function VRServerAvatarGesturesController:onCharacterChanged(character, player)
	-- create instances if they don't exist yet
	self:createHandCollider("Left", character, player)
	self:createHandCollider("Right", character, player)
	self:createHeadCollider(character, player)

end

VRServerAvatarGesturesController.new()
