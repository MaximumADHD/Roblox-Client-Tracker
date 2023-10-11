-- UnificationScale.lua
-- Module script implementing scaling and positioning of R15 parts to target positions.
-- The target in this script is defined according to R6 characters
local UnificationScale = {}

local PART_NAMES = {
	"RightFoot",
	"LeftFoot",
	"RightHand",
	"LeftHand",
	"RightLowerArm",
	"LeftLowerArm",
	"RightLowerLeg",
	"LeftLowerLeg",
	"RightUpperArm",
	"LeftUpperArm",
	"RightUpperLeg",
	"LeftUpperLeg",
	"LowerTorso",
	"UpperTorso",
	"Head",
}

local MOTOR_MAPPINGS: { [string]: string } = {
	RightFoot = "RightAnkle",
	LeftFoot = "LeftAnkle",
	RightHand = "RightWrist",
	LeftHand = "LeftWrist",
	RightLowerArm = "RightElbow",
	LeftLowerArm = "LeftElbow",
	RightLowerLeg = "RightKnee",
	LeftLowerLeg = "LeftKnee",
	RightUpperArm = "RightShoulder",
	LeftUpperArm = "LeftShoulder",
	RightUpperLeg = "RightHip",
	LeftUpperLeg = "LeftHip",
	LowerTorso = "Root",
	UpperTorso = "Waist",
	Head = "Neck",
}

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

type R15Hitboxes = {
	RightFoot: Vector3,
	LeftFoot: Vector3,
	RightHand: Vector3,
	LeftHand: Vector3,
	RightLowerArm: Vector3,
	LeftLowerArm: Vector3,
	RightLowerLeg: Vector3,
	LeftLowerLeg: Vector3,
	RightUpperArm: Vector3,
	LeftUpperArm: Vector3,
	RightUpperLeg: Vector3,
	LeftUpperLeg: Vector3,
	LowerTorso: Vector3,
	UpperTorso: Vector3,
	Head: Vector3,
	HumanoidRootPart: Vector3,
}

type RiggingAttachment = {
	C0: Vector3,
	C1: Vector3,
	Part0: Part,
	Part1: Part,
}

type R15Attachments = {
	RightFoot: RiggingAttachment,
	LeftFoot: RiggingAttachment,
	RightHand: RiggingAttachment,
	LeftHand: RiggingAttachment,
	RightLowerArm: RiggingAttachment,
	LeftLowerArm: RiggingAttachment,
	RightLowerLeg: RiggingAttachment,
	LeftLowerLeg: RiggingAttachment,
	RightUpperArm: RiggingAttachment,
	LeftUpperArm: RiggingAttachment,
	RightUpperLeg: RiggingAttachment,
	LeftUpperLeg: RiggingAttachment,
	LowerTorso: RiggingAttachment,
	UpperTorso: RiggingAttachment,
	Head: RiggingAttachment,
	HumanoidRootPart: RiggingAttachment,
}

type R15Definition = {
	Sizes: { [string]: Vector3 },
	Rigging: { [string]: { C0: CFrame, C1: CFrame } },
}

