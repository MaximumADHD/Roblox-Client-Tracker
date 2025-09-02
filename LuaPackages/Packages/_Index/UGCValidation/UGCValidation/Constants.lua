--!nonstrict
local root = script.Parent

local Cryo = require(root.Parent.Cryo)
local getEngineFeatureRemoveProxyWrap = require(root.flags.getEngineFeatureRemoveProxyWrap)

local ValidationRulesUtil = require(root.util.ValidationRulesUtil)
local ValidationEnums = require(root.validationSystem.ValidationEnums)

local getFFlagAddUGCValidationForPackage = require(root.flags.getFFlagAddUGCValidationForPackage)
local getFFlagFixPackageIDFieldName = require(root.flags.getFFlagFixPackageIDFieldName)
local getFFlagUGCValidateWrapLayersEnabled = require(root.flags.getFFlagUGCValidateWrapLayersEnabled)
local getFFlagUGCValidationConsolidateGetMeshInfos = require(root.flags.getFFlagUGCValidationConsolidateGetMeshInfos)
local getFFlagUGCValidationFixConstantsTypoLeg = require(root.flags.getFFlagUGCValidationFixConstantsTypoLeg)
local getFFlagUGCValidateEmoteAnimationExtendedTests =
	require(root.flags.getFFlagUGCValidateEmoteAnimationExtendedTests)
