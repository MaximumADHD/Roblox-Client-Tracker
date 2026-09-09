--[[
	Builds the COMPLETE static schema for CurveAnimation validation at require-time.

	The schema is constructed from trusted, hardcoded definitions:
	- AssetCalculator.getBodyPartsToParents() for body part hierarchy
	- R15plusUtils.getAvatarBoneSchema() for bone hierarchy per body part
	- A constant list of 50 FACS control names

	CRITICAL: This schema is NEVER derived from the user's input instance.
	This prevents attackers from influencing validation by crafting malicious instances.
]]

local root = script.Parent.Parent

local AssetCalculator = require(root.util.AssetCalculator)
local R15plusUtils = require(root.util.R15plusUtils)

-- 50 FACS control names (static constant)
local FACS_CONTROL_NAMES = {
	"ChinRaiserUpperLip",
	"ChinRaiser",
	"FlatPucker",
	"Funneler",
	"LowerLipSuck",
	"LipPresser",
	"LipsTogether",
	"MouthLeft",
	"MouthRight",
	"Pucker",
	"UpperLipSuck",
	"LeftCheekPuff",
	"LeftDimpler",
	"LeftLipCornerDown",
	"LeftLowerLipDepressor",
	"LeftLipCornerPuller",
	"LeftLipStretcher",
	"LeftUpperLipRaiser",
	"RightCheekPuff",
	"RightDimpler",
	"RightLipCornerDown",
	"RightLowerLipDepressor",
	"RightLipCornerPuller",
	"RightLipStretcher",
	"RightUpperLipRaiser",
	"JawDrop",
	"JawLeft",
	"JawRight",
	"Corrugator",
	"LeftBrowLowerer",
	"LeftOuterBrowRaiser",
	"LeftNoseWrinkler",
	"LeftInnerBrowRaiser",
	"RightBrowLowerer",
	"RightOuterBrowRaiser",
	"RightInnerBrowRaiser",
	"RightNoseWrinkler",
	"EyesLookDown",
	"EyesLookLeft",
	"EyesLookUp",
	"EyesLookRight",
	"LeftCheekRaiser",
	"LeftEyeUpperLidRaiser",
	"LeftEyeClosed",
	"RightCheekRaiser",
	"RightEyeUpperLidRaiser",
	"RightEyeClosed",
	"TongueDown",
	"TongueOut",
	"TongueUp",
}

-- Mapping from body part to which leaf bone it attaches at in its parent's bone tree.
-- When UpperTorso has bones present, child body parts can appear nested under
-- whichever bone is the LEAF of the present chain. Since the chain is
-- Spine→Chest→{LeftClavicle, RightClavicle}, a body part may attach at any
-- bone that could be a leaf (if deeper bones are absent).
local BODY_PART_TO_BONE_ATTACHMENTS: { [string]: { string } } = {
	Head = { "Spine", "Chest" },
	LeftUpperArm = { "Spine", "Chest", "LeftClavicle" },
	RightUpperArm = { "Spine", "Chest", "RightClavicle" },
}

local function buildPositionCurveSchema(): any
	return {
		ClassName = "Vector3Curve",
		Name = "Position",
		_optional = true,
		_children = {
			{ ClassName = "FloatCurve", Name = "X", _optional = true },
			{ ClassName = "FloatCurve", Name = "Y", _optional = true },
			{ ClassName = "FloatCurve", Name = "Z", _optional = true },
		},
	}
end

local function buildRotationCurveSchema(): any
	return {
		ClassName = "EulerRotationCurve",
		Name = "Rotation",
		_optional = true,
		_children = {
			{ ClassName = "FloatCurve", Name = "X", _optional = true },
			{ ClassName = "FloatCurve", Name = "Y", _optional = true },
			{ ClassName = "FloatCurve", Name = "Z", _optional = true },
		},
	}
end

local function buildFaceControlsSchema(): any
	local children = {}
	for _, facsName in FACS_CONTROL_NAMES do
		table.insert(children, {
			ClassName = "FloatCurve",
			Name = facsName,
			_optional = true,
		})
	end
	return {
		ClassName = "Folder",
		Name = "FaceControls",
		_optional = true,
		_children = children,
	}
end

