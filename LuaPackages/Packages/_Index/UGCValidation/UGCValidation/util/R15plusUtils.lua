local root = script.Parent.Parent
local Constants = require(root.Constants)
local Types = require(root.util.Types)

local R15plusUtils = {}
local jointNameWhitelist = nil

local flags = root.flags
local getFFlagUGCValidationAllowHRDUpload = require(flags.getFFlagUGCValidationAllowHRDUpload)
local getFFlagDebugAllowHRDUploadOnBundleBackend = require(flags.getFFlagDebugAllowHRDUploadOnBundleBackend)
local getFFlagUGCValidationExtendSchemaToIgnoreDescendants =
	require(flags.getFFlagUGCValidationExtendSchemaToIgnoreDescendants)

local FINGER_FLAT_SUFFIXES = { "Index", "Middle", "Pinky", "Ring", "Thumb" }

local function buildDrdSchema(side: string): Types.SimpleSchemaTable
	local schema: Types.SimpleSchemaTable = {}

	for _, fingerSuffix in FINGER_FLAT_SUFFIXES do
		local fingerName = `{side}Hand{fingerSuffix}`
		local finger1 = `{fingerName}1`
		local finger2 = `{fingerName}2`
		local finger3 = `{fingerName}3`
		schema[finger1] = {
			ClassName = "Bone",
			_children = {
				[finger2] = {
					ClassName = "Bone",
					_children = {
						[finger3] = {
							ClassName = "Bone",
						},
					},
				},
			},
		}
	end

	return schema
end

local HEAD_AVATAR_BONE_SCHEMA: Types.SimpleSchemaTable = {
	HeadBase = {
		ClassName = "Bone",
		_children = {
			FaceCenterAttachment = {
				ClassName = "Attachment",
			},
			FaceFrontAttachment = {
				ClassName = "Attachment",
			},
			HairAttachment = {
				ClassName = "Attachment",
			},
			HatAttachment = {
				ClassName = "Attachment",
			},
		},
	},
}

local UPPER_TORSO_AVATAR_BONE_SCHEMA: Types.SimpleSchemaTable = {
	Spine = {
		ClassName = "Bone",
		_children = {
			Chest = {
				ClassName = "Bone",
				_children = {
					BodyBackAttachment = {
						ClassName = "Attachment",
					},
					BodyFrontAttachment = {
						ClassName = "Attachment",
					},
					NeckRigAttachment = {
						ClassName = "Attachment",
					},
					NeckAttachment = {
						ClassName = "Attachment",
					},
					LeftClavicle = {
						ClassName = "Bone",
						_children = {
							LeftCollarAttachment = {
								ClassName = "Attachment",
							},
							LeftShoulderRigAttachment = {
								ClassName = "Attachment",
							},
						},
					},
					RightClavicle = {
						ClassName = "Bone",
						_children = {
							RightCollarAttachment = {
								ClassName = "Attachment",
							},
							RightShoulderRigAttachment = {
								ClassName = "Attachment",
							},
						},
					},
				},
			},
		},
	},
}

local LEFT_FOOT_BONE_SCHEMA: Types.SimpleSchemaTable = {
	LeftToeBase = {
		ClassName = "Bone",
	},
}

local RIGHT_FOOT_BONE_SCHEMA: Types.SimpleSchemaTable = {
	RightToeBase = {
		ClassName = "Bone",
	},
}

local LEFT_HAND_DRD_SCHEMA = buildDrdSchema("Left")
local RIGHT_HAND_DRD_SCHEMA = buildDrdSchema("Right")

R15plusUtils.JointRotationName = "JointRotation"

local isBackendFullbodyCheck = false

function R15plusUtils.setIsBackendBundleUpload(value: boolean)
	isBackendFullbodyCheck = value
end

function R15plusUtils.checkFlagEnabledForAllowHrd()
	if not getFFlagUGCValidationExtendSchemaToIgnoreDescendants() then
		-- HRD upload depends on first extending our schema check capabilities
		return false
	end

	if getFFlagUGCValidationAllowHRDUpload() then
		return true
	end

	if getFFlagDebugAllowHRDUploadOnBundleBackend() and isBackendFullbodyCheck then
		-- We cannot currently whitelist users for the bundle flow upload (in scoping)
		-- So to temporarily test, we will change the schema only for the bundle flow full body test
		-- This means users without the asset validation bypass cant create R15 assets, but people with bypass can make R15 bundles
		return true
	end

	return false
