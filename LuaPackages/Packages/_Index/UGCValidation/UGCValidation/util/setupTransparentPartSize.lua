--!strict
--[[
	setupTransparentPartSize.lua sets the size of the transparent part for validating asset transparency
]]

local root = script.Parent.Parent
local Types = require(root.util.Types)
local AssetTraversalUtils = require(root.util.AssetTraversalUtils)
local ConstantsInterface = require(root.ConstantsInterface)

local getFFlagUGCValidationRemoveRotationCheck = require(root.flags.getFFlagUGCValidationRemoveRotationCheck)

return function(transparentPart: MeshPart, inst: Instance, assetTypeEnum: Enum.AssetType): boolean
	local minMaxBounds: Types.BoundsData = {}
	if Enum.AssetType.DynamicHead == assetTypeEnum then
		AssetTraversalUtils.calculateBounds(assetTypeEnum, inst :: MeshPart, CFrame.new(), minMaxBounds)
		if getFFlagUGCValidationRemoveRotationCheck() then
			transparentPart.CFrame = CFrame.new();
			(inst :: MeshPart).CFrame = CFrame.new()
		else
			transparentPart.Position = (inst :: MeshPart).Position
		end
		transparentPart.Size = (inst :: MeshPart).Size
	else
		local hierarchy = AssetTraversalUtils.assetHierarchy[assetTypeEnum :: Enum.AssetType]
		AssetTraversalUtils.traverseHierarchy(
			nil,
			inst :: Folder,
			assetTypeEnum,
			nil,
			CFrame.new(),
			hierarchy.root,
			hierarchy,
			minMaxBounds
		)
		local function moveParts(folder: Folder?, parentName: string?, parentCFrame: CFrame, name: string, details: any)
			local meshHandle = (folder :: Folder):FindFirstChild(name) :: MeshPart
			local cframe = parentCFrame
			if parentName then
				local parentMeshHandle = (folder :: Folder):FindFirstChild(parentName) :: MeshPart
				local rigAttachmentName = ConstantsInterface.getRigAttachmentToParent(assetTypeEnum, name)
				local parentAttachment: Attachment? = parentMeshHandle:FindFirstChild(rigAttachmentName) :: Attachment
				local attachment: Attachment? = meshHandle:FindFirstChild(rigAttachmentName) :: Attachment
				cframe = (cframe * (parentAttachment :: Attachment).CFrame)
					* (attachment :: Attachment).CFrame:Inverse()
			end
			meshHandle.CFrame = cframe
			if details.children then
				for childName, childDetails in details.children do
					moveParts(folder, name, cframe, childName, childDetails)
				end
			end
		end
		moveParts(inst :: Folder, nil, CFrame.new(), hierarchy.root, hierarchy)
		local maxSize: Vector3 = Vector3.new()
		local minSize: Vector3 = Vector3.new()
		maxSize = if minMaxBounds.maxOverall then minMaxBounds.maxOverall else Vector3.new()
		minSize = if minMaxBounds.minOverall then minMaxBounds.minOverall else Vector3.new()
		if minMaxBounds.minOverall == nil or minMaxBounds.maxOverall == nil then
			return false
		end
		transparentPart.Size = Vector3.new(maxSize.X - minSize.X, maxSize.Y - minSize.Y, maxSize.Z - minSize.Z)
		transparentPart.Position = Vector3.new(
			minSize.X + transparentPart.Size.X / 2,
			minSize.Y + transparentPart.Size.Y / 2,
			minSize.Z + transparentPart.Size.Z / 2
		)
	end
	return true
end
