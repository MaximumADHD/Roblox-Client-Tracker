local root = script.Parent

local createAccessorySchema = require(root.util.createAccessorySchema)

local CorePackages = game:GetService("CorePackages")

local Cryo = require(CorePackages.Cryo)

-- switch this to Cryo.List.toSet when available
local function convertArrayToTable(array)
	local result = {}
	for _, v in pairs(array) do
		result[v] = true
	end
	return result
end

local Constants = {}

Constants.MAX_HAT_TRIANGLES = 4000

Constants.MATERIAL_WHITELIST = convertArrayToTable({
	Enum.Material.Plastic,
})

Constants.BANNED_CLASS_NAMES = {
	"Script",
	"LocalScript",
	"ModuleScript",
	"ParticleEmitter",
	"Fire",
	"Smoke",
	"Sparkles",
}

Constants.R6_BODY_PARTS = {
	"Torso",
	"Left Leg",
	"Right Leg",
	"Left Arm",
	"Right Arm",
}

Constants.R15_BODY_PARTS = {
	"UpperTorso",
	"LowerTorso",

	"LeftUpperLeg",
	"LeftLowerLeg",
	"LeftFoot",

	"RightUpperLeg",
	"RightLowerLeg",
	"RightFoot",

	"LeftUpperArm",
	"LeftLowerArm",
	"LeftHand",

	"RightUpperArm",
	"RightLowerArm",
	"RightHand",
}

Constants.EXTRA_BANNED_NAMES = {
	"Head",
	"HumanoidRootPart",
	"Humanoid",
}

Constants.BANNED_NAMES = convertArrayToTable(Cryo.Dictionary.join(
	Constants.R6_BODY_PARTS,
	Constants.R15_BODY_PARTS,
	Constants.EXTRA_BANNED_NAMES
))

Constants.SCHEMA_MAP = {
	[Enum.AssetType.Hat] = true,
	[Enum.AssetType.HairAccessory] = true,
	[Enum.AssetType.FaceAccessory] = true,
	[Enum.AssetType.NeckAccessory] = true,
	[Enum.AssetType.ShoulderAccessory] = true,
	[Enum.AssetType.FrontAccessory] = true,
	[Enum.AssetType.BackAccessory] = true,
	[Enum.AssetType.WaistAccessory] = true,
}

Constants.AssetStatus = {
	UNKNOWN = "Unknown",
	REVIEW_PENDING = "ReviewPending",
	MODERATED = "Moderated",
}

Constants.SCHEMA_MAP = {
	[Enum.AssetType.Hat] = createAccessorySchema({ "HatAttachment" }),
	[Enum.AssetType.HairAccessory] = createAccessorySchema({ "HairAttachment" }),
	[Enum.AssetType.FaceAccessory] = createAccessorySchema({ "FaceFrontAttachment" }),
	[Enum.AssetType.NeckAccessory] = createAccessorySchema({ "NeckAttachment" }),
	[Enum.AssetType.ShoulderAccessory] = createAccessorySchema({
		"NeckAttachment",
		"LeftCollarAttachment",
		"RightCollarAttachment",
	}),
	[Enum.AssetType.FrontAccessory] = createAccessorySchema({ "BodyFrontAttachment" }),
	[Enum.AssetType.BackAccessory] = createAccessorySchema({ "BodyBackAttachment" }),
	[Enum.AssetType.WaistAccessory] = createAccessorySchema({ "WaistBackAttachment" }),
}

return Constants