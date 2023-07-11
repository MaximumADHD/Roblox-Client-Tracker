-- MoveAdapterPartHitboxes.lua
-- Module script implementing moving R6 adapter parts to their correct positions.
local MoveAdapterPartHitboxes = {}

local R6Parts: { [number]: string } = {
	"Right Leg",
	"Left Leg",
	"Left Arm",
	"Right Arm",
	"CollisionHead",
}

local PartToAttachmentMapping = {
	["LowerTorso"] = {
		Part0 = "HumanoidRootPart",
		Part1 = "LowerTorso",
		Attachment = "RootRigAttachment",
	},
	["UpperTorso"] = {
		Part0 = "LowerTorso",
		Part1 = "UpperTorso",
		Attachment = "WaistRigAttachment",
	},
	["CollisionHead"] = {
		Part0 = "UpperTorso",
		Part1 = "Head",
		Attachment = "NeckRigAttachment",
		SizeDiffFunction = function(torsoSize, partSize)
			return Vector3.new(0, -(torsoSize.Y + partSize.Y) / 2, 0)
		end,
	},
	["Left Arm"] = {
		Part0 = "UpperTorso",
		Part1 = "LeftUpperArm",
		Attachment = "LeftShoulderRigAttachment",
		SizeDiffFunction = function(torsoSize, partSize)
			return Vector3.new((torsoSize.X + partSize.X) / 2, 0, 0)
		end,
	},
	["Right Arm"] = {
		Part0 = "UpperTorso",
		Part1 = "RightUpperArm",
		Attachment = "RightShoulderRigAttachment",
		SizeDiffFunction = function(torsoSize, partSize)
			return Vector3.new(-(torsoSize.X + partSize.X) / 2, 0, 0)
		end,
	},
	["Left Leg"] = {
		Part0 = "LowerTorso",
		Part1 = "LeftUpperLeg",
		Attachment = "LeftHipRigAttachment",
		SizeDiffFunction = function(torsoSize, partSize)
			return Vector3.new(partSize.X / 2, (torsoSize.Y + partSize.Y) / 2, 0)
		end,
	},
	["Right Leg"] = {
		Part0 = "LowerTorso",
		Part1 = "RightUpperLeg",
		Attachment = "RightHipRigAttachment",
		SizeDiffFunction = function(torsoSize, partSize)
			return Vector3.new(-partSize.X / 2, (torsoSize.Y + partSize.Y) / 2, 0)
		end,
	},
}

local function getPartRelativePosition(character, part)
	local part0 = character:FindFirstChild(PartToAttachmentMapping[part].Part0)
	local part1 = character:FindFirstChild(PartToAttachmentMapping[part].Part1)
	if not part0 or not part1 then
		return nil
	end

	local part0Attachment = part0:FindFirstChild(PartToAttachmentMapping[part].Attachment)
	local part1Attachment = part1:FindFirstChild(PartToAttachmentMapping[part].Attachment)
	if not part0Attachment or not part1Attachment then
		return nil
	end

	--gets the relative position of the part depending on the previous one
	local partPosition = part0Attachment.Position - part1Attachment.Position
	return partPosition
end

local function getPartSizeDiff(partName, partSize, torsoSize)
	local sizeDiffFunction = PartToAttachmentMapping[partName].SizeDiffFunction
	if sizeDiffFunction then
		return sizeDiffFunction(torsoSize, partSize)
	else
		return Vector3.new()
	end
end

function MoveAdapterPartHitboxes.moveHitboxes(character: Model)
	local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
	local torso = character:FindFirstChild("Torso")

	if not humanoidRootPart or not torso then
		return
	end

	local torsoWeld = torso:FindFirstChildWhichIsA("Weld")
	if torsoWeld then
		torsoWeld.C0 = CFrame.new()
		torsoWeld.C1 = CFrame.new()
	else
		return
	end

	local lowerTorsoPosition = getPartRelativePosition(character, "LowerTorso")
	if not lowerTorsoPosition then
		return
	end

	local upperTorsoPosition = getPartRelativePosition(character, "UpperTorso")
	if not upperTorsoPosition then
		return
	end
	upperTorsoPosition = lowerTorsoPosition + upperTorsoPosition
	torsoWeld.C0 = CFrame.new(upperTorsoPosition)

	for _, partName in R6Parts do
		local part = character:FindFirstChild(partName)
		if not part then
			continue
		end

		local weld = part:FindFirstChildWhichIsA("Weld")
		if not weld then
			continue
		end

		weld.C0 = CFrame.new()
		weld.C1 = CFrame.new()

		local adapterPartPosDiff = getPartRelativePosition(character, partName)
		if not adapterPartPosDiff then
			continue
		end
		local adapterPartSizeDiff = getPartSizeDiff(partName, part.Size, torso.Size)
		if partName == "Left Arm" or partName == "Right Arm" or partName == "CollisionHead" then
			adapterPartPosDiff = adapterPartPosDiff + upperTorsoPosition
		elseif partName == "Left Leg" or partName == "Right Leg" then
			adapterPartPosDiff = adapterPartPosDiff + lowerTorsoPosition
		end
		weld.C0 = CFrame.new(adapterPartPosDiff + adapterPartSizeDiff)
	end
end

return MoveAdapterPartHitboxes
