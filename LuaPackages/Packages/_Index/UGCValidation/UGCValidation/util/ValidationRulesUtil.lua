local AvatarCreationService = game:GetService("AvatarCreationService")

type ValidationRulesUtil = {
	rules: any?,
	rigAttachmentToParentMap: { [string]: string },

	getRules: (self: ValidationRulesUtil) -> any,
	getBodyPartMaxTrianglesRule: (self: ValidationRulesUtil, assetTypeEnum: Enum.AssetType) -> number,
	getAccessoryRules: (self: ValidationRulesUtil, dest: { [Enum.AssetType]: any }) -> (),
	getBodyPartRules: (self: ValidationRulesUtil, dest: { [Enum.AssetType]: any }) -> (),
	getFullBodyRulesBounds: (self: ValidationRulesUtil) -> { [string]: { minSize: number, maxSize: number } },
	getMakeupRules: (self: ValidationRulesUtil) -> any,
	getLCSizeLimit: (self: ValidationRulesUtil, assetType: Enum.AssetType, handle: BasePart) -> (boolean, Vector3?),
}

local ValidationRulesUtilImpl = {}

ValidationRulesUtilImpl.rigAttachmentToParentMap = {
	Head = "NeckRigAttachment",
	UpperTorso = "WaistRigAttachment",
	LowerTorso = "RootRigAttachment",
	RightHand = "RightWristRigAttachment",
	RightLowerArm = "RightElbowRigAttachment",
	RightUpperArm = "RightShoulderRigAttachment",
	LeftHand = "LeftWristRigAttachment",
	LeftLowerArm = "LeftElbowRigAttachment",
	LeftUpperArm = "LeftShoulderRigAttachment",
	RightFoot = "RightAnkleRigAttachment",
	RightLowerLeg = "RightKneeRigAttachment",
	RightUpperLeg = "RightHipRigAttachment",
	LeftFoot = "LeftAnkleRigAttachment",
	LeftLowerLeg = "LeftKneeRigAttachment",
	LeftUpperLeg = "LeftHipRigAttachment",
}

function ValidationRulesUtilImpl:getRules()
	if not self.rules then
		self.rules = AvatarCreationService:GetValidationRules()
	end

	return self.rules
end

function ValidationRulesUtilImpl:getBodyPartMaxTrianglesRule(assetTypeEnum)
	return self:getRules().MeshRules.BodyPartMaxTriangles[assetTypeEnum]
end

function ValidationRulesUtilImpl:getMakeupRules()
	local makeupRules = self:getRules().MakeupRules
	local makeupRulesNewFormat = {}
	for key, value in makeupRules do
		if key ~= "ExcludeUVBounds" and key ~= "IncludeUVBounds" then
			makeupRulesNewFormat[key] = value
		end
	end

	local assetUVBounds = {}
	for assetType, boundsTable in makeupRules.ExcludeUVBounds do
		if not assetUVBounds[assetType] then
			assetUVBounds[assetType] = {}
		end

		for _, bounds in boundsTable do
			table.insert(assetUVBounds[assetType], {
				isIncludeBound = false,
				MinBound = bounds.MinBound,
				MaxBound = bounds.MaxBound,
			})
		end
	end

	for assetType, boundsTable in makeupRules.IncludeUVBounds do
		if not assetUVBounds[assetType] then
			assetUVBounds[assetType] = {}
		end

		table.insert(assetUVBounds[assetType], {
			isIncludeBound = true,
			MinBound = boundsTable.MinBound,
			MaxBound = boundsTable.MaxBound,
		})
	end

	makeupRulesNewFormat.AssetUVBounds = assetUVBounds

	return makeupRulesNewFormat
end

function ValidationRulesUtilImpl:getAccessoryRules(dest)
	for assetType, info in self:getRules().AccessoryRules do
		local assetTypeInfo = {
			rigidAllowed = info.RigidAllowed,
			attachmentNames = {},
			bounds = {},
		}
		for _, attachmentInfo in info.Attachments do
			table.insert(assetTypeInfo.attachmentNames, attachmentInfo.Name)
			assetTypeInfo.bounds[attachmentInfo.Name] = {
				size = attachmentInfo.Size,
				offset = attachmentInfo.Offset,
			}
		end
		dest[assetType] = assetTypeInfo
	end
end

function ValidationRulesUtilImpl:getBodyPartRules(dest)
	for assetType, info in self:getRules().BodyPartRules do
		local assetTypeInfo = {
			isBodyPart = true,
			bounds = {},
			subParts = {},
		}
		for scaleType, boundsInfo in info.Bounds do
			assetTypeInfo.bounds[scaleType] = {
				minSize = boundsInfo.MinSize,
				maxSize = boundsInfo.MaxSize,
			}
		end
		for partName, attachments in info.SubParts do
			local partAttachmentInfo = {
				rigAttachmentToParent = {},
				otherAttachments = {},
			}
			local rigAttachmentToParent = ValidationRulesUtilImpl.rigAttachmentToParentMap[partName]
			for attachmentName, attachmentInfo in attachments do
				if rigAttachmentToParent == attachmentName then
					partAttachmentInfo.rigAttachmentToParent = {
						name = attachmentName,
						bounds = {
							min = attachmentInfo.LowerBound,
							max = attachmentInfo.UpperBound,
						},
					}
				else
					partAttachmentInfo.otherAttachments[attachmentName] = {
						bounds = {
							min = attachmentInfo.LowerBound,
							max = attachmentInfo.UpperBound,
						},
					}
				end
			end
			assetTypeInfo.subParts[partName] = partAttachmentInfo
		end
		dest[assetType] = assetTypeInfo
	end
end

function ValidationRulesUtilImpl:getFullBodyRulesBounds()
	local result = {}
	for scaleType, boundsInfo in self:getRules().FullBodyRules.Bounds do
		result[scaleType] = {
			minSize = boundsInfo.MinSize,
			maxSize = boundsInfo.MaxSize,
		}
	end
	return result
end

function ValidationRulesUtilImpl:getLCSizeLimit(assetType: Enum.AssetType, handle: BasePart): (boolean, Vector3?)
	local accessoryRules = ValidationRulesUtilImpl:getRules().AccessoryRules[assetType]
	for _, attachmentInfo in accessoryRules.Attachments do
		if handle:FindFirstChild(attachmentInfo.Name) then
			return true, attachmentInfo.Size
		end
	end
	return false, nil
end
local ValidationRulesUtil: ValidationRulesUtil = ValidationRulesUtilImpl

return ValidationRulesUtil
