-- SetupPhysicsParts.lua
-- Setup Physics Parts on R6 Characters
local SetupPhysicsParts = {}

local AestheticParts = {
	"LeftUpperLeg",
	"LeftLowerLeg",
	"LeftFoot",

	"RightUpperLeg",
	"RightLowerLeg",
	"RightFoot",

	"LowerTorso",
	"UpperTorso",

	"LeftUpperArm",
	"LeftLowerArm",
	"LeftHand",

	"RightUpperArm",
	"RightLowerArm",
	"RightHand",
}

local PhysicsParts: { [string]: string } = {
	"Physics Right Leg",
	"Physics Left Leg",
	"Physics Left Arm",
	"Physics Right Arm",
	"CollisionHead",
}

local function setUpAestheticPart(part)
	part["Massless"] = true
	part["CanCollide"] = false
	part["CanTouch"] = false
	part["CanQuery"] = false
end

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
	["Physics Left Arm"] = {
		Part0 = "UpperTorso",
		Part1 = "LeftUpperArm",
		Attachment = "LeftShoulderRigAttachment",
		SizeDiffFunction = function(torsoSize, partSize)
			return Vector3.new((torsoSize.X + partSize.X) / 2, 0, 0)
		end,
	},
	["Physics Right Arm"] = {
		Part0 = "UpperTorso",
		Part1 = "RightUpperArm",
		Attachment = "RightShoulderRigAttachment",
		SizeDiffFunction = function(torsoSize, partSize)
			return Vector3.new(-(torsoSize.X + partSize.X) / 2, 0, 0)
		end,
	},
	["Physics Left Leg"] = {
		Part0 = "LowerTorso",
		Part1 = "LeftUpperLeg",
		Attachment = "LeftHipRigAttachment",
		SizeDiffFunction = function(torsoSize, partSize)
			return Vector3.new(partSize.X / 2, (torsoSize.Y + partSize.Y) / 2, 0)
		end,
	},
	["Physics Right Leg"] = {
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

local function moveHitboxes(character: Model)
	local torso = character:FindFirstChild("Physics Torso")
	local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")

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

	for _, partName in PhysicsParts do
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

		local physicsPartPosDiff = getPartRelativePosition(character, partName)
		if not physicsPartPosDiff then
			continue
		end
		local physicsPartSizeDiff = getPartSizeDiff(partName, part.Size, torso.Size)
		if partName == "CollisionHead" or partName == "Physics Left Arm" or partName == "Physics Right Arm" then
			physicsPartPosDiff = physicsPartPosDiff + upperTorsoPosition
		elseif partName == "Physics Left Leg" or partName == "Physics Right Leg" then
			physicsPartPosDiff = physicsPartPosDiff + lowerTorsoPosition
		end
		weld.C0 = CFrame.new(physicsPartPosDiff + physicsPartSizeDiff)
	end
end

local function weldParts(weldPart, weldTo)
	if not weldPart or not weldTo then
		return
	end

	local weldName = weldPart.Name .. weldTo.Name
	local weld = weldPart:FindFirstChild(weldName)
	if not weld then
		weld = Instance.new("Weld")
	end

	weld.Name = weldName
	weld.Part0 = weldPart
	weld.Part1 = weldTo
	weld.C0 = CFrame.new()
	weld.C1 = CFrame.new()
	weld.Parent = weldPart
	return weld
end

local function setUpPhysicsPart(character, adapter)
	local newAdapter = adapter:Clone()
	newAdapter:ClearAllChildren()
	newAdapter.Parent = character
	newAdapter.Transparency = 1

	local adapterChildren = adapter:GetChildren()
	for _, child in adapterChildren do
		if child:FindFirstChildWhichIsA("Weld") then
			local weldTo = character:FindFirstChild(child.Name)
			weldParts(newAdapter, weldTo)
		end
	end
end

function SetupPhysicsParts.setupCharacter(character: Model, PhysicsReference)
	for _, child in PhysicsReference:GetChildren() do
		setUpPhysicsPart(character, child)
	end

	for _, part in AestheticParts do
		setUpAestheticPart(character[part])
	end
	PhysicsReference:Destroy()

	moveHitboxes(character)
end

return SetupPhysicsParts
