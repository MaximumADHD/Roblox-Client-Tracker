local root = script.Parent.Parent.Parent

local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)
local CurveAnimationHierarchyUtils = require(root.util.CurveAnimationHierarchyUtils)
local CurveAnimBoneHierarchyUtils = require(root.util.CurveAnimBoneHierarchyUtils)

local getFFlagUGCValidateEmotesBonesAllowed = require(root.flags.getFFlagUGCValidateEmotesBonesAllowed)
local getFFlagUGCValidateDuplicatesInAnimation = require(root.flags.getFFlagUGCValidateDuplicatesInAnimation)
local getFFlagUGCValidateRestrictNumFaceControls = require(root.flags.getFFlagUGCValidateRestrictNumFaceControls)
local getFIntUGCValidateMaxTotalFaceControls = require(root.flags.getFIntUGCValidateMaxTotalFaceControls)

local CurveAnimBoneHierarchyValid = {}

CurveAnimBoneHierarchyValid.categories = { ValidationEnums.UploadCategory.EMOTE_ANIMATION }
CurveAnimBoneHierarchyValid.requiredData = {
	ValidationEnums.SharedDataMember.curveAnimations,
}
CurveAnimBoneHierarchyValid.conditionalData = { ValidationEnums.SharedDataMember.curveAnimBoneData }
CurveAnimBoneHierarchyValid.fflag = getFFlagUGCValidateEmotesBonesAllowed
CurveAnimBoneHierarchyValid.expectedFailures = {}
CurveAnimBoneHierarchyValid.prereqTests = { ValidationEnums.ValidationModule.CurveAnimDataAvailable }

-- Builds the acceptable children list for a folder within the bone-aware hierarchy.
-- bodyPartName is the owning body part, propagated through bone folders so that child
-- body part folders are accepted at the correct depth (leaf bones).
local function buildAcceptableForFolder(parentFolder: Instance, bodyPartName: string): { any }
	if CurveAnimBoneHierarchyUtils.isBoneFolderName(parentFolder.Name) then
		local acceptable = {}
		local childBoneNames = CurveAnimBoneHierarchyUtils.getChildBoneNames(parentFolder.Name)
		for _, childBoneName in childBoneNames do
			table.insert(acceptable, { ClassName = "Folder", Name = childBoneName })
		end
		-- Body part child folders attach at the leaf of the bone chain. A bone is a
		-- non-leaf (chain continuation) only when it has exactly one schema child bone
		-- AND that bone is present in the animation — meaning it is a linear link, not a
		-- branching junction. Bones with 2+ schema children (e.g. Chest -> LeftClavicle +
		-- RightClavicle) are always terminal for body-part attachment regardless of which
		-- branch bones the animation contains.
		local hasLinearContinuation = false
		if #childBoneNames == 1 then
			local continuationName = childBoneNames[1]
			for _, child in parentFolder:GetChildren() do
				if child:IsA("Folder") and child.Name == continuationName then
					hasLinearContinuation = true
					break
				end
			end
		end
		if not hasLinearContinuation then
			for _, entry in CurveAnimationHierarchyUtils.calculateAcceptableChildBodyPartFolders(bodyPartName) do
				table.insert(acceptable, entry)
			end
		end
		table.insert(acceptable, { ClassName = "Vector3Curve", Name = "Position" })
		table.insert(acceptable, { ClassName = "EulerRotationCurve", Name = "Rotation" })
		return acceptable
	end

	-- Body part folder: accept child body parts + root bones + Position + Rotation + FaceControls (Head)
	local acceptable = CurveAnimationHierarchyUtils.calculateAcceptableChildBodyPartFolders(parentFolder.Name)

	for _, boneName in CurveAnimBoneHierarchyUtils.getRootBoneNamesForBodyPart(parentFolder.Name) do
		table.insert(acceptable, { ClassName = "Folder", Name = boneName })
	end

	if parentFolder.Name == CurveAnimationHierarchyUtils.humanoidRootPartName then
		return acceptable
	end

	table.insert(acceptable, { ClassName = "Vector3Curve", Name = "Position" })
	table.insert(acceptable, { ClassName = "EulerRotationCurve", Name = "Rotation" })

	if parentFolder.Name == "Head" then
		table.insert(acceptable, {
			ClassName = "Folder",
			Name = CurveAnimationHierarchyUtils.FaceControlsName,
		})
	end

	return acceptable
end

