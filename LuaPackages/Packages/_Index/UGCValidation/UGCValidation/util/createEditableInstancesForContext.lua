--!strict

local root = script.Parent.Parent

local AssetService = game:GetService("AssetService")

local Types = require(root.util.Types)
local destroyEditableInstances = require(root.util.destroyEditableInstances)
local checkForProxyWrap = require(root.util.checkForProxyWrap)

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
			AssetService:CreateEditableMeshStripSkinningAsync(content.Uri)
		else
			AssetService:CreateEditableImageAsync(content.Uri)
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

local function getEditableInstanceInfo(content, contentIdMap, contentType, allowEditableInstances)
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
		addContent(contentIdToContentMap, "TextureId", { Uri = (instance :: SpecialMesh).TextureId }, "EditableImage")
	elseif instance:IsA("SurfaceAppearance") then
		addContent(
			contentIdToContentMap,
			"ColorMap",
			{ Uri = (instance :: SurfaceAppearance).ColorMap },
			"EditableImage"
		)
		addContent(
			contentIdToContentMap,
			"MetalnessMap",
			{ Uri = (instance :: SurfaceAppearance).MetalnessMap },
			"EditableImage"
		)
		addContent(
			contentIdToContentMap,
			"NormalMap",
			{ Uri = (instance :: SurfaceAppearance).NormalMap },
			"EditableImage"
		)
		addContent(
			contentIdToContentMap,
			"RoughnessMap",
			{ Uri = (instance :: SurfaceAppearance).RoughnessMap },
			"EditableImage"
		)
	end
end

local function getCageMeshContent(instance, allowEditableInstances)
	local proxyMeshPart = instance:FindFirstChild("WrapProxy")
	if proxyMeshPart and allowEditableInstances and checkForProxyWrap(proxyMeshPart) then
		return (proxyMeshPart :: MeshPart).MeshContent
	end

	return (instance :: any).CageMeshContent
end

local function getMeshContentMap(instance, contentIdToContentMap, allowEditableInstances)
	if instance:IsA("MeshPart") and not checkForProxyWrap(instance) then
		addContent(contentIdToContentMap, "MeshId", (instance :: MeshPart).MeshContent, "EditableMesh")
	elseif instance:IsA("WrapTarget") then
		addContent(
			contentIdToContentMap,
			"CageMeshId",
			getCageMeshContent(instance, allowEditableInstances),
			"EditableMesh"
		)
	elseif instance:IsA("WrapLayer") then
		addContent(
			contentIdToContentMap,
			"CageMeshId",
			getCageMeshContent(instance, allowEditableInstances),
			"EditableMesh"
		)
		addContent(contentIdToContentMap, "ReferenceMeshId", (instance :: any).ReferenceMeshContent, "EditableMesh")
	elseif instance:IsA("SpecialMesh") then
		addContent(contentIdToContentMap, "MeshId", { Uri = (instance :: SpecialMesh).MeshId }, "EditableMesh")
	end
end

local function getOrCreateEditableInstances(
	instance,
	contentIdMap,
	editableInstances,
	allowEditableInstances
): (boolean, any?)
	local contentIdToContentMap = {}
	getMeshContentMap(instance, contentIdToContentMap, allowEditableInstances)
	getTextureContentMap(instance, contentIdToContentMap)

	for key, contentInfo in contentIdToContentMap do
		local contentType = contentInfo.contentType
		local success, result =
			getEditableInstanceInfo(contentInfo.content, contentIdMap, contentType, allowEditableInstances)
		if not success then
			return success, result
		end

		addEditableInstance(editableInstances, instance, key, result, contentType)
	end

	return true
end

return function(instances: { Instance }, allowEditableInstances: boolean?): (boolean, any)
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
			local success, reason =
				getOrCreateEditableInstances(descendant, contentIdMap, result, allowEditableInstances)
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
