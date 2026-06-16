local root = script.Parent.Parent

local R15plusUtils = require(root.util.R15plusUtils)

local CurveAnimBoneHierarchyUtils = {}

-- Body parts that have HRD/DRD bones defined in their avatar bone schema
local BODY_PARTS_WITH_BONES = { "Head", "UpperTorso", "LeftFoot", "RightFoot", "LeftHand", "RightHand" }

local cachedBodyPartToRootBones: { [string]: { string } } = nil
local cachedBoneToChildBones: { [string]: { string } } = nil
local cachedAllBoneNames: { [string]: boolean } = nil

local function ensureCaches()
	if cachedAllBoneNames then
		return
	end

	local allBoneNames: { [string]: boolean } = {}
	local bodyPartToRootBones: { [string]: { string } } = {}
	local boneToChildBones: { [string]: { string } } = {}

	local function traverse(schema, parentBoneName: string?, bodyPartName: string)
		for name, data in schema do
			if data.ClassName ~= "Bone" then
				continue
			end

			allBoneNames[name] = true

			if parentBoneName == nil then
				if not bodyPartToRootBones[bodyPartName] then
					bodyPartToRootBones[bodyPartName] = {}
				end
				table.insert(bodyPartToRootBones[bodyPartName], name)
			else
				if not boneToChildBones[parentBoneName] then
					boneToChildBones[parentBoneName] = {}
				end
				table.insert(boneToChildBones[parentBoneName], name)
			end

			if data._children then
				traverse(data._children, name, bodyPartName)
			end
		end
	end

	for _, bodyPartName in BODY_PARTS_WITH_BONES do
		local schema = R15plusUtils.getAvatarBoneSchema(bodyPartName)
		traverse(schema, nil, bodyPartName)
	end

	cachedBodyPartToRootBones = bodyPartToRootBones
	cachedBoneToChildBones = boneToChildBones
	cachedAllBoneNames = allBoneNames
end

function CurveAnimBoneHierarchyUtils.hasBoneFolders(curveAnim: CurveAnimation): boolean
	for _, desc in curveAnim:GetDescendants() do
		if desc:IsA("Folder") and CurveAnimBoneHierarchyUtils.isBoneFolderName(desc.Name) then
			return true
		end
	end
	return false
end

function CurveAnimBoneHierarchyUtils.isBoneFolderName(name: string): boolean
	ensureCaches()
	return cachedAllBoneNames[name] == true
end

function CurveAnimBoneHierarchyUtils.getRootBoneNamesForBodyPart(bodyPartName: string): { string }
	ensureCaches()
	return cachedBodyPartToRootBones[bodyPartName] or {}
end

function CurveAnimBoneHierarchyUtils.getChildBoneNames(boneName: string): { string }
	ensureCaches()
	return cachedBoneToChildBones[boneName] or {}
end

return CurveAnimBoneHierarchyUtils
