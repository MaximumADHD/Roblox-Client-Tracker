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
	return self:getRules().MakeupRules
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

local ValidationRulesUtil: ValidationRulesUtil = ValidationRulesUtilImpl

return ValidationRulesUtil
