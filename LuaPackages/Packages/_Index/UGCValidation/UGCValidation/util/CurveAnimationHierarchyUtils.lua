local root = script.Parent.Parent

local AssetCalculator = require(root.util.AssetCalculator)

local flags = root.flags
local getFFlagUGCValidateDuplicatesInAnimation = require(flags.getFFlagUGCValidateDuplicatesInAnimation)
local getFFlagUGCValidateRestrictNumFaceControls = require(flags.getFFlagUGCValidateRestrictNumFaceControls)
local getFIntUGCValidateMaxTotalFaceControls = require(flags.getFIntUGCValidateMaxTotalFaceControls)

local CurveAnimationHierarchyUtils = {}

local bodyPartToParentFullBody: { [string]: string } = nil

function CurveAnimationHierarchyUtils.getBodyPartToParentMap(): { [string]: string }
	if not bodyPartToParentFullBody then
		bodyPartToParentFullBody = AssetCalculator.getBodyPartsToParents()
	end
	return bodyPartToParentFullBody
end

CurveAnimationHierarchyUtils.humanoidRootPartName = "HumanoidRootPart"
CurveAnimationHierarchyUtils.FaceControlsName = "FaceControls"

function CurveAnimationHierarchyUtils.folderHasAnimationTracks(folder: Instance): boolean
	local pos = folder:FindFirstChild("Position")
	local rot = folder:FindFirstChild("Rotation")
	return (pos ~= nil and pos:IsA("Vector3Curve"))
		or (rot ~= nil and (rot:IsA("EulerRotationCurve") or rot:IsA("RotationCurve")))
end

function CurveAnimationHierarchyUtils.isBodyPartFolderNameValid(name: string): boolean
	return nil ~= CurveAnimationHierarchyUtils.getBodyPartToParentMap()[name]
		or name == CurveAnimationHierarchyUtils.humanoidRootPartName
end

function CurveAnimationHierarchyUtils.getBodyPartFolderRoot(curveAnim: CurveAnimation): Folder?
	for _, child in curveAnim:GetChildren() do
		if child:IsA("Folder") and CurveAnimationHierarchyUtils.isBodyPartFolderNameValid(child.Name) then
			return child :: Folder
		end
	end
	return nil
end

function CurveAnimationHierarchyUtils.areChildrenAcceptable(from: Instance, arrayOfInstanceTypes: { any }): boolean
	if not from then
		return true
	end

	local function findAndRemoveMatching(inst)
		for i, instType in arrayOfInstanceTypes do
			if instType.ClassName ~= inst.ClassName or instType.Name ~= inst.Name then
				continue
			end
			table.remove(arrayOfInstanceTypes, i)
			return true
		end
		return false
	end

	for _, inst in from:GetChildren() do
		if not findAndRemoveMatching(inst) then
			return false
		end
	end

	return true
end

function CurveAnimationHierarchyUtils.calculateAcceptableChildBodyPartFolders(parentNameInput: string): { any }
	local acceptableChildBodyPartFolders = {}
	for bodyPartName, parentName in CurveAnimationHierarchyUtils.getBodyPartToParentMap() do
		if parentName == parentNameInput then
			table.insert(acceptableChildBodyPartFolders, {
				ClassName = "Folder",
				Name = bodyPartName,
			})
		end
	end
	return acceptableChildBodyPartFolders
end

function CurveAnimationHierarchyUtils.calculateAcceptableBodyPartFolderChildrenArray(
	parentFolder: Instance,
	checkForEularRotationCurve: boolean
): { any }
	local acceptableChildren = CurveAnimationHierarchyUtils.calculateAcceptableChildBodyPartFolders(parentFolder.Name)

	if parentFolder.Name == CurveAnimationHierarchyUtils.humanoidRootPartName then
		return acceptableChildren
	end

	table.insert(acceptableChildren, {
		ClassName = "Vector3Curve",
		Name = "Position",
	})
	table.insert(acceptableChildren, {
		ClassName = if checkForEularRotationCurve then "EulerRotationCurve" else "RotationCurve",
		Name = "Rotation",
	})

	if parentFolder.Name ~= "Head" then
		return acceptableChildren
	end

	table.insert(acceptableChildren, {
		ClassName = "Folder",
		Name = CurveAnimationHierarchyUtils.FaceControlsName,
	})

	return acceptableChildren
