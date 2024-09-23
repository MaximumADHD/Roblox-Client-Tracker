local AvatarCreationService = game:GetService("AvatarCreationService")

local ValidationRulesUtil = {}

ValidationRulesUtil.rigAttachmentToParentMap = {
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

function ValidationRulesUtil:getRules()
	if not self.rules then
		self.rules = AvatarCreationService:GetValidationRules()
	end

	return self.rules
end

function ValidationRulesUtil:getBodyPartMaxTrianglesRule(assetTypeEnum)
	return self:getRules().MeshRules.BodyPartMaxTriangles[assetTypeEnum]
end

function ValidationRulesUtil:getAccessoryRules(dest)
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

function ValidationRulesUtil:getBodyPartRules(dest)
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
			local rigAttachmentToParent = ValidationRulesUtil.rigAttachmentToParentMap[partName]
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

return ValidationRulesUtil
