local root = script.Parent.Parent

local AssetCalculator = require(root.util.AssetCalculator)

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

return CurveAnimationHierarchyUtils