-- Convert R15plusUtils bone schema (dict format) to array _children format recursively.
-- Only includes Bone entries (not Attachments, which are not relevant for animation).
-- additionalChildren: optional array of additional schema entries to inject at this bone level.
local function convertBoneSchemaToChildren(
	boneSchemaDict: any,
	additionalChildrenByBone: { [string]: { any } }?
): { any }
	local children = {}
	for boneName, boneData in boneSchemaDict do
		if boneData.ClassName ~= "Bone" then
			continue
		end

		local boneChildren = {}

		-- Add Position/Rotation curves for this bone
		table.insert(boneChildren, buildPositionCurveSchema())
		table.insert(boneChildren, buildRotationCurveSchema())

		-- Recursively add child bones
		if boneData._children then
			local subBoneChildren = convertBoneSchemaToChildren(boneData._children, additionalChildrenByBone)
			for _, subChild in subBoneChildren do
				table.insert(boneChildren, subChild)
			end
		end

		-- Inject additional children if specified for this bone (e.g., body parts at leaf bones)
		if additionalChildrenByBone and additionalChildrenByBone[boneName] then
			for _, additional in additionalChildrenByBone[boneName] do
				table.insert(boneChildren, additional)
			end
		end

		table.insert(children, {
			ClassName = "Folder",
			Name = boneName,
			_optional = true,
			_children = boneChildren,
		})
	end
	return children
end

-- Forward declaration for recursion
local buildBodyPartSchema: (bodyPartName: string, childBodyPartNames: { string }) -> any

-- Build the schema for a single body part folder.
-- bodyPartName: the name of the body part (e.g., "LowerTorso", "UpperTorso", "Head")
-- childBodyPartNames: array of body part names that are direct children in the rig hierarchy
buildBodyPartSchema = function(bodyPartName: string, childBodyPartNames: { string }): any
	local children = {}

	table.insert(children, buildPositionCurveSchema())
	table.insert(children, buildRotationCurveSchema())

	-- Build child body part schemas recursively to determine which children also
	-- need to be injected at leaf bones
	local bodyPartToParentMap = AssetCalculator.getBodyPartsToParents()
	local childBodyPartSchemas: { [string]: any } = {}
	for _, childName in childBodyPartNames do
		-- Gather grandchildren for this child
		local grandChildren: { string } = {}
		for bpName, parentName in bodyPartToParentMap :: { [string]: string } do
			if parentName == childName then
				table.insert(grandChildren, bpName)
			end
		end
		childBodyPartSchemas[childName] = buildBodyPartSchema(childName, grandChildren)
	end

	-- Add child body part folders directly under this body part
	for _, childName in childBodyPartNames do
		table.insert(children, childBodyPartSchemas[childName])
	end

	-- Add bone folders for this body part (from R15plusUtils)
	local boneSchema = R15plusUtils.getAvatarBoneSchema(bodyPartName)
	if next(boneSchema) ~= nil then
		-- Determine which body parts need to be injected at leaf bones
		-- (only UpperTorso has this special case)
		local additionalChildrenByBone: { [string]: { any } } = {}
		if bodyPartName == "UpperTorso" then
			for childBP, boneList in BODY_PART_TO_BONE_ATTACHMENTS do
				if childBodyPartSchemas[childBP] then
					for _, boneName in boneList do
						if not additionalChildrenByBone[boneName] then
							additionalChildrenByBone[boneName] = {}
						end
						table.insert(additionalChildrenByBone[boneName], childBodyPartSchemas[childBP])
					end
				end
			end
		end

		local boneChildren = convertBoneSchemaToChildren(boneSchema, additionalChildrenByBone)
		for _, boneChild in boneChildren do
			table.insert(children, boneChild)
		end
	end

	-- Add FaceControls folder (only for Head)
	if bodyPartName == "Head" then
		table.insert(children, buildFaceControlsSchema())
	end

	return {
		ClassName = "Folder",
		Name = bodyPartName,
		_optional = true,
		_children = children,
	}
end

-- Build the complete static schema for CurveAnimation.
-- This is computed once at require-time.
local function buildSchema(): any
	local bodyPartToParentMap = AssetCalculator.getBodyPartsToParents()

	-- Find all direct children of LowerTorso in the body part hierarchy
	local lowerTorsoChildren: { string } = {}
	for bodyPartName, parentName in bodyPartToParentMap :: { [string]: string } do
		if parentName == "LowerTorso" then
			table.insert(lowerTorsoChildren, bodyPartName)
		end
	end

	-- Build LowerTorso schema with its children
	local lowerTorsoSchema = buildBodyPartSchema("LowerTorso", lowerTorsoChildren)

	-- HumanoidRootPart folder: only contains LowerTorso (no Position/Rotation for HRP)
	local hrpSchema = {
		ClassName = "Folder",
		Name = "HumanoidRootPart",
		_children = {
			lowerTorsoSchema,
		},
	}

	-- Root CurveAnimation schema
	local schema = {
		ClassName = "CurveAnimation",
		_children = {
			{
				ClassName = "AnimationRigData",
				-- AnimationRigData has no children in a valid animation
			},
			{
				ClassName = "MarkerCurve",
				_optional = true,
			},
			hrpSchema,
		},
	}

	return schema
end

local staticSchema = buildSchema()

return staticSchema
