--!nonstrict
local root = script.Parent

local Cryo = require(root.Parent.Cryo)
local DEPRECATED_Constants = require(root.DEPRECATED_Constants)

local getEngineFeatureEngineUGCValidationEnableGetValidationRules =
	require(root.flags.getEngineFeatureEngineUGCValidationEnableGetValidationRules)

if not getEngineFeatureEngineUGCValidationEnableGetValidationRules() then
	return DEPRECATED_Constants
end

local ValidationRulesUtil = require(root.util.ValidationRulesUtil)
local ConstantBounds = require(root.ConstantBounds)

local getFFlagAddUGCValidationForPackage = require(root.flags.getFFlagAddUGCValidationForPackage)
local getFFlagUGCValidateSurfaceAppearanceAlphaMode = require(root.flags.getFFlagUGCValidateSurfaceAppearanceAlphaMode)
local getFFlagUGCValidateAddSpecificPropertyRequirements =
	require(root.flags.getFFlagUGCValidateAddSpecificPropertyRequirements)
local getFFlagFixPackageIDFieldName = require(root.flags.getFFlagFixPackageIDFieldName)
local getFFlagUGCValidateConfigurableFullBodyBounds = require(root.flags.getFFlagUGCValidateConfigurableFullBodyBounds)

-- switch this to Cryo.List.toSet when available
local function convertArrayToTable(array)
	local result = {}
	for _, v in pairs(array) do
		result[v] = true
	end
	return result
end

local Constants = {}

Constants.MAX_HAT_TRIANGLES = ValidationRulesUtil:getRules().MeshRules.AccessoryMaxTriangles

Constants.MAX_TEXTURE_SIZE = ValidationRulesUtil:getRules().TextureRules.MaxTextureSize

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

Constants.UGC_BODY_PARTS = {
	"Head",
	"UpperTorso",
	"LowerTorso",
	"LeftUpperLeg",
	"LeftLowerLeg",
	"LeftHand",
	"RightUpperArm",
	"RightLowerArm",
	"RightHand",
	"LeftUpperArm",
	"LeftLowerArm",
	"LeftFoot",
	"RightUpperLeg",
	"RightLowerLeg",
	"RightFoot",
	"EyebrowAccessory",
	"EyelashAccessory",
	"HairAccessory",
}

Constants.UGC_BODY_PART_NAMES_TO_ASSET_TYPE = {
	Head = Enum.AssetType.DynamicHead,
	UpperTorso = Enum.AssetType.Torso,
	LowerTorso = Enum.AssetType.Torso,
	LeftUpperArm = Enum.AssetType.LeftArm,
	LeftLowerArm = Enum.AssetType.LeftArm,
	LeftHand = Enum.AssetType.LeftArm,
	RightUpperArm = Enum.AssetType.RightArm,
	RightLowerArm = Enum.AssetType.RightArm,
	RightHand = Enum.AssetType.RightArm,
	LeftUpperLeg = Enum.AssetType.LeftLeg,
	LeftLowerLeg = Enum.AssetType.LeftLeg,
	LeftFoot = Enum.AssetType.LeftLeg,
	RightUpperLeg = Enum.AssetType.RightLeg,
	RightLowerLeg = Enum.AssetType.RightLeg,
	RightFoot = Enum.AssetType.RightLeg,
	EyebrowAccessory = Enum.AssetType.EyebrowAccessory,
	EyelashAccessory = Enum.AssetType.EyelashAccessory,
	HairAccessory = Enum.AssetType.HairAccessory,
}

Constants.ASSET_TYPES_THAT_SKIP_FOLDER = {
	Enum.AssetType.DynamicHead,
	Enum.AssetType.EyebrowAccessory,
	Enum.AssetType.EyelashAccessory,
	Enum.AssetType.HairAccessory,
}

Constants.FOLDER_NAMES = {
	R6 = "R6",
	R15ArtistIntent = "R15ArtistIntent",
	R15Fixed = "R15Fixed",
}

Constants.EXTRA_BANNED_NAMES = {
	"Head",
	"HumanoidRootPart",
	"Humanoid",
}

local extraBannedNames = {
	"Body Colors",
	"Shirt Graphic",
	"Shirt",
	"Pants",
	"Health",
	"Animate",
}
for _, name in ipairs(extraBannedNames) do
	table.insert(Constants.EXTRA_BANNED_NAMES, name)
end

Constants.BANNED_NAMES = convertArrayToTable(
	Cryo.Dictionary.join(Constants.R6_BODY_PARTS, Constants.R15_BODY_PARTS, Constants.EXTRA_BANNED_NAMES)
)