local getFFlagUGCValidateBindOffset = require(root.flags.getFFlagUGCValidateBindOffset)
local getFFlagUGCValidateAnimationRequiredFieldsFix = require(root.flags.getFFlagUGCValidateAnimationRequiredFieldsFix)
local getFFlagUGCValidationFixBannedNamesTypo = require(root.flags.getFFlagUGCValidationFixBannedNamesTypo)
local getFFlagUGCValidateRestrictAnimationMovementCurvesFix =
	require(root.flags.getFFlagUGCValidateRestrictAnimationMovementCurvesFix)

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
if getFFlagUGCValidationFixBannedNamesTypo() then
	Constants.R15_BODY_PARTS = {
		"Head",

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
else
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
end

if getFFlagUGCValidateRestrictAnimationMovementCurvesFix() then
	Constants.NAMED_R15_BODY_PARTS = {}
	for _, bodyPartName in Constants.R15_BODY_PARTS do
		Constants.NAMED_R15_BODY_PARTS[bodyPartName] = bodyPartName
	end
	Constants.NAMED_R15_BODY_PARTS.Head = "Head"

	setmetatable(Constants.NAMED_R15_BODY_PARTS, {
		__index = function()
			error("NAMED_R15_BODY_PARTS key does not exist")
			return nil
		end,
	})
end

Constants.R15_STANDARD_JOINT_NAMES = {
	["Root"] = true,
	["HumanoidRootNode"] = true,
	["DynamicHead"] = true,
	["Head"] = true,
	["UpperTorso"] = true,
	["LowerTorso"] = true,
	["LeftUpperLeg"] = true,
	["LeftLowerLeg"] = true,
	["LeftFoot"] = true,
	["RightUpperLeg"] = true,
	["RightLowerLeg"] = true,
	["RightFoot"] = true,
	["LeftUpperArm"] = true,
	["LeftLowerArm"] = true,
	["LeftHand"] = true,
	["RightUpperArm"] = true,
	["RightLowerArm"] = true,
	["RightHand"] = true,
}

for _, bodyPart in Constants.R15_BODY_PARTS do
	Constants.R15_STANDARD_JOINT_NAMES[bodyPart] = true
end

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

if getFFlagUGCValidationFixBannedNamesTypo() then
	Constants.BANNED_NAMES = {}
	local tables_with_banned_names = { Constants.R6_BODY_PARTS, Constants.R15_BODY_PARTS, Constants.EXTRA_BANNED_NAMES }
	for _, tab in tables_with_banned_names do
		for _, name in tab do
			Constants.BANNED_NAMES[name] = true
		end
	end
else
	Constants.BANNED_NAMES = convertArrayToTable(
		Cryo.Dictionary.join(Constants.R6_BODY_PARTS, Constants.R15_BODY_PARTS, Constants.EXTRA_BANNED_NAMES)
	)
end

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

Constants.FULL_BODY_BOUNDS = ValidationRulesUtil:getFullBodyRulesBounds()

Constants.AvatarPartScaleTypes = {
	Classic = true,
	ProportionsSlender = true,
	ProportionsNormal = true,
}

ValidationRulesUtil:getBodyPartRules(Constants.ASSET_TYPE_INFO)

Constants.BODYPART_TO_PARENT = {
	-- "Parent" here is in regards to the way parts are rigged together in a single asset. Full tree in AssetTraversalUtils.assetHierarchy
	-- nil indicates this is the root of the asset, it has no parent in the asset
	-- head asset
	["Head"] = nil, -- root
	-- torso
	["LowerTorso"] = nil, --
	["UpperTorso"] = "LowerTorso",
	-- left arm
	["LeftUpperArm"] = nil,
	["LeftLowerArm"] = "LeftUpperArm",
	["LeftHand"] = "LeftLowerArm",
	-- left leg
	["LeftUpperLeg"] = nil,
	["LeftLowerLeg"] = "LeftUpperLeg",
	-- right arm
	["RightUpperArm"] = nil,
	["RightLowerArm"] = "RightUpperArm",
	["RightHand"] = "RightLowerArm",
	-- right leg
	["RightUpperLeg"] = nil,
	["RightLowerLeg"] = "RightUpperLeg",
}
if getFFlagUGCValidationFixConstantsTypoLeg() then -- move back to array when cleaning up flag
	Constants.BODYPART_TO_PARENT["RightFoot"] = "RightLowerLeg"
	Constants.BODYPART_TO_PARENT["LeftFoot"] = "LeftLowerLeg"
else
	Constants.BODYPART_TO_PARENT["RightLeg"] = "RightLowerLeg"
	Constants.BODYPART_TO_PARENT["LeftLeg"] = "LeftLowerLeg"
end

Constants.RenderVsWrapMeshMaxDiff = ValidationRulesUtil:getRules().MeshRules.CageMeshMaxDistanceFromRenderMesh

Constants.COMPARISON_METHODS = {
	-- We want [actual] to be [method] compared to [expected]
	-- Numbers, vector3, and colors are currently supported, and default is FUZZY_EQ. EXACT_EQ is done for anything else.
	-- Strings can be arbitrary but must be unique and determine the resulting error statement
	SMALLER = "<",
	SMALLER_EQ = "<=",
	FUZZY_EQ = "=",
	EXACT_EQ = "==",
	GREATER_EQ = ">=",
	GREATER = ">",
}

setmetatable(Constants.COMPARISON_METHODS, {
	__index = function(_, index)
		return error("Invalid COMPARISON_METHOD " .. tostring(index))
	end,
})

Constants.INCLUSION_METHODS = {
	-- We want tests with INCLUSION_LIST to only be run on assetTypeEnums that match
	-- Tests with EXCLUSION_LIST will run on any assetTypeEnums not in the list
	-- default value used in validateProperties is RUN_ON_ALL
	RUN_ON_ALL = "RUN_ON_ALL",
	INCLUSION_LIST = "INCLUSION_LIST",
	EXCLUSION_LIST = "EXCLUSION_LIST",
}

setmetatable(Constants.INCLUSION_METHODS, {
	__index = function(_, index)
		return error("Invalid INCLUSION_METHOD " .. tostring(index))
	end,
})

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
		-- ====== Simple checks ======
		Anchored = false,
		CollisionGroupId = 0, -- collision groups can change by place
		CustomPhysicalProperties = Cryo.None, -- ensure CustomPhysicalProperties is _not_ defined
		Elasticity = 0.5,
		Friction = 0.3,
		LocalTransparencyModifier = 0,
		Massless = false, -- this is already done by accessories internally
		Reflectance = 0,
		RootPriority = 0,
		RotVelocity = Vector3.new(0, 0, 0),
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

		-- ====== Extra Context checks ======
		--Transparency = { [Constants.COMPARISON_METHODS.EXACT_EQ] = 0 },
		Transparency = { [Constants.COMPARISON_METHODS.EXACT_EQ] = 0 },

		Color = {
			[Constants.COMPARISON_METHODS.FUZZY_EQ] = BrickColor.new("Medium stone grey").Color,
			[Constants.INCLUSION_METHODS.EXCLUSION_LIST] = {
				Enum.AssetType.DynamicHead,
				Enum.AssetType.Torso,
				Enum.AssetType.LeftArm,
				Enum.AssetType.RightArm,
				Enum.AssetType.LeftLeg,
				Enum.AssetType.RightLeg,
			},
		},
	},
	Part = {
		Shape = Enum.PartType.Block,
	},
	SurfaceAppearance = {
		AlphaMode = Enum.AlphaMode.Overlay,
	},
	WrapLayer = {
		-- ====== Simple checks ======
		Enabled = if getFFlagUGCValidateWrapLayersEnabled() then true else nil,

		-- ====== Extra Context checks ======
		CageOrigin = {
			PositionMagnitude = {
				[Constants.COMPARISON_METHODS.SMALLER_EQ] = 10,
			},
			Orientation = {
				[Constants.COMPARISON_METHODS.EXACT_EQ] = Vector3.new(0, 0, 0),
			},
		},
		ReferenceOrigin = {
			PositionMagnitude = {
				[Constants.COMPARISON_METHODS.SMALLER_EQ] = 10,
			},
			Orientation = {
				[Constants.COMPARISON_METHODS.EXACT_EQ] = Vector3.new(0, 0, 0),
			},
		},
		ImportOrigin = {
			PositionMagnitude = {
				[Constants.COMPARISON_METHODS.SMALLER_EQ] = 8,
			},
		},

		BindOffset = if getFFlagUGCValidateBindOffset()
			then {
				Position = {
					[Constants.COMPARISON_METHODS.EXACT_EQ] = Vector3.new(0, 0, 0),
				},
				Orientation = {
					[Constants.COMPARISON_METHODS.EXACT_EQ] = Vector3.new(0, 0, 0),
				},
			}
			else nil,
	},

	WrapTarget = {
		-- ====== Simple checks ======

		-- ====== Extra Context checks ======
		CageOrigin = {
			PositionMagnitude = {
				[Constants.COMPARISON_METHODS.SMALLER_EQ] = 10,
			},
			Orientation = {
				[Constants.COMPARISON_METHODS.EXACT_EQ] = Vector3.new(0, 0, 0),
			},
		},

		ImportOrigin = {
			PositionMagnitude = {
				[Constants.COMPARISON_METHODS.SMALLER_EQ] = 8,
			},
		},
	},
}