UnificationScale.Target = {
	Sizes = {
		RightFoot = Vector3.new(1, 0.3, 1),
		LeftFoot = Vector3.new(1, 0.3, 1),
		RightHand = Vector3.new(1, 0.3, 1),
		LeftHand = Vector3.new(1, 0.3, 1),
		RightLowerArm = Vector3.new(1, 1.0518989562988281, 1),
		LeftLowerArm = Vector3.new(1, 1.0518989562988281, 1),
		RightLowerLeg = Vector3.new(1, 1.1930999755859375, 1),
		LeftLowerLeg = Vector3.new(1, 1.193100094795227, 1),
		RightUpperArm = Vector3.new(1, 1.1686992645263672, 1),
		LeftUpperArm = Vector3.new(1, 1.1686992645263672, 1),
		RightUpperLeg = Vector3.new(1, 1.2166004180908203, 1),
		LeftUpperLeg = Vector3.new(1, 1.2166005373001099, 1),
		LowerTorso = Vector3.new(2, 0.4, 1),
		UpperTorso = Vector3.new(2, 1.6, 1),
		Head = Vector3.new(1.2, 1.2, 1.2),
		HumanoidRootPart = Vector3.new(2, 2, 1),
	},
	Rigging = {
		RightAnkle = {
			C0 = CFrame.new(0, -0.547157168, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
			C1 = CFrame.new(0, 0.101939559, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
		},
		LeftAnkle = {
			C0 = CFrame.new(0, -0.547157228, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
			C1 = CFrame.new(0, 0.101939693, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
		},
		RightWrist = {
			C0 = CFrame.new(0, -0.5009287, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
			C1 = CFrame.new(0, 0.125045404, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
		},
		LeftWrist = {
			C0 = CFrame.new(0.000478625298, -0.5009287, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
			C1 = CFrame.new(0.000478982925, 0.125045404, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
		},
		RightElbow = {
			C0 = CFrame.new(0, -0.334165096, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
			C1 = CFrame.new(0, 0.258579493, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
		},
		LeftElbow = {
			C0 = CFrame.new(0.000479221344, -0.334056377, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
			C1 = CFrame.new(0.000478625298, 0.258688211, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
		},
		RightKnee = {
			C0 = CFrame.new(0, -0.400946498, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
			C1 = CFrame.new(0, 0.379174292, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
		},
		LeftKnee = {
			C0 = CFrame.new(0, -0.401102424, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
			C1 = CFrame.new(0, 0.379018486, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
		},
		RightShoulder = {
			C0 = CFrame.new(0.99999994, 0.56301713, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
			C1 = CFrame.new(-0.500000715, 0.394326687, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
		},
		LeftShoulder = {
			C0 = CFrame.new(-1, 0.56301713, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
			C1 = CFrame.new(0.500000358, 0.394326687, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
		},
		RightHip = {
			C0 = CFrame.new(0.499999881, -0.199972257, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
			C1 = CFrame.new(0, 0.420782268, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
		},
		LeftHip = {
			C0 = CFrame.new(-0.500000119, -0.199972257, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
			C1 = CFrame.new(0, 0.420782208, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
		},
		Root = {
			C0 = CFrame.new(0, -1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
			C1 = CFrame.new(0, -0.199972257, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
		},
		Waist = {
			C0 = CFrame.new(0, 0.200024918, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
			C1 = CFrame.new(0, -0.799985707, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
		},
		Neck = {
			C0 = CFrame.new(0, 0.800017118, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
			C1 = CFrame.new(0, -0.500000119, -0.000272244215, 1, 0, 0, 0, 1, 0, 0, 0, 1),
		},
	},
} :: R15Definition

local function GetHitboxes(character: Model): R15Hitboxes
	local ret = {}
	for _, name in PART_NAMES do
		local part = character[name]
		ret[name] = part.Size
	end
	ret.HumanoidRootPart = character.HumanoidRootPart.Size
	return ret
end

local function GetOffset(attachment: RiggingAttachment, part: Part | MeshPart): Vector3
	if attachment.Part0 == part then
		return attachment.C0
	elseif attachment.Part1 == part then
		return attachment.C1
	else
		error("part not element of attachment")
	end
end

local function GetRelativeRigging(motor: Motor6D): RiggingAttachment
	if motor.Part0 == nil or motor.Part1 == nil then
		error("Missing attachment parts")
	end

	return {
		C0 = motor.C0.Position / motor.Part0.Size,
		C1 = motor.C1.Position / motor.Part1.Size,
		Part0 = motor.Part0,
		Part1 = motor.Part1,
	}
end

local function GetRelativeAttachments(character: Model): R15Attachments
	local ret = {}
	for _, name in PART_NAMES do
		local part = character[name] :: MeshPart

		if MOTOR_MAPPINGS[name] ~= nil then
			local motor = part:WaitForChild(MOTOR_MAPPINGS[name]) :: Motor6D
			ret[name] = GetRelativeRigging(motor)
		end
	end

	return ret
end

local function ResetScaling(humanoid: Humanoid)
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

local function MoveAndScalePart(part: MeshPart, newSize: Vector3): MeshPart
	part.Archivable = true
	local oldSize = part.Size
	part.Size = newSize

	if part:FindFirstChild("OriginalSize") then
		part.OriginalSize.Value = part.Size
	end

	local scaleFactor = newSize / oldSize
	for _, child in pairs(part:GetChildren()) do
		if child.ClassName == "Attachment" then
			child.CFrame = child.CFrame + child.CFrame.Position * (scaleFactor - Vector3.one)
			if child:FindFirstChild("OriginalPosition") then
				child.OriginalPosition.Value = child.Position
			end
		end
	end
end

local function MoveAndScaleUpperTorso(
	upperTorso: MeshPart,
	oldRelativeRigging: R15Attachments,
	oldHitboxes: R15Hitboxes,
	targetRig: R15Definition,
	scalingFactors: { [string]: Vector3 }
)
	local left = GetOffset(oldRelativeRigging.LeftUpperArm, upperTorso)
	local right = GetOffset(oldRelativeRigging.RightUpperArm, upperTorso)
	local top = GetOffset(oldRelativeRigging.Head, upperTorso)
	local bottom = GetOffset(oldRelativeRigging.UpperTorso, upperTorso)
	local relativeX = (targetRig.Rigging.RightShoulder.C0.X - targetRig.Rigging.LeftShoulder.C0.X)
		/ (right.X - left.X)
		/ targetRig.Sizes.UpperTorso.X

	-- Clamp height so characters can't get too tall
	local relativeY = (targetRig.Rigging.Neck.C0.Y - targetRig.Rigging.Waist.C1.Y)
		/ (top.Y - bottom.Y)
		/ targetRig.Sizes.UpperTorso.Y
	local relativeZ = oldHitboxes.UpperTorso.Z / targetRig.Sizes.UpperTorso.Z

	relativeX = math.clamp(relativeX, 0, 1)
	relativeY = math.clamp(relativeY, 0, 0.9)
	relativeZ = math.clamp(relativeZ, 0, 1.5)

	local scaleFactor = Vector3.new(relativeX, relativeY, relativeZ)

	scalingFactors["UpperTorso"] = scaleFactor

	MoveAndScalePart(upperTorso, targetRig.Sizes.UpperTorso * scaleFactor)
end

local function MoveAndScaleLowerTorso(
	lowerTorso: MeshPart,
	oldRelativeRigging: R15Attachments,
	oldHitboxes: R15Hitboxes,
	targetRig: R15Definition,
	scalingFactors: { [string]: Vector3 }
)
	local lowerTop = GetOffset(oldRelativeRigging.UpperTorso, lowerTorso)
	local lowerBotttom = GetOffset(oldRelativeRigging.LeftUpperLeg, lowerTorso)
	local lowerLeft = GetOffset(oldRelativeRigging.LeftUpperLeg, lowerTorso)
	local lowerRight = GetOffset(oldRelativeRigging.RightUpperLeg, lowerTorso)

	local relativeX = (targetRig.Rigging.RightHip.C0.Position.X - targetRig.Rigging.LeftHip.C0.Position.X)
		/ (lowerRight.X - lowerLeft.X)
		/ targetRig.Sizes.LowerTorso.X
	local relativeY = (targetRig.Rigging.Waist.C0.Position.Y - targetRig.Rigging.LeftHip.C0.Position.Y)
		/ (lowerTop.Y - lowerBotttom.Y)
		/ targetRig.Sizes.LowerTorso.Y
	local relativeZ = oldHitboxes.LowerTorso.Z / targetRig.Sizes.LowerTorso.Z

	relativeX = math.clamp(relativeX, 0, 0.9)
	relativeY = math.clamp(relativeY, 0, 5)
	relativeZ = math.clamp(relativeZ, 0, 0.9)

	local scaleFactor = Vector3.new(relativeX, relativeY, relativeZ)

	scalingFactors["LowerTorso"] = scaleFactor

	MoveAndScalePart(lowerTorso, targetRig.Sizes.LowerTorso * scaleFactor)
end

local function MoveAndScaleTorso(
	character: Model,
	oldRelativeRigging: R15Attachments,
	oldHitboxes: R15Hitboxes,
	targetRig: R15Definition,
	scalingFactors: { [string]: Vector3 }
)
	MoveAndScaleUpperTorso(character.UpperTorso, oldRelativeRigging, oldHitboxes, targetRig, scalingFactors)
	MoveAndScaleLowerTorso(character.LowerTorso, oldRelativeRigging, oldHitboxes, targetRig, scalingFactors)
end

local function calculateCombinedPartsHeight(
	secondPartPos: Vector3,
	thirdPartPos: Vector3,
	firstPartSize: Vector3,
	secondPartSize: Vector3,
	thirdPartSize: Vector3
): Vector3
	-- Set first part to origin
	local firstPartPos = Vector3.zero

	local minFirstPos = firstPartPos - firstPartSize / 2
	local minSecondPos = secondPartPos - secondPartSize / 2
	local minThirdPos = thirdPartPos - thirdPartSize / 2

	local maxFirstPos = firstPartPos + firstPartSize / 2
	local maxSecondPos = secondPartPos + secondPartSize / 2
	local maxThirdPos = thirdPartPos + thirdPartSize / 2

	local partHeight = maxFirstPos:Max(maxSecondPos, maxThirdPos) - minFirstPos:Min(minSecondPos, minThirdPos)
	return partHeight
end

local function MoveAndScaleArm(
	character: Model,
	oldHitboxes: R15Hitboxes,
	side: "Left" | "Right",
	scalingFactors: { [string]: Vector3 }
)
	local upperArm = character[side .. "UpperArm"]
	local lowerArm = character[side .. "LowerArm"]
	local hand = character[side .. "Hand"]

	local oldUpperSize = oldHitboxes[side .. "UpperArm"]
	local oldLowerSize = oldHitboxes[side .. "LowerArm"]
	local oldHandSize = oldHitboxes[side .. "Hand"]

	-- Calculate current {old} arm height by traversing joints, showing upperArmPos as Vector3.zero for readability, not actual usage
	local upperArmPos = Vector3.zero
	local lowerArmPos = upperArmPos
		+ upperArm[side .. "ElbowRigAttachment"].Position
		- lowerArm[side .. "ElbowRigAttachment"].Position
	local handPos = lowerArmPos
		+ lowerArm[side .. "WristRigAttachment"].Position
		- hand[side .. "WristRigAttachment"].Position
	local armSize = calculateCombinedPartsHeight(lowerArmPos, handPos, oldUpperSize, oldLowerSize, oldHandSize)

	local targetSize = Vector3.new(1, 2, 1)

	local scaleFactor = Vector3.new(
		math.max(math.clamp(targetSize.X / armSize.X, 0, 2.5), 1),
		targetSize.Y / armSize.Y,
		math.max(math.clamp(targetSize.Z / armSize.Z, 0, 1), 1)
	)

	MoveAndScalePart(upperArm, scaleFactor * oldUpperSize)
	MoveAndScalePart(lowerArm, scaleFactor * oldLowerSize)
	MoveAndScalePart(hand, scaleFactor * oldHandSize)
	scalingFactors[side .. "UpperArm"] = scaleFactor
	scalingFactors[side .. "LowerArm"] = scaleFactor
	scalingFactors[side .. "Hand"] = scaleFactor
end

local function MoveAndScaleArms(character: Model, oldHitboxes: R15Hitboxes, scalingFactors: { [string]: Vector3 })
	MoveAndScaleArm(character, oldHitboxes, "Left", scalingFactors)
	MoveAndScaleArm(character, oldHitboxes, "Right", scalingFactors)
end

local function MoveAndScaleLeg(
	character: Model,
	oldHitboxes: R15Hitboxes,
	side: "Left" | "Right",
	scalingFactors: { [string]: Vector3 }
)
	local upperLeg = character[side .. "UpperLeg"]
	local lowerLeg = character[side .. "LowerLeg"]
	local foot = character[side .. "Foot"]
	local humanoidRootPart = character["HumanoidRootPart"]
	local lowerTorso = character["LowerTorso"]

	local oldUpperSize = oldHitboxes[side .. "UpperLeg"]
	local oldLowerSize = oldHitboxes[side .. "LowerLeg"]
	local oldFootSize = oldHitboxes[side .. "Foot"]

	-- Calculate current {old} leg height
	local upperLegPos = Vector3.zero
	local lowerLegPos = upperLegPos
		+ upperLeg[side .. "KneeRigAttachment"].Position
		- lowerLeg[side .. "KneeRigAttachment"].Position
	local footPos = lowerLegPos
		+ lowerLeg[side .. "AnkleRigAttachment"].Position
		- foot[side .. "AnkleRigAttachment"].Position
	local legSize = calculateCombinedPartsHeight(lowerLegPos, footPos, oldUpperSize, oldLowerSize, oldFootSize)

	-- Need to calculate leg height based on the HipHeight so that characters don't look like they are floating or sinking into the ground
	local HRPPos = Vector3.zero
	upperLegPos = HRPPos
		+ humanoidRootPart["RootRigAttachment"].Position
		- lowerTorso["RootRigAttachment"].Position
		+ lowerTorso[side .. "HipRigAttachment"].Position
		- upperLeg[side .. "HipRigAttachment"].Position
	lowerLegPos = upperLegPos
		+ upperLeg[side .. "KneeRigAttachment"].Position
		- lowerLeg[side .. "KneeRigAttachment"].Position
	footPos = lowerLegPos
		+ lowerLeg[side .. "AnkleRigAttachment"].Position
		- foot[side .. "AnkleRigAttachment"].Position
	local maxUpper = upperLegPos + oldUpperSize / 2
	local maxLower = lowerLegPos + oldLowerSize / 2
	local maxFoot = footPos + oldFootSize / 2

	local maxLegPos = maxUpper:Max(maxLower, maxFoot) :: Vector3
	local HRPIntersection = maxLegPos.Y - (HRPPos.Y - humanoidRootPart.Size.Y / 2)
	local percentageIntersection = HRPIntersection / legSize.Y

	local targetSize = Vector3.new(1, 2, 1)
	-- Get the part of the Leg OUTSIDE of the HRP to be the same length as the HipHeight (Humanoid.HipHeight == 2 for R6)
	local targetHeight = 2 / (1 - percentageIntersection)

	local scaleFactor = Vector3.new(
		math.max(1, math.clamp(targetSize.X / legSize.X, 0, 1.4)),
		targetHeight / legSize.Y,
		math.max(1, math.clamp(targetSize.Z / legSize.Z, 0, 1.4))
	)

	MoveAndScalePart(upperLeg, scaleFactor * oldUpperSize)
	MoveAndScalePart(lowerLeg, scaleFactor * oldLowerSize)
	MoveAndScalePart(foot, scaleFactor * oldFootSize)
	scalingFactors[side .. "UpperLeg"] = scaleFactor
	scalingFactors[side .. "LowerLeg"] = scaleFactor
	scalingFactors[side .. "Foot"] = scaleFactor
end

local function MoveAndScaleLegs(character: Model, oldHitboxes: R15Hitboxes, scalingFactors: { [string]: Vector3 })
	MoveAndScaleLeg(character, oldHitboxes, "Left", scalingFactors)
	MoveAndScaleLeg(character, oldHitboxes, "Right", scalingFactors)
end

local function MoveAndScaleHead(character: Model, scalingFactors: { [string]: Vector3 })
	local EPSILON = 0.00000001
	local head = character.Head
	local neck = head.NeckRigAttachment
	local hat = head.HatAttachment
	local height = (hat.Position.Y - neck.Position.Y)
	height = math.max(height, EPSILON)
	local scaleFactor = 1 / height
	local headSize = head.Size
	scaleFactor = math.clamp(scaleFactor, 0, 2 / math.max(headSize.Y, EPSILON))
	local scaleFactorVec = Vector3.new(scaleFactor, scaleFactor, scaleFactor)

	scalingFactors["Head"] = scaleFactorVec

	MoveAndScalePart(head, scaleFactorVec * headSize)
end

local function MoveAndScaleParts(
	character: Model,
	oldRelativeRigging: R15Attachments,
	oldHitboxes: R15Hitboxes,
	targetRig: R15Definition,
	scalingFactors: { [string]: Vector3 }
)
	character.HumanoidRootPart.Size = targetRig.Sizes.HumanoidRootPart
	MoveAndScaleTorso(character, oldRelativeRigging, oldHitboxes, targetRig, scalingFactors)
	MoveAndScaleArms(character, oldHitboxes, scalingFactors)
	MoveAndScaleLegs(character, oldHitboxes, scalingFactors)
	MoveAndScaleHead(character, scalingFactors)
end

local function MoveAndScaleAccessories(character: Model, scalingFactors: { [string]: Vector3 })
	local humanoid = character:WaitForChild("Humanoid")
	for _, accessory in pairs(humanoid:GetAccessories()) do
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
		if partName == "UpperTorso" or partName == "LowerTorso" then
			continue
		end
		local partScaling = scalingFactors[partName]

		accessoryHandle.Size = accessoryHandle.Size * partScaling
		if accessoryHandle:FindFirstChild("OriginalSize") then
			accessoryHandle.OriginalSize.Value = accessoryHandle.OriginalSize.Value * partScaling
		end
		accessoryAttachment.CFrame = accessoryAttachment.CFrame
			+ (accessoryAttachment.CFrame.Position * (partScaling - Vector3.one))
		accessoryWeld.C1 = accessoryWeld.C1 + (accessoryWeld.C1.Position * (partScaling - Vector3.one))
	end
end

function UnificationScale.ScaleCharacter(character: Model, targetRig: R15Definition)
	local humanoid: Humanoid = character.Humanoid :: Humanoid

	ResetScaling(humanoid)

	local oldHitboxes = GetHitboxes(character)
	local oldRelativeRigging = GetRelativeAttachments(character)
	local scalingFactors = {}
	MoveAndScaleParts(character, oldRelativeRigging, oldHitboxes, targetRig, scalingFactors)
	MoveAndScaleAccessories(character, scalingFactors)
	humanoid.HipHeight = 2
	humanoid:BuildRigFromAttachments()
end

return UnificationScale
