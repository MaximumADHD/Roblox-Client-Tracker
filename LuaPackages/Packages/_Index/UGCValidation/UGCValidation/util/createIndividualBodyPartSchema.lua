local root = script.Parent.Parent

local Types = require(root.util.Types)

local Constants = require(root.Constants)
local R15plusUtils = require(root.util.R15plusUtils)
local flags = root.flags
local getFFlagUGCValidationEnforceHRDUpload = require(flags.getFFlagUGCValidationEnforceHRDUpload)
local DRDPREFIXES = {
	LeftHand = "LeftHand",
	RightHand = "RightHand",
}

local function createIndividualBodyPartSchema(
	assetTypeEnum: Enum.AssetType,
	subPartName: string,
	_validationContext: Types.ValidationContext?
)
	local assetInfo = Constants.ASSET_TYPE_INFO[assetTypeEnum]
	local validationData = assetInfo.subParts[subPartName]

	local individualBodyPartSchema = {
		ClassName = "MeshPart",
		Name = { subPartName },
		_children = {
			{
				Name = { "AvatarPartScaleType" },
				ClassName = "StringValue",
			},
			{
				Name = { subPartName, subPartName .. "WrapTarget", "WrapTarget" },
				ClassName = "WrapTarget",
			},
			{
				Name = { "SurfaceAppearance" },
				ClassName = "SurfaceAppearance",
				_optional = true,
			},
		},
	}

	table.insert(individualBodyPartSchema._children, {
		Name = { validationData.rigAttachmentToParent.name },
		ClassName = "Attachment",
	})

	for attachmentName in pairs(validationData.otherAttachments) do
		table.insert(individualBodyPartSchema._children, {
			Name = { attachmentName },
			ClassName = "Attachment",
		})
	end

	if R15plusUtils.checkFlagEnabledForAllowHrd() then
		table.insert(individualBodyPartSchema._children, {
			Name = { "HumanoidRigDescription" },
			ClassName = "HumanoidRigDescription",
			_optional = not getFFlagUGCValidationEnforceHRDUpload(),
		})

		if DRDPREFIXES[subPartName] ~= nil then
			local alias = `{DRDPREFIXES[subPartName]}Description`
			table.insert(individualBodyPartSchema._children, {
				Name = { "DigitsRigDescription", alias },
				ClassName = "DigitsRigDescription",
				_optional = true,
			})
		end

		local boneSchema = R15plusUtils.getAvatarBoneSchema(subPartName)
		local attWhiteList = R15plusUtils.getNameWhitelistOfClassInSchema(boneSchema, "Attachment")
		for _, currentSchemaChild in individualBodyPartSchema._children do
			if currentSchemaChild.ClassName == "Attachment" and attWhiteList[currentSchemaChild.Name[1]] then
				currentSchemaChild._optional = true
			end

			local isShoulderRig = string.find(currentSchemaChild.Name[1], "ShoulderRigAttachment")
			if isShoulderRig then
				if (currentSchemaChild :: any)._children == nil then
					currentSchemaChild._children = {}
				end

				table.insert(currentSchemaChild._children, {
					Name = { R15plusUtils.JointRotationName },
					ClassName = "Attachment",
					_optional = true,
				})
			end
		end

		local boneWhiteList = R15plusUtils.getNameWhitelistOfClassInSchema(boneSchema, "Bone")
		for name, val in boneWhiteList do
			if val then
				table.insert((individualBodyPartSchema :: any)._children, {
					Name = { name },
					ClassName = "Bone",
					_optional = true,
					_ignoreDescendants = true,
				})
			end
		end
	end

	return individualBodyPartSchema
end

return createIndividualBodyPartSchema