-- Returns a description of the first child that doesn't match acceptableChildren, or nil.
-- Mutates acceptableChildren (removes matched entries).
local function getFirstUnacceptableChildDetail(from: Instance?, acceptableChildren: { any }): string?
	if not from then
		return nil
	end
	for _, inst in from:GetChildren() do
		local matched = false
		for i, instType in acceptableChildren do
			if instType.ClassName == inst.ClassName and instType.Name == inst.Name then
				table.remove(acceptableChildren, i)
				matched = true
				break
			end
		end
		if not matched then
			return `unexpected {inst.ClassName} '{inst.Name}'`
		end
	end
	return nil
end

-- Validates a single folder's immediate structure (children, curves, face controls, grandchildren).
-- Returns nil if valid, or a detail string describing the issue.
local function validateFolderStructure(parentFolder: Instance, path: string, bodyPartName: string): string?
	local acceptable = buildAcceptableForFolder(parentFolder, bodyPartName)
	local childDetail = getFirstUnacceptableChildDetail(parentFolder, acceptable)
	if childDetail then
		return `{childDetail} under '{path}'`
	end

	local curveChildren = CurveAnimationHierarchyUtils.calculateAcceptableCurveChildrenArray()
	local pos = parentFolder:FindFirstChild("Position")
	if not CurveAnimationHierarchyUtils.areChildrenAcceptable(pos, curveChildren) then
		return `unexpected child under '{path}/Position'`
	end

	curveChildren = CurveAnimationHierarchyUtils.calculateAcceptableCurveChildrenArray()
	local rot = parentFolder:FindFirstChild("Rotation")
	if not CurveAnimationHierarchyUtils.areChildrenAcceptable(rot, curveChildren) then
		return `unexpected child under '{path}/Rotation'`
	end

	local faceControls = parentFolder:FindFirstChild(CurveAnimationHierarchyUtils.FaceControlsName)
	if faceControls then
		local allFaceControls = faceControls:GetChildren()
		if
			getFFlagUGCValidateRestrictNumFaceControls()
			and #allFaceControls > getFIntUGCValidateMaxTotalFaceControls()
		then
			return `FaceControls under '{path}' exceeds max count ({#allFaceControls})`
		end
		for _, child in allFaceControls do
			if not child:IsA("FloatCurve") then
				return `unexpected {child.ClassName} '{child.Name}' under '{path}/FaceControls'`
			end
		end
	end

	if CurveAnimationHierarchyUtils.containsGrandChildren(pos) then
		return `'{path}/Position' contains unexpected grandchildren`
	end
	if CurveAnimationHierarchyUtils.containsGrandChildren(rot) then
		return `'{path}/Rotation' contains unexpected grandchildren`
	end
	if CurveAnimationHierarchyUtils.containsGrandChildren(faceControls) then
		return `'{path}/FaceControls' contains unexpected grandchildren`
	end

	return nil
end

-- Walks the hierarchy tree, reporting all issues. Invalid folders are reported but not
-- recursed into (avoids cascading noise from children of structurally broken parents).
-- Valid folders are recursed to check their subtrees.
local function validateHierarchyTree(
	parentFolder: Folder,
	path: string,
	bodyPartName: string,
	reporter: Types.ValidationReporter
)
	local detail = validateFolderStructure(parentFolder, path, bodyPartName)
	if detail then
		reporter:fail(ErrorSourceStrings.Keys.CurveAnim_InvalidBodyPartHierarchyDetail, {
			folderName = parentFolder.Name,
			detail = detail,
		})
		return
	end

	for _, child in parentFolder:GetChildren() do
		if child:IsA("Folder") and child.Name ~= CurveAnimationHierarchyUtils.FaceControlsName then
			local childBodyPartName = if CurveAnimBoneHierarchyUtils.isBoneFolderName(child.Name)
				then bodyPartName
				else child.Name
			validateHierarchyTree(child :: Folder, `{path}/{child.Name}`, childBodyPartName, reporter)
		end
	end
end

CurveAnimBoneHierarchyValid.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	for _, inst in data.curveAnimations do
		local curveAnim = inst :: CurveAnimation

		local bodyPartFolders: { Folder } = {}
		if getFFlagUGCValidateDuplicatesInAnimation() then
			local root_folder = CurveAnimationHierarchyUtils.getBodyPartFolderRoot(curveAnim)
			if root_folder then
				table.insert(bodyPartFolders, root_folder)
			end
		else
			for _, child in curveAnim:GetChildren() do
				if child:IsA("Folder") and CurveAnimationHierarchyUtils.isBodyPartFolderNameValid(child.Name) then
					table.insert(bodyPartFolders, child :: Folder)
				end
			end
		end

		for _, folder in bodyPartFolders do
			if CurveAnimationHierarchyUtils.isBodyPartFolderNameValid(folder.Name) then
				validateHierarchyTree(folder, folder.Name, folder.Name, reporter)
			end
		end
	end
end

return CurveAnimBoneHierarchyValid :: Types.ValidationModule
