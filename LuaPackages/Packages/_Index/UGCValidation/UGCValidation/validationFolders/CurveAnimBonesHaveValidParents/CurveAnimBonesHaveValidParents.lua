local root = script.Parent.Parent.Parent

local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)
local R15plusUtils = require(root.util.R15plusUtils)
local CurveAnimBoneHierarchyUtils = require(root.util.CurveAnimBoneHierarchyUtils)

local getFFlagUGCValidateEmotesBonesAllowed = require(root.flags.getFFlagUGCValidateEmotesBonesAllowed)

local CurveAnimBonesHaveValidParents = {}

CurveAnimBonesHaveValidParents.categories = { ValidationEnums.UploadCategory.EMOTE_ANIMATION }
CurveAnimBonesHaveValidParents.requiredData = {
	ValidationEnums.SharedDataMember.curveAnimations,
}
CurveAnimBonesHaveValidParents.conditionalData = { ValidationEnums.SharedDataMember.curveAnimBoneData }
CurveAnimBonesHaveValidParents.fflag = getFFlagUGCValidateEmotesBonesAllowed
CurveAnimBonesHaveValidParents.expectedFailures = {}
CurveAnimBonesHaveValidParents.prereqTests = { ValidationEnums.ValidationModule.CurveAnimDataAvailable }

local BODY_PARTS_WITH_BONES = { "Head", "UpperTorso", "LeftFoot", "RightFoot", "LeftHand", "RightHand" }

local cachedParentMap: { [string]: string }? = nil

local function getParentMap(): { [string]: string }
	if cachedParentMap then
		return cachedParentMap
	end

	local parentMap: { [string]: string } = {}

	for _, bodyPartName in BODY_PARTS_WITH_BONES do
		local schema = R15plusUtils.getAvatarBoneSchema(bodyPartName)
		local flatHierarchy = R15plusUtils.getSchemaFlatHierarchyList(schema, { bodyPartName })

		for boneName, entry in flatHierarchy do
			if entry.ClassName ~= "Bone" then
				continue
			end
			local path = entry.path
			local parentName = path[#path - 1]
			local parentEntry = flatHierarchy[parentName]
			if parentEntry and parentEntry.ClassName == "Bone" then
				parentMap[boneName] = parentName
			end
		end
	end

	cachedParentMap = parentMap
	return parentMap
end

CurveAnimBonesHaveValidParents.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local parentMap = getParentMap()

	for _, inst in data.curveAnimations do
		local curveAnim = inst :: CurveAnimation

		local presentBones: { [string]: boolean } = {}
		for _, desc in curveAnim:GetDescendants() do
			if desc:IsA("Folder") and CurveAnimBoneHierarchyUtils.isBoneFolderName(desc.Name) then
				presentBones[desc.Name] = true
			end
		end

		for boneName in presentBones do
			local requiredParent = parentMap[boneName]
			if requiredParent ~= nil and not presentBones[requiredParent] then
				reporter:fail(ErrorSourceStrings.Keys.CurveAnim_BoneRequiresParent, {
					boneName = boneName,
					parentBoneName = requiredParent,
				})
			end
		end
	end
end

return CurveAnimBonesHaveValidParents :: Types.ValidationModule