end

function CurveAnimationHierarchyUtils.calculateAcceptableCurveChildrenArray(): { any }
	return {
		{
			ClassName = "FloatCurve",
			Name = "X",
		},
		{
			ClassName = "FloatCurve",
			Name = "Y",
		},
		{
			ClassName = "FloatCurve",
			Name = "Z",
		},
	}
end

function CurveAnimationHierarchyUtils.containsGrandChildren(parentFolder: Instance?): boolean
	if not parentFolder then
		return false
	end
	return #parentFolder:GetDescendants() > #parentFolder:GetChildren()
end

function CurveAnimationHierarchyUtils.validateBodyPartFolderChildren(parentFolder: Instance): boolean
	local acceptableChildrenArray =
		CurveAnimationHierarchyUtils.calculateAcceptableBodyPartFolderChildrenArray(parentFolder, true)

	if CurveAnimationHierarchyUtils.areChildrenAcceptable(parentFolder, acceptableChildrenArray) then
		local acceptableCurveChildrenArray = CurveAnimationHierarchyUtils.calculateAcceptableCurveChildrenArray()
		if
			not CurveAnimationHierarchyUtils.areChildrenAcceptable(
				parentFolder:FindFirstChild("Position"),
				acceptableCurveChildrenArray
			)
		then
			return false
		end

		acceptableCurveChildrenArray = CurveAnimationHierarchyUtils.calculateAcceptableCurveChildrenArray()
		if
			not CurveAnimationHierarchyUtils.areChildrenAcceptable(
				parentFolder:FindFirstChild("Rotation"),
				acceptableCurveChildrenArray
			)
		then
			return false
		end

		local faceControls = parentFolder:FindFirstChild(CurveAnimationHierarchyUtils.FaceControlsName)
		if faceControls then
			local allFaceControls = faceControls:GetChildren()

			if getFFlagUGCValidateRestrictNumFaceControls() then
				if #allFaceControls > getFIntUGCValidateMaxTotalFaceControls() then
					return false
				end
			end

			for _, child in allFaceControls do
				if not child:IsA("FloatCurve") then
					return false
				end
			end
		end

		if CurveAnimationHierarchyUtils.containsGrandChildren(parentFolder:FindFirstChild("Position")) then
			return false
		end

		if CurveAnimationHierarchyUtils.containsGrandChildren(parentFolder:FindFirstChild("Rotation")) then
			return false
		end

		if CurveAnimationHierarchyUtils.containsGrandChildren(faceControls) then
			return false
		end

		return true
	end

	return false
end

function CurveAnimationHierarchyUtils.validateCurveAnimationBodyPartFolder(folder: Folder): boolean
	local function validateBodyPartFolderInternal(parentFolder: Folder): boolean
		if getFFlagUGCValidateDuplicatesInAnimation() then
			if not CurveAnimationHierarchyUtils.validateBodyPartFolderChildren(parentFolder) then
				return false
			end

			for _, child in parentFolder:GetChildren() do
				if child:IsA("Folder") and child.Name ~= CurveAnimationHierarchyUtils.FaceControlsName then
					if not validateBodyPartFolderInternal(child :: Folder) then
						return false
					end
				end
			end
			return true
		else
			for _, child in parentFolder:GetChildren() do
				if child:IsA("Folder") then
					if child.Name == CurveAnimationHierarchyUtils.humanoidRootPartName then
						return false
					end

					local requiredParentName = CurveAnimationHierarchyUtils.getBodyPartToParentMap()[child.Name]
					if not requiredParentName then
						continue
					end
					if requiredParentName ~= parentFolder.Name then
						return false
					end
					return validateBodyPartFolderInternal(child :: Folder)
				end
			end
			return true
		end
	end

	if not CurveAnimationHierarchyUtils.isBodyPartFolderNameValid(folder.Name) then
		return true
	end
	return validateBodyPartFolderInternal(folder)
end

return CurveAnimationHierarchyUtils