Constants.ASSET_STATUS = {
	UNKNOWN = "Unknown",
	REVIEW_PENDING = "ReviewPending",
	MODERATED = "Moderated",
}

-- https://confluence.rbx.com/display/AVATAR/UGC+Accessory+Max+Sizes
-- Measurements are doubled to account full size
-- boundsOffset is used when measurements are non-symmetrical
-- i.e. WaistAccessory is 3 behind, 2.5 front
Constants.ASSET_TYPE_INFO = {}
ValidationRulesUtil:getAccessoryRules(Constants.ASSET_TYPE_INFO)

if getFFlagUGCValidateConfigurableFullBodyBounds() then
	Constants.FULL_BODY_BOUNDS = ConstantBounds.getFullBodyBounds()
end

Constants.AvatarPartScaleTypes = {
	Classic = true,
	ProportionsSlender = true,
	ProportionsNormal = true,
}

ValidationRulesUtil:getBodyPartRules(Constants.ASSET_TYPE_INFO)

Constants.RenderVsWrapMeshMaxDiff = ValidationRulesUtil:getRules().MeshRules.CageMeshMaxDistanceFromRenderMesh

if getFFlagUGCValidateAddSpecificPropertyRequirements() then
	-- this is used to specify that we don't care about a property's value
	Constants.PROPERTIES_UNRESTRICTED = {}
end

Constants.PROPERTIES = {
	Instance = {
		Archivable = true,
	},
	Attachment = {
		Visible = false,
	},
	SpecialMesh = {
		MeshType = Enum.MeshType.FileMesh,
		Offset = Vector3.new(0, 0, 0),
		VertexColor = Vector3.new(1, 1, 1),
	},
	BasePart = {
		Anchored = false,
		Color = BrickColor.new("Medium stone grey").Color, -- luacheck: ignore BrickColor
		CollisionGroupId = 0, -- collision groups can change by place
		CustomPhysicalProperties = Cryo.None, -- ensure CustomPhysicalProperties is _not_ defined
		Elasticity = 0.5,
		Friction = 0.3,
		LocalTransparencyModifier = 0,
		Massless = false, -- this is already done by accessories internally
		Reflectance = 0,
		RootPriority = 0,
		RotVelocity = Vector3.new(0, 0, 0),
		Transparency = 0,
		Velocity = Vector3.new(0, 0, 0),

		-- surface properties
		BackParamA = -0.5,
		BackParamB = 0.5,
		BackSurfaceInput = Enum.InputType.NoInput,
		BottomParamA = -0.5,
		BottomParamB = 0.5,
		BottomSurfaceInput = Enum.InputType.NoInput,
		FrontParamA = -0.5,
		FrontParamB = 0.5,
		FrontSurfaceInput = Enum.InputType.NoInput,
		LeftParamA = -0.5,
		LeftParamB = 0.5,
		LeftSurfaceInput = Enum.InputType.NoInput,
		RightParamA = -0.5,
		RightParamB = 0.5,
		RightSurfaceInput = Enum.InputType.NoInput,
		TopParamA = -0.5,
		TopParamB = 0.5,
		TopSurfaceInput = Enum.InputType.NoInput,

		BackSurface = Enum.SurfaceType.Smooth,
		BottomSurface = Enum.SurfaceType.Smooth,
		FrontSurface = Enum.SurfaceType.Smooth,
		LeftSurface = Enum.SurfaceType.Smooth,
		RightSurface = Enum.SurfaceType.Smooth,
		TopSurface = Enum.SurfaceType.Smooth,
	},
	Part = {
		Shape = Enum.PartType.Block,
	},
	SurfaceAppearance = if getFFlagUGCValidateSurfaceAppearanceAlphaMode()
		then {
			AlphaMode = Enum.AlphaMode.Overlay,
		}
		else nil,
}

if getFFlagUGCValidateAddSpecificPropertyRequirements() then
	local bodyPartSpecificProperties = {
		BasePart = {
			Color = Constants.PROPERTIES_UNRESTRICTED, -- for body parts, we don't care about the color
		},
	}
	Constants.SPECIFIC_PROPERTIES = {
		[Enum.AssetType.DynamicHead] = bodyPartSpecificProperties,
		[Enum.AssetType.Torso] = bodyPartSpecificProperties,
		[Enum.AssetType.LeftArm] = bodyPartSpecificProperties,
		[Enum.AssetType.RightArm] = bodyPartSpecificProperties,
		[Enum.AssetType.LeftLeg] = bodyPartSpecificProperties,
		[Enum.AssetType.RightLeg] = bodyPartSpecificProperties,
	}
end

