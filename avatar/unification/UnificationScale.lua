-- UnificationScale.lua
-- Module script implementing scaling and positioning of R15 parts to target positions.
local R6_TARGET_SIZES: { [string]: Vector3 } = {
	Torso = Vector3.new(2, 2, 1),
	Head = Vector3.new(1.2, 1.2, 1.2),
	Arm = Vector3.new(1, 2, 1),
	Leg = Vector3.new(1, 2, 1),
	HumanoidRootPart = Vector3.new(2, 2, 1),
}

local R6_HIP_HEIGHT = 2

local ACCESSORY_MAPPINGS: { [string]: string } = {
	FaceCenterAttachment = "Head",
	FaceFrontAttachment = "Head",
	HairAttachment = "Head",
	HatAttachment = "Head",

	LeftFootAttachment = "LeftFoot",

	LeftGripAttachment = "LeftHand",

	LeftShoulderAttachment = "LeftUpperArm",

	RightShoulderAttachment = "RightUpperArm",

	WaistCenterAttachment = "LowerTorso",
	WaistFrontAttachment = "LowerTorso",
	WaistBackAttachment = "LowerTorso",

	RightFootAttachment = "RightFoot",

	RightGripAttachment = "RightHand",

	BodyBackAttachment = "UpperTorso",
	BodyFrontAttachment = "UpperTorso",
	LeftCollarAttachment = "UpperTorso",
	NeckAttachment = "UpperTorso",
	RightCollarAttachment = "UpperTorso",

	RootAttachment = "HumanoidRootPart",
}