end

local cachedHrdJointLabels = nil
local cachedDrdJointLabels = nil

function R15plusUtils.getHrdJointLabels()
	if cachedHrdJointLabels == nil then
		cachedHrdJointLabels = Instance.new("HumanoidRigDescription"):GetJointLabels()
	end
	return cachedHrdJointLabels
end

function R15plusUtils.getDrdJointLabels()
	if cachedDrdJointLabels == nil then
		cachedDrdJointLabels = Instance.new("DigitsRigDescription"):GetJointLabels()
	end
	return cachedDrdJointLabels
end

function R15plusUtils.getJointNameWhitelist()
	if jointNameWhitelist ~= nil then
		return jointNameWhitelist
	end

	jointNameWhitelist = {}
	for jointName, _ in Constants.R15_STANDARD_JOINT_NAMES do
		jointNameWhitelist[jointName] = true
	end

	for _, jointEnum in R15plusUtils.getHrdJointLabels() do
		jointNameWhitelist[jointEnum.Name] = true
	end

	for _, jointEnum in R15plusUtils.getDrdJointLabels() do
		jointNameWhitelist[`LeftHand{jointEnum.Name}`] = true
		jointNameWhitelist[`RightHand{jointEnum.Name}`] = true
	end

	return jointNameWhitelist
end

function R15plusUtils.getNameWhitelistOfClassInSchema(
	partSchema: Types.SimpleSchemaTable,
	className: string
): { [string]: boolean }
	local itemMapping = {}
	for name, data in partSchema do
		if data.ClassName == className then
			itemMapping[name] = true
		end

		if data._children ~= nil then
			for found, value in R15plusUtils.getNameWhitelistOfClassInSchema(data._children, className) do
				itemMapping[found] = value
			end
		end
	end

	return itemMapping
end

function R15plusUtils.getSchemaFlatHierarchyList(
	rootSchema: Types.SimpleSchemaTable,
	currentPath: { string }
): Types.SimpleSchemaFlatHierarchyList
	local schemaList = {}
	for name, data in rootSchema do
		local newPath = table.clone(currentPath)
		table.insert(newPath, name)

		schemaList[name] = {
			ClassName = data.ClassName,
			path = newPath,
		}

		if data._children ~= nil then
			for found, value in R15plusUtils.getSchemaFlatHierarchyList(data._children, newPath) do
				schemaList[found] = value
			end
		end
	end

	return schemaList
end

function R15plusUtils.getFingerFlatSuffixes()
	return FINGER_FLAT_SUFFIXES
end

function R15plusUtils.getDrdSchema(side: string): Types.SimpleSchemaTable
	if side == "Left" then
		return LEFT_HAND_DRD_SCHEMA
	elseif side == "Right" then
		return RIGHT_HAND_DRD_SCHEMA
	else
		error("Invalid side: " .. side)
	end
end

function R15plusUtils.getAvatarBoneSchema(bodyMeshPartName: string): Types.SimpleSchemaTable
	-- SimpleSchemaTable is intentionally limited in functionality, it should not be extended
	-- We want to have a centralized schema check, this is a secondary surface-level check for only the bone tree

	if bodyMeshPartName == "Head" then
		return HEAD_AVATAR_BONE_SCHEMA
	elseif bodyMeshPartName == "UpperTorso" then
		return UPPER_TORSO_AVATAR_BONE_SCHEMA
	elseif bodyMeshPartName == "LeftFoot" then
		return LEFT_FOOT_BONE_SCHEMA
	elseif bodyMeshPartName == "RightFoot" then
		return RIGHT_FOOT_BONE_SCHEMA
	elseif bodyMeshPartName == "LeftHand" then
		return LEFT_HAND_DRD_SCHEMA
	elseif bodyMeshPartName == "RightHand" then
		return RIGHT_HAND_DRD_SCHEMA
	end

	return {}
end

return R15plusUtils
