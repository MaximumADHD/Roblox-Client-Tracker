--!nolint UnknownGlobal
--!nocheck

local root = script.Parent.Parent

local getEngineFeatureRemoveProxyWrap = require(root.flags.getEngineFeatureRemoveProxyWrap)
local getEngineFeatureEngineEditableMeshAvatarPublish =
	require(root.flags.getEngineFeatureEngineEditableMeshAvatarPublish)

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

local function getCageMeshContent(instance, allowEditableInstances)
	if not getEngineFeatureRemoveProxyWrap() then
		local proxyMeshPart = instance:FindFirstChild("WrapProxy")
		if proxyMeshPart and allowEditableInstances and checkForProxyWrap(proxyMeshPart) then
			return (proxyMeshPart :: MeshPart).MeshContent
		end
	end

	return (instance :: any).CageMeshContent
end

local function getMeshContentMap(instance, contentIdToContentMap, allowEditableInstances)
	if getEngineFeatureRemoveProxyWrap() then
		if instance:IsA("MeshPart") then
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
			-- selene: allow(undefined_variable) | Content global will be added later
			addContent(
				contentIdToContentMap,
				"MeshId",
				Content.fromUri((instance :: SpecialMesh).MeshId),
				"EditableMesh"
			)
		end
	else
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
			-- selene: allow(undefined_variable) | Content global will be added later
			addContent(
				contentIdToContentMap,
				"MeshId",
				Content.fromUri((instance :: SpecialMesh).MeshId),
				"EditableMesh"
			)
		end
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
			getEditableInstanceInfo(contentInfo.content :: any, contentIdMap, contentType, allowEditableInstances)
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