local function GetExtentsSize(instances: { BasePart })
	assert(#instances > 0, "instances must not be empty for GetExtentsSize")
	local abs = math.abs
	local inf = math.huge

	local minx, miny, minz = inf, inf, inf
	local maxx, maxy, maxz = -inf, -inf, -inf

	for _, obj in instances do
		if obj:IsA("BasePart") then
			local cf = obj.ExtentsCFrame
			local size = obj.ExtentsSize
			local sx, sy, sz = size.X, size.Y, size.Z
			local x, y, z, R00, R01, R02, R10, R11, R12, R20, R21, R22 = cf:GetComponents()
			local wsx = 0.5 * (abs(R00) * sx + abs(R01) * sy + abs(R02) * sz)
			local wsy = 0.5 * (abs(R10) * sx + abs(R11) * sy + abs(R12) * sz)
			local wsz = 0.5 * (abs(R20) * sx + abs(R21) * sy + abs(R22) * sz)
			minx = math.min(minx, x - wsx)
			miny = math.min(miny, y - wsy)
			minz = math.min(minz, z - wsz)
			maxx = math.max(maxx, x + wsx)
			maxy = math.max(maxy, y + wsy)
			maxz = math.max(maxz, z + wsz)
		end
	end

	local omin, omax = Vector3.new(minx, miny, minz), Vector3.new(maxx, maxy, maxz)
	local size = (omax - omin)
	return size
end

local function JoinArrays(...)
	local arg = { ... }
	local result = {}
	for _, array in arg do
		for _, value in array do
			table.insert(result, value)
		end
	end
	return result
end

local UnificationScale = {}

UnificationScale.UnificationModes = {
	CLAMP_WIDTH = "ClampWidth",
	FULL = "Full",
}

UnificationScale.__index = UnificationScale
UnificationScale.ScaleCharacter = function(character: Model, unificationMode: string?)
	local self = setmetatable({}, UnificationScale)
	self.UnificationMode = unificationMode or UnificationScale.UnificationModes.CLAMP_WIDTH
	local humanoid: Humanoid = character:WaitForChild("Humanoid") :: Humanoid
	self.Humanoid = humanoid
	self.Character = character
	self.ScalingFactors = {}
	self:ScaleParts()
	humanoid.HipHeight = R6_HIP_HEIGHT
	humanoid:BuildRigFromAttachments()
	self:MoveAndScaleAccessories()
	return self
end

function UnificationScale:ScaleParts()
	self:ResetScaling()
	self.BodyHeightScalingFactor = self:GetBodyHeightScalingFactor()
	self.BodyWidthScalingFactor = self:GetBodyWidthScalingFactor()
	self:ScaleHead()
	self:ScaleHumanoidRootPart()
	self:MoveRootRigAttachmentToHipHeight()

	self:ScaleArm("Left")
	self:ScaleArm("Right")

	self:ScaleBodyPartGroupWithDepth({ self.Character.UpperTorso, self.Character.LowerTorso })
	self:ScaleBodyPartGroupWithDepth(self:GetLeg("Left"))
	self:ScaleBodyPartGroupWithDepth(self:GetLeg("Right"))
end

function UnificationScale:ResetScaling()
	local humanoid = self.Humanoid
	humanoid.AutomaticScalingEnabled = false
	local bodyWidthScaleValue = humanoid:FindFirstChild("BodyWidthScale")
	if bodyWidthScaleValue then
		bodyWidthScaleValue:Destroy()
	end

	local bodyDepthScaleValue = humanoid:FindFirstChild("BodyDepthScale")
	if bodyDepthScaleValue then
		bodyDepthScaleValue:Destroy()
	end

	local bodyProportionScaleValue = humanoid:FindFirstChild("BodyProportionScale")
	if bodyProportionScaleValue then
		bodyProportionScaleValue:Destroy()
	end

	local bodyHeightScaleValue = humanoid:FindFirstChild("BodyHeightScale")
	if bodyHeightScaleValue then
		bodyHeightScaleValue:Destroy()
	end

	local headScaleValue = humanoid:FindFirstChild("HeadScale")
	if headScaleValue then
		headScaleValue:Destroy()
	end
end

function UnificationScale:GetBodyWidthScalingFactor()
	if self.BodyWidthScalingFactor then
		return self.BodyWidthScalingFactor
	end
	local leftArm = self:GetArm("Left")
	local rightArm = self:GetArm("Right")
	local leftLeg = self:GetLeg("Left")
	local rightLeg = self:GetLeg("Right")
	local torso = self:GetTorso()
	local bodySize = GetExtentsSize(JoinArrays(torso, leftArm, rightArm, leftLeg, rightLeg))
	local targetWidth = R6_TARGET_SIZES["Torso"].X + 2 * R6_TARGET_SIZES["Arm"].X
	local scaleFactorX = targetWidth / bodySize.X
	if self.UnificationMode == UnificationScale.UnificationModes.CLAMP_WIDTH then
		local scaleFactorXSmall = R6_TARGET_SIZES["Torso"].X / bodySize.X
		scaleFactorX = math.clamp(scaleFactorX, 0, math.max(scaleFactorXSmall, self:GetBodyHeightScalingFactor(), 1))
	end
	self.BodyWidthScalingFactor = scaleFactorX
	return self.BodyWidthScalingFactor
end

function UnificationScale:GetBodyHeightScalingFactor()
	if self.BodyHeightScalingFactor then
		return self.BodyHeightScalingFactor
	end
	local character = self.Character
	local upperTorso = character.UpperTorso
	local leftLeg = self:GetLeg("Left")
	local rightLeg = self:GetLeg("Right")
	local torso = self:GetTorso()
	local neckToTorsoHeight = upperTorso.ExtentsCFrame.Y
		+ upperTorso.ExtentsSize.Y / 2
		- upperTorso.NeckRigAttachment.WorldCFrame.Position.Y

	local parts = JoinArrays(torso, leftLeg, rightLeg)
	local extentSize = GetExtentsSize(parts)
	local targetSizeY = R6_TARGET_SIZES["Torso"].Y + R6_TARGET_SIZES["Leg"].Y
	self.BodyHeightScalingFactor = targetSizeY / (extentSize.Y - neckToTorsoHeight)
	return self.BodyHeightScalingFactor
end

function UnificationScale:GetLeg(side: "Left" | "Right")
	if self[side .. "Leg"] then
		return self[side .. "Leg"]
	end
	local character = self.Character
	local upperLeg = character[side .. "UpperLeg"]
	local lowerLeg = character[side .. "LowerLeg"]
	local foot = character[side .. "Foot"]
	self[side .. "Leg"] = { upperLeg, lowerLeg, foot }
	return self[side .. "Leg"]
end

function UnificationScale:GetArm(side: "Left" | "Right")
	if self[side .. "Arm"] then
		return self[side .. "Arm"]
	end
	local character = self.Character
	local upperArm = character[side .. "UpperArm"]
	local lowerArm = character[side .. "LowerArm"]
	local hand = character[side .. "Hand"]
	self[side .. "Arm"] = { upperArm, lowerArm, hand }
	return self[side .. "Arm"]
end

function UnificationScale:GetTorso()
	if self.Torso then
		return self.Torso
	end
	local character = self.Character
	local upperTorso = character.UpperTorso
	local lowerTorso = character.LowerTorso
	self.Torso = { upperTorso, lowerTorso }
	return self.Torso
end

function UnificationScale:MoveRootRigAttachmentToHipHeight()
	local lowerTorso = self.Character.LowerTorso
	local leftFoot = self.Character.LeftFoot
	local footToLowerTorsoOffset = leftFoot.ExtentsCFrame:ToObjectSpace(lowerTorso.ExtentsCFrame)
	local groundToLowerTorsoHeight = footToLowerTorsoOffset.Y + leftFoot.ExtentsSize.Y / 2
	local hipHeightAfterScaling = groundToLowerTorsoHeight * self.BodyHeightScalingFactor
	local newRootRigWorldCFrame = lowerTorso.ExtentsCFrame + Vector3.new(0, R6_HIP_HEIGHT - hipHeightAfterScaling, 0)
	lowerTorso.RootRigAttachment.WorldCFrame = newRootRigWorldCFrame
end

function UnificationScale:ScaleHead()
	local head = self.Character.Head
	local extentSize = head.ExtentsSize
	local scaleFactor = Vector3.one * (R6_TARGET_SIZES["Head"].Y / extentSize.Y)
	self:ScalePart(head, scaleFactor)
end

function UnificationScale:ScalePart(part: MeshPart, scaleFactor)
	part.Archivable = true
	part.Size = scaleFactor * part.Size
	if part:FindFirstChild("OriginalSize") then
		part.OriginalSize.Value = part.Size
	end
	for _, child in pairs(part:GetChildren()) do
		if child.ClassName == "Attachment" then
			if child.Name == "RootRigAttachment" then
				--We handle RootRigAttachment separately since it is involved in hip height for MoveRootRigAttachmentToHipHeight
				continue
			end
			child.CFrame = child.CFrame + child.CFrame.Position * (scaleFactor - Vector3.one)
			if child:FindFirstChild("OriginalPosition") then
				child.OriginalPosition.Value = child.Position
			end
		end
	end
	if self.ScalingFactors[part.Name] then
		self.ScalingFactors[part.Name] *= scaleFactor
	else
		self.ScalingFactors[part.Name] = scaleFactor
	end
end

function UnificationScale:ScaleArm(side: "Left" | "Right")
	local arm = self:GetArm(side)
	local extentsSize = GetExtentsSize(arm)
	local scaleFactor = R6_TARGET_SIZES["Arm"] / extentsSize
	for _, part in arm do
		self:ScalePart(part, Vector3.new(self.BodyWidthScalingFactor, scaleFactor.Y, scaleFactor.Z))
	end
end

function UnificationScale:ScaleBodyPartGroupWithDepth(bodyParts: { MeshPart })
	local extentSize = GetExtentsSize(bodyParts)
	local scalingFactorZ = R6_TARGET_SIZES["Torso"].Z / extentSize.Z
	local scaleFactor = Vector3.new(self.BodyWidthScalingFactor, self.BodyHeightScalingFactor, scalingFactorZ)
	for _, part in bodyParts do
		self:ScalePart(part, scaleFactor)
	end
end

function UnificationScale:ScaleHumanoidRootPart()
	local humanoidRootPart = self.Character.HumanoidRootPart
	local extentSize = humanoidRootPart.ExtentsSize
	local scaleFactor = R6_TARGET_SIZES["HumanoidRootPart"] / extentSize
	self:ScalePart(humanoidRootPart, scaleFactor)
	self.Humanoid.HipHeight = R6_HIP_HEIGHT
	humanoidRootPart.RootRigAttachment.CFrame = CFrame.new(0, -R6_HIP_HEIGHT / 2, 0) -- enforce distance from root rig to ground == 2
end

function UnificationScale:MoveAndScaleAccessories()
	local humanoid = self.Humanoid
	local MIN_ACCESSORY_SCALE = 0.7
	local MAX_ACCESSORY_SCALE = 1.3
	for _, accessory in humanoid:GetAccessories() do
		local accessoryHandle = accessory:WaitForChild("Handle") :: MeshPart
		if not accessoryHandle or accessoryHandle:FindFirstChildWhichIsA("WrapLayer") then
			continue
		end

		local accessoryAttachment = accessoryHandle:FindFirstChildOfClass("Attachment") :: Attachment
		local accessoryWeld = accessoryHandle:FindFirstChildOfClass("Weld") :: Weld
		if not accessoryAttachment or not accessoryWeld then
			continue
		end

		local partName = ACCESSORY_MAPPINGS[accessoryAttachment.Name]
		local partScaling = self.ScalingFactors[partName] or Vector3.one
		partScaling = Vector3.one * math.min(partScaling.X, partScaling.Y, partScaling.Z) -- scale accessories uniformly
		partScaling = partScaling:Min(Vector3.one * MAX_ACCESSORY_SCALE)
		partScaling = partScaling:Max(Vector3.one * MIN_ACCESSORY_SCALE)
		accessoryHandle.Size = accessoryHandle.Size * partScaling
		if accessoryHandle:FindFirstChild("OriginalSize") then
			accessoryHandle.OriginalSize.Value = accessoryHandle.OriginalSize.Value * partScaling
		end
		accessoryAttachment.CFrame = accessoryAttachment.CFrame
			+ (accessoryAttachment.CFrame.Position * (partScaling - Vector3.one))
		accessoryWeld.C1 = accessoryWeld.C1 + (accessoryWeld.C1.Position * (partScaling - Vector3.one))
	end
end

return UnificationScale
