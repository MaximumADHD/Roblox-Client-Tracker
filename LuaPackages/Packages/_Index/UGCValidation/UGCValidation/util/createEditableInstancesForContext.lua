--!nolint UnknownGlobal
--!nocheck

local root = script.Parent.Parent
local createEditableInstancesForContext = {}

local getEngineFeatureEngineEditableMeshAvatarPublish =
	require(root.flags.getEngineFeatureEngineEditableMeshAvatarPublish)

local AssetService = game:GetService("AssetService")

local Types = require(root.util.Types)
local destroyEditableInstances = require(root.util.destroyEditableInstances)

local function addEditableInstance(editableInstances, instance, key, instanceInfo, contentType)
	local instanceMap = editableInstances.editableMeshes
	if contentType == "EditableImage" then
		instanceMap = editableInstances.editableImages
	end

	if not instanceMap[instance] then
		instanceMap[instance] = {}
	end

	instanceMap[instance][key] = instanceInfo
end

local function createEditableInstanceFromId(content, contentIdMap, contentType)
	local success, result = pcall(function()
		if contentType == "EditableMesh" then
			if getEngineFeatureEngineEditableMeshAvatarPublish() then
				return AssetService:CreateEditableMeshAsync(content)
			else
				return AssetService:CreateEditableMeshStripSkinningAsync(content.Uri) :: any
			end
		else
			return (AssetService :: any):CreateEditableImageAsync(content) :: any
		end
	end)

	if not success then
		return success, result
	end

	contentIdMap[content.Uri] = result
	return true, {
		created = true,
		instance = result,
	}
end

function createEditableInstancesForContext.getEditableInstanceInfo(
	content,
	contentIdMap,
	contentType,
	allowEditableInstances
)
	local created = false
	local editableInstance
	if allowEditableInstances then
		editableInstance = content.Object
	end
	if not editableInstance then
		local contentId = content.Uri
		if contentId and contentId ~= "" then
			editableInstance = contentIdMap[contentId]
			if not editableInstance then
				return createEditableInstanceFromId(content, contentIdMap, contentType)
			end
		end
	end
	return true, {
		instance = editableInstance,
		created = created,
	}
end

local function addContent(contentIdToContentMap, key, content, contentType)
	contentIdToContentMap[key] = {
		content = content,
		contentType = contentType,
	}
end

local function getTextureContentMap(instance, contentIdToContentMap)
	if instance:IsA("MeshPart") then
		addContent(contentIdToContentMap, "TextureID", (instance :: MeshPart).TextureContent, "EditableImage")
	elseif instance:IsA("SpecialMesh") then
		-- selene: allow(undefined_variable) | Content global will be added later
		addContent(
			contentIdToContentMap,
			"TextureId",
			Content.fromUri((instance :: SpecialMesh).TextureId),
			"EditableImage"
		)
	elseif instance:IsA("SurfaceAppearance") then
		addContent(contentIdToContentMap, "ColorMap", (instance :: SurfaceAppearance).ColorMapContent, "EditableImage")
		addContent(
			contentIdToContentMap,
			"MetalnessMap",
			(instance :: SurfaceAppearance).MetalnessMapContent,
			"EditableImage"
		)
		addContent(
			contentIdToContentMap,
			"NormalMap",
			(instance :: SurfaceAppearance).NormalMapContent,
			"EditableImage"
		)
		addContent(
			contentIdToContentMap,
			"RoughnessMap",
			(instance :: SurfaceAppearance).RoughnessMapContent,
			"EditableImage"
		)
	end
end

local function getCageMeshContent(instance)
	return (instance :: any).CageMeshContent
end

local function getMeshContentMap(instance, contentIdToContentMap)
	if instance:IsA("MeshPart") then
		addContent(contentIdToContentMap, "MeshId", (instance :: MeshPart).MeshContent, "EditableMesh")
	elseif instance:IsA("WrapTarget") then
		addContent(contentIdToContentMap, "CageMeshId", getCageMeshContent(instance), "EditableMesh")
	elseif instance:IsA("WrapLayer") then
		addContent(contentIdToContentMap, "CageMeshId", getCageMeshContent(instance), "EditableMesh")
		addContent(contentIdToContentMap, "ReferenceMeshId", (instance :: any).ReferenceMeshContent, "EditableMesh")
	elseif instance:IsA("SpecialMesh") then
		-- selene: allow(undefined_variable) | Content global will be added later
		addContent(contentIdToContentMap, "MeshId", Content.fromUri((instance :: SpecialMesh).MeshId), "EditableMesh")
	end
end

function createEditableInstancesForContext.getOrCreateEditableInstances(
	instance,
	contentIdMap,
	editableInstances,
	allowEditableInstances
): (boolean, any?)
	local contentIdToContentMap = {}
	getMeshContentMap(instance, contentIdToContentMap)
	getTextureContentMap(instance, contentIdToContentMap)

	for key, contentInfo in contentIdToContentMap do
		local contentType = contentInfo.contentType
		local success, result = createEditableInstancesForContext.getEditableInstanceInfo(
			contentInfo.content :: any,
			contentIdMap,
			contentType,
			allowEditableInstances
		)
		if not success then
			return success, result
		end

		addEditableInstance(editableInstances, instance, key, result, contentType)
	end

	return true
end

function createEditableInstancesForContext.processAll(
	instances: { Instance },
	allowEditableInstances: boolean?
): (boolean, any)
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
			local success, reason = createEditableInstancesForContext.getOrCreateEditableInstances(
				descendant,
				contentIdMap,
				result,
				allowEditableInstances
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

return createEditableInstancesForContext
