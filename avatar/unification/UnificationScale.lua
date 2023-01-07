-- UnificationScale.lua
-- Module script implementing scaling and positioning of R15 parts to target positions.
-- The target in this script is defined according to R6 characters
local UnificationScale = {}

local PartNames = {
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

type R15Definition = {
	Sizes: { [string]: Vector3 },
	Rigging: { [string]: { C0: CFrame, C1: CFrame } },
}

type Hitbox = {
	Size: Vector3,
	Orientation: CFrame,
}

type RiggingAttachment = {
	C0: Vector3,
	C1: Vector3,
	Part0: Part,
	Part1: Part,
}

type R15Hitboxes = {
	RightFoot: Hitbox,
	LeftFoot: Hitbox,
	RightHand: Hitbox,
	LeftHand: Hitbox,
	RightLowerArm: Hitbox,
	LeftLowerArm: Hitbox,
	RightLowerLeg: Hitbox,
	LeftLowerLeg: Hitbox,
	RightUpperArm: Hitbox,
	LeftUpperArm: Hitbox,
	RightUpperLeg: Hitbox,
	LeftUpperLeg: Hitbox,
	LowerTorso: Hitbox,
	UpperTorso: Hitbox,
	Head: Hitbox,
	HumanoidRootPart: Hitbox,
}

type R15RelativeAttachments = {
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

local MotorMappings: { [string]: string } = {
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
	for _, name in PartNames do
		local part = character[name]
		ret[name] = { Size = part.Size, Orientation = part.CFrame }
	end
	ret.HumanoidRootPart = { Size = character.HumanoidRootPart.Size, Orientation = character.HumanoidRootPart.CFrame }

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

local function MakeAccessory(part: MeshPart, newHitboxes: R15Hitboxes, scale: Vector3, offset: CFrame): MeshPart
	local name = part.Name
	local character = part.Parent
	part.Archivable = true
	part.Size = scale

	if part:FindFirstChild("OriginalSize") then
		part.OriginalSize.Value = part.Size
	end

	local rigAtt = MotorMappings[name]
	local motor = part[rigAtt] :: Motor6D
	local origOrientation = motor.CurrentAngle
	local newOffset = CFrame.new(character[name].CFrame.Position - newHitboxes[name].Orientation.Position)
	motor.C0 = motor.C0 * offset:Inverse() * newOffset:Inverse()
	motor.CurrentAngle = origOrientation
end

local function MakeVisualUpperTorso(
	upperTorso: MeshPart,
	relativeAttachments: R15RelativeAttachments,
	oldHitboxes: R15Hitboxes,
	newHitboxes: R15Hitboxes,
	targetRig: R15Definition
): Vector3
	local left = GetOffset(relativeAttachments.LeftUpperArm, upperTorso)
	local right = GetOffset(relativeAttachments.RightUpperArm, upperTorso)
	local top = GetOffset(relativeAttachments.Head, upperTorso)
	local bottom = GetOffset(relativeAttachments.UpperTorso, upperTorso)

	local relativeX = (targetRig.Rigging.RightShoulder.C0.X - targetRig.Rigging.LeftShoulder.C0.X)
		/ (right.X - left.X)
		/ targetRig.Sizes.UpperTorso.X

	-- Clamp height so characters can't get too tall
	local relativeY = (targetRig.Rigging.Neck.C0.Y - targetRig.Rigging.Waist.C1.Y)
		/ (top.Y - bottom.Y)
		/ targetRig.Sizes.UpperTorso.Y
	relativeY = math.clamp(relativeY, 0, 3)

	local relativeZ = oldHitboxes.UpperTorso.Size.Z / newHitboxes.UpperTorso.Size.Z
	local relativeScaling = Vector3.new(relativeX, relativeY, relativeZ)

	local offset = bottom * relativeScaling * newHitboxes.UpperTorso.Size

	local neckHeight = newHitboxes.UpperTorso.Size.Y / 2
	local neckDiff = newHitboxes.UpperTorso.Size.Y * top.Y * relativeScaling.Y
	local neckDelta = neckDiff - neckHeight

	MakeAccessory(
		upperTorso,
		newHitboxes,
		newHitboxes.UpperTorso.Size * relativeScaling,
		CFrame.new(offset.X, neckDelta, offset.Z)
	)

	return Vector3.new(0, neckDelta, offset.Z)
end

local function MakeVisualLowerTorso(
	lowerTorso: MeshPart,
	relativeAttachments: R15RelativeAttachments,
	oldHitboxes: R15Hitboxes,
	newHitboxes: R15Hitboxes,
	targetRig: R15Definition
)
	local lowerTop = GetOffset(relativeAttachments.UpperTorso, lowerTorso)
	local lowerBotttom = GetOffset(relativeAttachments.LeftUpperLeg, lowerTorso)
	local lowerLeft = GetOffset(relativeAttachments.LeftUpperLeg, lowerTorso)
	local lowerRight = GetOffset(relativeAttachments.RightUpperLeg, lowerTorso)
	local waistJoint = GetOffset(relativeAttachments.UpperTorso, lowerTorso)

	local relativeX = (targetRig.Rigging.RightHip.C0.Position.X - targetRig.Rigging.LeftHip.C0.Position.X)
		/ (lowerRight.X - lowerLeft.X)
		/ targetRig.Sizes.LowerTorso.X
	local relativeY = (targetRig.Rigging.Waist.C0.Position.Y - targetRig.Rigging.LeftHip.C0.Position.Y)
		/ (lowerTop.Y - lowerBotttom.Y)
		/ targetRig.Sizes.LowerTorso.Y
	local relativeZ = oldHitboxes.LowerTorso.Size.Z / newHitboxes.LowerTorso.Size.Z
	local relativeScaling = Vector3.new(relativeX, relativeY, relativeZ)

	local offset = waistJoint * relativeScaling * newHitboxes.LowerTorso.Size

	local waistHeight = newHitboxes.LowerTorso.Size.Y / 2
	local waistDiff = newHitboxes.LowerTorso.Size.Y * lowerTop.Y * relativeScaling.Y
	local waistDelta = waistDiff - waistHeight

	MakeAccessory(
		lowerTorso,
		newHitboxes,
		newHitboxes.LowerTorso.Size * relativeScaling,
		CFrame.new(offset.X, waistDelta, offset.Z)
	)
end

-- Returns offset of visual torso from real hitbox
local function MakeVisualTorso(
	character: Model,
	relativeAttachments: R15RelativeAttachments,
	oldHitboxes: R15Hitboxes,
	newHitboxes: R15Hitboxes,
	targetRig: R15Definition
): Vector3
	local torsoOffset =
		MakeVisualUpperTorso(character.UpperTorso, relativeAttachments, oldHitboxes, newHitboxes, targetRig)
	MakeVisualLowerTorso(character.LowerTorso, relativeAttachments, oldHitboxes, newHitboxes, targetRig)
	return torsoOffset
end

local function MakeVisualArm(
	character: Model,
	relativeAttachments: R15RelativeAttachments,
	oldHitboxes: R15Hitboxes,
	newHitboxes: R15Hitboxes,
	torsoOffset: Vector3,
	side: "Left" | "Right"
)
	local upperArm = character[side .. "UpperArm"]
	local lowerArm = character[side .. "LowerArm"]
	local rightHand = character[side .. "Hand"]
	local attachment = relativeAttachments[side .. "UpperArm"]
	local torso = character.UpperTorso

	local oldUpper = oldHitboxes[side .. "UpperArm"]
	local oldLower = oldHitboxes[side .. "LowerArm"]
	local oldHand = oldHitboxes[side .. "Hand"]
	local newUpper = newHitboxes[side .. "UpperArm"]
	local newLower = newHitboxes[side .. "LowerArm"]
	local newHand = newHitboxes[side .. "Hand"]

	local armTop = oldUpper.Orientation.Y + oldUpper.Size.Y / 2
	local armBottom = oldHand.Orientation.Y - oldHand.Size.Y / 2
	local armHeight = armTop - armBottom

	local targetHeight = (newUpper.Orientation.Y + newUpper.Size.Y / 2) - (newHand.Orientation.Y - newHand.Size.Y / 2)
	local scale = targetHeight / armHeight

	local shoulder = GetOffset(attachment, upperArm)
	local torsoShoulder = GetOffset(attachment, torso)
	local shoulderZDiff = torsoShoulder.Z * oldHitboxes.UpperTorso.Size.Z
	local armEdge = newUpper.Size.X / 2
	local jointPos = shoulder.X * oldUpper.Size.X
	local shoulderXDiff

	if side == "Left" then
		shoulderXDiff = jointPos - armEdge
	else
		shoulderXDiff = jointPos + armEdge
	end

	local shoulderDiff = Vector3.new(shoulderXDiff, 0, torsoOffset.Z - shoulderZDiff)

	local oldElbow = oldUpper.Orientation.Position - oldLower.Orientation.Position
	local newElbow = newUpper.Orientation.Position - newLower.Orientation.Position
	local elbowDiff = oldElbow - newElbow

	local oldWrist = oldLower.Orientation.Position - oldHand.Orientation.Position
	local newWrist = newLower.Orientation.Position - newHand.Orientation.Position
	local wristDiff = oldWrist - newWrist

	local lowerOffset = Vector3.new(0, oldUpper.Orientation.Y - oldLower.Orientation.Y, 0)
	local handOffset = Vector3.new(0, oldLower.Orientation.Y - oldHand.Orientation.Y, 0)

	-- Scale the arm only on the y axis, keeping the relative positions of the joints the same
	MakeAccessory(upperArm, newHitboxes, oldUpper.Size * Vector3.new(1, scale, 1), CFrame.new(shoulderDiff))
	MakeAccessory(
		lowerArm,
		newHitboxes,
		oldLower.Size * Vector3.new(1, scale, 1),
		CFrame.new((shoulderDiff + elbowDiff) - lowerOffset * (1 - scale))
	)
	MakeAccessory(
		rightHand,
		newHitboxes,
		oldHand.Size * Vector3.new(1, scale, 1),
		CFrame.new((shoulderDiff + elbowDiff + wristDiff) - (handOffset + lowerOffset) * (1 - scale))
	)
end

local function MakeVisualArms(
	character: Model,
	relativeAttachments: R15RelativeAttachments,
	oldHitboxes: R15Hitboxes,
	newHitboxes: R15Hitboxes,
	torsoOffset: Vector3
)
	MakeVisualArm(character, relativeAttachments, oldHitboxes, newHitboxes, torsoOffset, "Left")
	MakeVisualArm(character, relativeAttachments, oldHitboxes, newHitboxes, torsoOffset, "Right")
end

local function MakeVisualLeg(
	character: Model,
	oldHitboxes: R15Hitboxes,
	newHitboxes: R15Hitboxes,
	side: "Left" | "Right"
)
	local upperLeg = character[side .. "UpperLeg"]
	local lowerLeg = character[side .. "LowerLeg"]
	local foot = character[side .. "Foot"]

	local oldUpper = oldHitboxes[side .. "UpperLeg"]
	local oldLower = oldHitboxes[side .. "LowerLeg"]
	local oldFoot = oldHitboxes[side .. "Foot"]
	local newUpper = newHitboxes[side .. "UpperLeg"]
	local newLower = newHitboxes[side .. "LowerLeg"]
	local newFoot = newHitboxes[side .. "Foot"]

	local legTop = oldUpper.Orientation.Y + oldUpper.Size.Y / 2
	local legBottom = oldFoot.Orientation.Y - oldFoot.Size.Y / 2
	local legHeight = legTop - legBottom
	local targetHeight = (newUpper.Orientation.Y + newUpper.Size.Y / 2) - (newFoot.Orientation.Y - newFoot.Size.Y / 2)
	local scale = targetHeight / legHeight

	local oldKnee = oldUpper.Orientation.Position - oldLower.Orientation.Position
	local newKnee = newUpper.Orientation.Position - newLower.Orientation.Position
	local kneeDiff = oldKnee - newKnee

	local oldAnkle = oldLower.Orientation.Position - oldFoot.Orientation.Position
	local newAnkle = newLower.Orientation.Position - newFoot.Orientation.Position
	local ankleDiff = oldAnkle - newAnkle

	local lowerOffset = Vector3.new(0, oldUpper.Orientation.Y - oldLower.Orientation.Y, 0)
	local footOffset = Vector3.new(0, oldLower.Orientation.Y - oldFoot.Orientation.Y, 0)
	MakeAccessory(upperLeg, newHitboxes, oldUpper.Size * Vector3.new(1, scale, 1), CFrame.new())
	MakeAccessory(
		lowerLeg,
		newHitboxes,
		oldLower.Size * Vector3.new(1, scale, 1),
		CFrame.new(kneeDiff - lowerOffset * (1 - scale))
	)
	MakeAccessory(
		foot,
		newHitboxes,
		oldFoot.Size * Vector3.new(1, scale, 1),
		CFrame.new(kneeDiff + ankleDiff - (footOffset + lowerOffset) * (1 - scale))
	)
end

local function MakeVisualLegs(character: Model, oldHitboxes: R15Hitboxes, newHitboxes: R15Hitboxes)
	MakeVisualLeg(character, oldHitboxes, newHitboxes, "Left")
	MakeVisualLeg(character, oldHitboxes, newHitboxes, "Right")
end

local function MakeVisualHead(
	character: Model,
	relativeAttachments: R15RelativeAttachments,
	oldHitboxes: R15Hitboxes,
	newHitboxes: R15Hitboxes
)
	local head = character.Head
	local upperTorso = character.UpperTorso
	local visTorso = head.Parent:FindFirstChild("UpperTorso") :: MeshPart

	local neckHeadAttachment = GetOffset(relativeAttachments.Head, head)
	local neckTorsoAttachment = GetOffset(relativeAttachments.Head, upperTorso)

	local neckDiff = neckHeadAttachment * oldHitboxes.Head.Size - neckHeadAttachment * newHitboxes.Head.Size
	local zOffset = neckHeadAttachment.Z * oldHitboxes.Head.Size.Z - neckTorsoAttachment.Z * visTorso.Size.Z

	MakeAccessory(head, newHitboxes, oldHitboxes.Head.Size, CFrame.new(neckDiff + Vector3.new(0, 0, zOffset)))
end

local function MoveAccessories(character: Model, oldHitboxes: R15Hitboxes)
	for _, instance in character:GetChildren() do
		if not instance:IsA("Accessory") then
			continue
		end

		local handle = instance.Handle
		local weld = handle:FindFirstChildOfClass("Weld")
		if not weld then
			-- If the Handle has no Attachment then this Accessory will
			-- create a Weld in the characters Head, not the Handle.
			continue
		end

		-- Wait for welds to load (sometimes takes longer than loading the rest of the character)
		while weld.Part0 == nil or weld.Part1 == nil do
			task.wait()
		end

		local attachment = handle:FindFirstChildOfClass("Attachment")
		local basePart = character[(if weld.Part0 == handle then weld.Part1 else weld.Part0).Name]
		local baseAttachment = basePart[attachment.Name]

		local newBasePart = character[basePart.Name]

		local diff = basePart.Position - newBasePart.Position

		attachment.Position += diff + (baseAttachment.Position - baseAttachment.Position / oldHitboxes[basePart.Name].Size * newBasePart.Size)
	end
end

local function GetRelativeRigging(motor: Motor6D, attachment: Attachment): { C0: Vector3, C1: Vector3 }
	if motor.Part0 == nil or motor.Part1 == nil then
		error("Missing attachment parts")
	end

	return {
		C0 = motor.C0.Position / motor.Part0.Size,
		C1 = motor.C1.Position / motor.Part1.Size,
		Part0 = motor.Part0,
		Part1 = motor.Part1,
		CFrame = attachment.WorldCFrame,
	}
end

local function GetRelativeAttachments(character: Model): R15RelativeAttachments
	local ret = {}
	for _, name in PartNames do
		local part = character[name] :: MeshPart

		if MotorMappings[name] ~= nil then
			local motor = part:WaitForChild(MotorMappings[name]) :: Motor6D
			local attachment = part:WaitForChild(MotorMappings[name] .. "RigAttachment") :: Attachment
			ret[name] = GetRelativeRigging(motor, attachment)
		end
	end

	return ret
end

local function RetargetHitboxes(character: Model, targetRig: R15Definition)
	character.HumanoidRootPart.Size = targetRig.Sizes.HumanoidRootPart
	for _, name in PartNames do
		local part = character[name] :: MeshPart

		if MotorMappings[name] ~= nil then
			local attachmentName = MotorMappings[name] .. "RigAttachment"
			local motor = part:WaitForChild(MotorMappings[name]) :: Motor6D
			local a0 = motor.Part0[attachmentName]
			local a1 = motor.Part1[attachmentName]

			motor.C0 = motor.C0 * CFrame.new(targetRig.Rigging[motor.Name].C0.Position - a0.Position)
			motor.C1 = motor.C1 * CFrame.new(targetRig.Rigging[motor.Name].C1.Position - a1.Position)

			if a0:FindFirstChild("OriginalPosition") then
				a0["OriginalPosition"]:remove()
			end
			if a1:FindFirstChild("OriginalPosition") then
				a1["OriginalPosition"]:remove()
			end
		end

		part.Size = targetRig.Sizes[name]
		if part:FindFirstChild("OriginalSize") then
			part.OriginalSize.Value = targetRig.Sizes[name]
		end
	end
end

local function MakeVisualParts(
	character: Model,
	relativeAttachments: R15RelativeAttachments,
	oldHitbox: R15Hitboxes,
	newHitbox: R15Hitboxes,
	targetRig: R15Definition
)
	local torsoOffset = MakeVisualTorso(character, relativeAttachments, oldHitbox, newHitbox, targetRig)
	MakeVisualArms(character, relativeAttachments, oldHitbox, newHitbox, torsoOffset)
	MakeVisualHead(character, relativeAttachments, oldHitbox, newHitbox)
	MakeVisualLegs(character, oldHitbox, newHitbox)
end

local function ResetScaling(humanoid: Humanoid)
	humanoid.AutomaticScalingEnabled = false
	humanoid:WaitForChild("BodyWidthScale"):Destroy()
	humanoid:WaitForChild("BodyDepthScale"):Destroy()
	humanoid:WaitForChild("BodyProportionScale"):Destroy()
	humanoid:WaitForChild("BodyHeightScale"):Destroy()
	humanoid:WaitForChild("HeadScale"):Destroy()
end

function UnificationScale.ScaleCharacter(character: Model, targetRig: R15Definition)
	local originalOrientation = character.PrimaryPart.CFrame
	local humanoid: Humanoid = character.Humanoid :: Humanoid

	ResetScaling(humanoid)

	-- Set orientation to vertical so vertical position differences are accurate
	character.PrimaryPart.CFrame = CFrame.new()

	local oldHitboxes = GetHitboxes(character)
	local relativeAttachments = GetRelativeAttachments(character)
	RetargetHitboxes(character, targetRig)
	local newHitboxes = GetHitboxes(character)

	MakeVisualParts(character, relativeAttachments, oldHitboxes, newHitboxes, targetRig)
	MoveAccessories(character, oldHitboxes)

	humanoid.HipHeight = 2

	character.PrimaryPart.CFrame = originalOrientation
end

return UnificationScale
