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

Constants.MAX_TEXTURE_SIZE = 256

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

Constants.AssetStatus = {
	UNKNOWN = "Unknown",
	REVIEW_PENDING = "ReviewPending",
	MODERATED = "Moderated",
}

-- https://confluence.rbx.com/display/AVATAR/UGC+Accessory+Max+Sizes
-- Measurements are doubled to account full size
-- boundsOffset is used when measurements are non-symmetrical
-- i.e. WaistAccessory is 3 behind, 2.5 front
Constants.ASSET_TYPE_INFO = {
	[Enum.AssetType.Hat] = {
		attachmentNames = { "HatAttachment" },
		boundsSize = Vector3.new(3, 4, 3),
	},
	[Enum.AssetType.HairAccessory] = {
		attachmentNames = { "HairAttachment" },
		boundsSize = Vector3.new(3, 4, 3),
	},
	[Enum.AssetType.FaceAccessory] = {
		attachmentNames = { "FaceFrontAttachment" },
		boundsSize = Vector3.new(3, 2, 2),
	},
	[Enum.AssetType.NeckAccessory] = {
		attachmentNames = { "NeckAttachment" },
		boundsSize = Vector3.new(3, 3, 2),
	},
	[Enum.AssetType.ShoulderAccessory] = {
		attachmentNames = { "NeckAttachment", "LeftCollarAttachment", "RightCollarAttachment" },
		boundsSize = Vector3.new(7, 3, 3),
	},
	[Enum.AssetType.FrontAccessory] = {
		attachmentNames = { "BodyFrontAttachment" },
		boundsSize = Vector3.new(3, 3, 3),
	},
	[Enum.AssetType.BackAccessory] = {
		attachmentNames = { "BodyBackAttachment" },
		boundsSize = Vector3.new(10, 7, 4),
	},
	[Enum.AssetType.WaistAccessory] = {
		attachmentNames = { "WaistBackAttachment" },
		boundsSize = Vector3.new(4, 2, 5.5),
		boundsOffset = Vector3.new(0, 0, 0.25),
	},
}

return Constants