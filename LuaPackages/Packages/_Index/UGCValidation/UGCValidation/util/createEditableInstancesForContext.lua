--!strict

local root = script.Parent.Parent

local Constants = require(root.Constants)

local AssetService = game:GetService("AssetService")

local function getOrCreateEditableInstances(
	instance: Instance,
	contentIdFields: { [string]: { string } },
	editableInstanceType: string,
	editableInstances: { [Instance]: { [string]: Instance } },
	allowEditableInstances: boolean?
): (boolean, any?)
	assert(
		editableInstanceType == "EditableMesh" or editableInstanceType == "EditableImage",
		"Wrong class type provided to getOrCreateEditableInstances"
	)

	local contentIdFieldsForClass = contentIdFields[instance.ClassName]
	if contentIdFieldsForClass then
		for _, fieldName in contentIdFieldsForClass do
			local contentId = (instance :: any)[fieldName]

			local editableInstance = instance:FindFirstChildOfClass(editableInstanceType)
			if editableInstance and allowEditableInstances then
				editableInstance = editableInstance:Clone()
			else
				if not contentId or contentId == "" then
					continue
				end

				local success, result = pcall(function(): any
					if editableInstanceType == "EditableMesh" then
						return AssetService:CreateEditableMeshStripSkinningAsync(contentId)
					else
						return AssetService:CreateEditableImageAsync(contentId)
					end
				end)

				if not success then
					return success, result
				end

				editableInstance = result
			end

			editableInstance:SetAttribute("SourceFullName", instance:GetFullName())
			editableInstance:SetAttribute("FieldName", fieldName)
			editableInstance:SetAttribute("ContentId", contentId)

			if not editableInstances[instance] then
				editableInstances[instance] = {}
			end

			editableInstances[instance][fieldName] = editableInstance
		end
	end

	return true
end

return function(instances: { Instance }, allowEditableInstances: boolean?): (boolean, any)
	local meshContentIdFields = Constants.MESH_CONTENT_ID_FIELDS :: { [string]: { string } }
	local textureContentIdFields = Constants.TEXTURE_CONTENT_ID_FIELDS :: { [string]: { string } }

	local result = {
		editableMeshes = {},
		editableImages = {},
	} :: {
		editableMeshes: any,
		editableImages: any,
	}

	for _, instance in instances do
		local descendantsAndObject = instance:GetDescendants()
		table.insert(descendantsAndObject, instance)

		for _, descendant in pairs(descendantsAndObject) do
			local success, reason = getOrCreateEditableInstances(
				descendant,
				meshContentIdFields,
				"EditableMesh",
				result.editableMeshes,
				allowEditableInstances
			)
			if not success then
				return false, { reason }
			end
			success, reason = getOrCreateEditableInstances(
				descendant,
				textureContentIdFields,
				"EditableImage",
				result.editableImages,
				allowEditableInstances
			)
			if not success then
				return false, { reason }
			end
		end
	end

	return true, result
end