Constants.CONTENT_ID_FIELDS = {
	SpecialMesh = { "MeshId", "TextureId" },
	MeshPart = { "MeshId", "TextureID" },
	SurfaceAppearance = { "ColorMap", "MetalnessMap", "NormalMap", "RoughnessMap" },
	WrapLayer = { "CageMeshId", "ReferenceMeshId" },
	WrapTarget = { "CageMeshId" },
}

Constants.CONTENT_ID_REQUIRED_FIELDS = {
	SpecialMesh = { MeshId = true, TextureId = true },
	MeshPart = { MeshId = true },
	WrapTarget = { CageMeshId = true },
}

Constants.MESH_CONTENT_ID_FIELDS = {
	SpecialMesh = { "MeshId" },
	MeshPart = { "MeshId" },
	WrapTarget = { "CageMeshId" },
	WrapLayer = { "CageMeshId", "ReferenceMeshId" },
}

Constants.TEXTURE_CONTENT_ID_FIELDS = {
	SpecialMesh = { "TextureId" },
	MeshPart = { "TextureID" },
	SurfaceAppearance = { "ColorMap", "MetalnessMap", "NormalMap", "RoughnessMap" },
}

Constants.ASSET_RENDER_MESH_MAX_TRIANGLES = {
	DynamicHead = ValidationRulesUtil:getBodyPartMaxTrianglesRule(Enum.AssetType.DynamicHead),
	LeftArm = ValidationRulesUtil:getBodyPartMaxTrianglesRule(Enum.AssetType.LeftArm),
	RightArm = ValidationRulesUtil:getBodyPartMaxTrianglesRule(Enum.AssetType.RightArm),
	Torso = ValidationRulesUtil:getBodyPartMaxTrianglesRule(Enum.AssetType.Torso),
	LeftLeg = ValidationRulesUtil:getBodyPartMaxTrianglesRule(Enum.AssetType.LeftLeg),
	RightLeg = ValidationRulesUtil:getBodyPartMaxTrianglesRule(Enum.AssetType.RightLeg),
}

Constants.WRAP_TARGET_CAGE_MESH_UV_COUNTS = {
	Head = 343,
	LeftUpperArm = 77,
	LeftLowerArm = 77,
	LeftHand = 86,
	RightUpperArm = 77,
	RightLowerArm = 77,
	RightHand = 86,
	UpperTorso = 257,
	LowerTorso = 105,
	LeftUpperLeg = 88,
	LeftLowerLeg = 88,
	LeftFoot = 86,
	RightUpperLeg = 88,
	RightLowerLeg = 88,
	RightFoot = 86,
}

if getFFlagAddUGCValidationForPackage() then
	Constants.PACKAGE_CONTENT_ID_FIELDS = Cryo.Dictionary.join(
		Constants.CONTENT_ID_FIELDS,
		if getFFlagFixPackageIDFieldName()
			then {
				Sound = { "SoundId" },
				Decal = { "Texture" },
				VideoFrame = { "Video" },
				PackageLink = { "PackageId" },
				CharacterMesh = { "OverlayTextureId", "MeshId", "BaseTextureId" },
				Tool = { "TextureId" },
				Trail = { "Texture" },
				Beam = { "Texture" },
				ShirtGraphic = { "Graphic" },
				Shirt = { "ShirtTemplate" },
				Pants = { "PantsTemplate" },
				AdGui = { "FallbackImage" },
			}
			else {
				Sound = { "SoundId" },
				Decal = { "Texture" },
				VideoFrame = { "Video" },
				PackageLink = { "PackageId" },
				CharacterMesh = { "baseTextureAssetId", "overlayTextureAssetId", "meshAssetId" },
				Tool = { "TextureId" },
				Sky = { "SkyUp", "SkyLf", "SkyRt", "SkyBk", "SkyFt", "SkyDn", "Sun", "Moon" },
				Trail = { "texture" },
				Beam = { "texture" },
				ShirtGraphic = { "Graphic" },
				Shirt = { "ShirtTemplate" },
				Pants = { "PantsTemplate" },
				AdGui = { "FallbackImage" },
			}
	)

	Constants.ExperienceAuthHeaderKey = "RBX-ExperienceAuthorization"
	Constants.ContentType = "Content-Type"
	Constants.ApplicationJson = "application/json"
end

-- Name of the special attribute that is allowed on root instances
-- see validateAttributes for more info
Constants.GUIDAttributeName = "RBXGUID"
Constants.GUIDAttributeMaxLength = 100

Constants.ProxyWrapAttributeName = "RBX_WRAP_DEFORMER_PROXY"
Constants.AlternateMeshIdAttributeName = "RBX_ALT_MESH_ID"

return Constants
