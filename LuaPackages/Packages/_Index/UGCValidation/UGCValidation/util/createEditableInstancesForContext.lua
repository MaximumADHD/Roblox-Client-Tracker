--!strict

local root = script.Parent.Parent

local Constants = require(root.Constants)

local AssetService = game:GetService("AssetService")

local Types = require(root.util.Types)
local destroyEditableInstances = require(root.util.destroyEditableInstances)

local function getOrCreateEditableInstances(
	instance: Instance,
	contentIdFields: { [string]: { string } },
	editableInstanceType: string,
	editableInstances: { [Instance]: { [string]: any } },
	allowEditableInstances: boolean?,
	contentIdMap: { [string]: Instance }
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
			local created = false
			if not editableInstance or not allowEditableInstances then
				if not contentId or contentId == "" then
					continue
				end

				editableInstance = contentIdMap[contentId]
				if not editableInstance then
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

					created = true
					editableInstance = result
					contentIdMap[contentId] = editableInstance
				end
			end

			if not editableInstances[instance] then
				editableInstances[instance] = {}
			end

			editableInstances[instance][fieldName] = {
				instance = editableInstance,
				created = created,
			}
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

	local contentIdMap = {}

	for _, instance in instances do
		local descendantsAndObject = instance:GetDescendants()
		table.insert(descendantsAndObject, instance)

		for _, descendant in pairs(descendantsAndObject) do
			local success, reason = getOrCreateEditableInstances(
				descendant,
				meshContentIdFields,
				"EditableMesh",
				result.editableMeshes,
				allowEditableInstances,
				contentIdMap
			)
			if not success then
				destroyEditableInstances(
					result.editableMeshes :: Types.EditableMeshes,
					result.editableImages :: Types.EditableImages
				)
				return false, { reason }
			end
			success, reason = getOrCreateEditableInstances(
				descendant,
				textureContentIdFields,
				"EditableImage",
				result.editableImages,
				allowEditableInstances,
				contentIdMap
			)
			if not success then
				destroyEditableInstances(
					result.editableMeshes :: Types.EditableMeshes,
					result.editableImages :: Types.EditableImages
				)
				return false, { reason }
			end
		end
	end

	return true, result
end