Constants.CONTENT_ID_FIELDS = {
	SpecialMesh = { "MeshId", "TextureId" },
	MeshPart = { "MeshId", "TextureID" },
	SurfaceAppearance = { "ColorMap", "MetalnessMap", "NormalMap", "RoughnessMap" },
	WrapLayer = { "CageMeshId", "ReferenceMeshId" },
	WrapTarget = { "CageMeshId" },
	Animation = if getFFlagUGCValidateEmoteAnimationExtendedTests() then { "AnimationId" } else nil,
}

Constants.CONTENT_ID_REQUIRED_FIELDS = {
	SpecialMesh = { MeshId = true, TextureId = true },
	MeshPart = { MeshId = true },
	WrapTarget = { CageMeshId = true },
	-- when FFlagUGCValidateAnimationRequiredFieldsFix is removed true, this can be changed to { AnimationId = true }
	Animation = if getFFlagUGCValidateEmoteAnimationExtendedTests() then { "AnimationId" } else nil,
}

if getFFlagUGCValidateAnimationRequiredFieldsFix() then
	Constants.CONTENT_ID_REQUIRED_FIELDS.Animation = { AnimationId = true }
end

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

if not getEngineFeatureRemoveProxyWrap() then
	Constants.ProxyWrapAttributeName = "RBX_WRAP_DEFORMER_PROXY"
end
Constants.AlternateMeshIdAttributeName = "RBX_ALT_MESH_ID"

if getFFlagUGCValidationConsolidateGetMeshInfos() then
	Constants.MESH_CONTENT_TYPE = {
		RENDER_MESH = "RenderMesh",
		OUTER_CAGE = "OuterCage",
		INNER_CAGE = "InnerCage",
	}

	Constants.MESH_CONTENT_TYPE_TO_FIELD_NAME = {
		[Constants.MESH_CONTENT_TYPE.RENDER_MESH] = "MeshId",
		[Constants.MESH_CONTENT_TYPE.OUTER_CAGE] = "CageMeshId",
		[Constants.MESH_CONTENT_TYPE.INNER_CAGE] = "ReferenceMeshId",
	}
end

Constants.AllAssetValidationEnums = {
	-- For tests that run on all categories
	ValidationEnums.UploadCategory.BODY_PART,
	ValidationEnums.UploadCategory.DYNAMIC_HEAD,
	ValidationEnums.UploadCategory.LAYERED_CLOTHING,
	ValidationEnums.UploadCategory.RIGID_ACCESSORY,
	ValidationEnums.UploadCategory.EMOTE_ANIMATION,
}

return Constants
