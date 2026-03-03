--[[
	Methods for setting up editable datas.
	The format is [Meshpart Name] = EditableMeshData | EditableCageData | EditableImageData
	This allows for unification in how we access mesh data:
		- For both MP/SP meshes, it would be sharedData.renderMeshesData.Handle 
		- For a body part outer cage, it would be sharedData.outerCagesData.Head 
]]

local root = script.Parent.Parent.Parent
local createEditableInstancesForContext = require(root.util.createEditableInstancesForContext)
local getMeshSizeFromEditable = require(root.util.getMeshSize)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local DataEnums = ValidationEnums.SharedDataMember
local Types = require(root.util.Types)
local getFFlagUGCValidationAddPBRToSharedData = require(root.flags.getFFlagUGCValidationAddPBRToSharedData)

local FetchEditables = {}

function FetchEditables.cleanup(editableDatas: {
	[string]: Types.EditableMeshData
		| Types.EditableCageData
		| Types.EditableImageData
		| Types.EditableImageWithPBRData,
})
	for k, v in editableDatas :: any do
		if v.createdInValidation then
			v.editable:Destroy()
		end

		if getFFlagUGCValidationAddPBRToSharedData() then
			if v.isPBR ~= nil then
				for _, nestedData in v do
					if typeof(nestedData) == "table" and nestedData.createdInValidation then
						(nestedData :: any).editable:Destroy()
					end
				end
			end
		end

		editableDatas[k] = nil
	end
end

local function getMeshData(
	meshInstance: MeshPart | SpecialMesh,
	allowEditableInstances: boolean,
	preloadedMeshes: { [string]: EditableMesh }
): (boolean, Types.EditableMeshData?)
	local content = meshInstance:IsA("MeshPart") and meshInstance.MeshContent or Content.fromUri(meshInstance.MeshId)
	local success, editableMeshInfo = createEditableInstancesForContext.getEditableInstanceInfo(
		content,
		preloadedMeshes,
		"EditableMesh",
		allowEditableInstances
	)

	if not success then
		return false
	end

	local originalSize, scale
	if meshInstance:IsA("MeshPart") then
		if meshInstance.MeshContent.SourceType == Enum.ContentSourceType.Object then
			originalSize = getMeshSizeFromEditable({ editableMesh = editableMeshInfo.instance } :: any)
			scale = Vector3.one
		else
			originalSize = meshInstance.MeshSize
			scale = meshInstance.Size / meshInstance.MeshSize
		end
	elseif meshInstance:IsA("SpecialMesh") then
		originalSize = getMeshSizeFromEditable({ editableMesh = editableMeshInfo.instance } :: any)
		scale = meshInstance.Scale
	end

	return true,
		{
			editable = editableMeshInfo.instance,
			createdInValidation = editableMeshInfo.created,
			originalSize = originalSize,
			scale = scale,
		}
end

local function getTextureData_deprecated(
	meshInstance: MeshPart | SpecialMesh,
	allowEditableInstances: boolean,
	preloadedImages: { [string]: EditableImage }
): (boolean, Types.EditableImageData?)
	local content
	if meshInstance:IsA("MeshPart") then
		content = meshInstance.TextureContent
	else
		content = Content.fromUri(meshInstance.TextureId)
	end

	local success, editableImageInfo = createEditableInstancesForContext.getEditableInstanceInfo(
		content,
		preloadedImages,
		"EditableImage",
		allowEditableInstances
	)

	if success then
		return true, {
			editable = editableImageInfo.instance,
			createdInValidation = editableImageInfo.created,
		}
	end
	return false
end

local function getTextureData(
	meshInstance: MeshPart | SpecialMesh,
	allowEditableInstances: boolean,
	preloadedImages: { [string]: EditableImage }
): (boolean, Types.EditableImageWithPBRData?)
	local surfaceAppearance = meshInstance:FindFirstChildWhichIsA("SurfaceAppearance") :: SurfaceAppearance
	local contentMapping = {}
	if surfaceAppearance ~= nil then
		contentMapping = {
			isPBR = true,
			ColorMap = surfaceAppearance.ColorMapContent,
			MetalnessMap = surfaceAppearance.MetalnessMapContent,
			NormalMap = surfaceAppearance.NormalMapContent,
			RoughnessMap = surfaceAppearance.RoughnessMapContent,
		}
	else
		local content
		if meshInstance:IsA("MeshPart") then
			content = meshInstance.TextureContent
		else
			content = Content.fromUri(meshInstance.TextureId)
		end

		contentMapping = {
			isPBR = false,
			Texture = content,
		}
	end

	local editableMapping = { isPBR = contentMapping.isPBR }
	for mapName, content in contentMapping do
		if mapName == "isPBR" or (content :: Content).SourceType == Enum.ContentSourceType.None then
			continue
		end

		local success, editableImageInfo = createEditableInstancesForContext.getEditableInstanceInfo(
			content,
			preloadedImages,
			"EditableImage",
			allowEditableInstances
		)

		if not success then
			FetchEditables.cleanup(editableMapping :: any)
			return false
		end

		editableMapping[mapName] = {
			editable = editableImageInfo.instance,
			createdInValidation = editableImageInfo.created,
		}
	end

	return true, editableMapping :: Types.EditableImageWithPBRData
end

local function getCageData(
	wrapInstance: WrapLayer | WrapTarget,
	getOuterCage: boolean,
	allowEditableInstances: boolean,
	preloadedMeshes: { [string]: EditableMesh }
): (boolean, Types.EditableCageData?)
	local content, origin
	if not getOuterCage and wrapInstance.ClassName == "WrapLayer" then
		content = (wrapInstance :: WrapLayer).ReferenceMeshContent
		origin = (wrapInstance :: WrapLayer).ReferenceOrigin
	else
		content = wrapInstance.CageMeshContent
		origin = wrapInstance.CageOrigin
	end

	local success, editableMeshInfo = createEditableInstancesForContext.getEditableInstanceInfo(
		content,
		preloadedMeshes,
		"EditableMesh",
		allowEditableInstances
	)

	if success then
		return true,
			{
				editable = editableMeshInfo.instance,
				createdInValidation = editableMeshInfo.created,
				originalSize = getMeshSizeFromEditable({ editableMesh = editableMeshInfo.instance } :: any),
				origin = origin,
			}
	end
	return false
end

local function getDataInstance_deprecated(instance: Instance, requestedData: string): (boolean, Instance?)
	-- If this instance has the requested data, we return the instance that contains it.
	-- For example, a Meshpart may return it's underlying wraplayer, or a part may return its underlying specialMesh
	if instance:IsA("MeshPart") or (instance:IsA("Part") and instance:FindFirstChildOfClass("SpecialMesh")) then
		local meshInstance = (
			instance:IsA("MeshPart") and instance or instance:FindFirstChildOfClass("SpecialMesh")
		) :: MeshPart | SpecialMesh

		if requestedData == DataEnums.meshTextures then
			-- Check if this meshInstance actually has no texture (likely using PBR instead), if so return nil
			if
				(
					meshInstance.ClassName == "MeshPart"
					and (meshInstance :: MeshPart).TextureContent.SourceType == Enum.ContentSourceType.None
				) or meshInstance.ClassName == "SpecialMesh" and (meshInstance :: SpecialMesh).TextureId == ""
			then
				return false
			end
		end

		if requestedData == DataEnums.renderMeshesData or requestedData == DataEnums.meshTextures then
			return true, meshInstance
		end

		local wrapInstance = instance:FindFirstChildWhichIsA("BaseWrap")
		if requestedData == DataEnums.outerCagesData then
			return true, wrapInstance
		elseif requestedData == DataEnums.innerCagesData and wrapInstance and wrapInstance.ClassName == "WrapLayer" then
			return true, wrapInstance
		end
	end

	return false
end

local function getDataInstance(instance: Instance, requestedData: string): (boolean, Instance?)
	-- If this instance has the requested data, we return the instance that contains it.
	-- For example, a Meshpart may return it's underlying wraplayer, or a part may return its underlying specialMesh
	local meshInstance = (
		instance:IsA("MeshPart") and instance or instance:FindFirstChildOfClass("SpecialMesh")
	) :: MeshPart | SpecialMesh

	if meshInstance then
		local wrapInstance = instance:FindFirstChildWhichIsA("BaseWrap")
		if requestedData == DataEnums.renderMeshesData then
			return true, meshInstance
		elseif requestedData == DataEnums.meshTextures then
			local isPBR = meshInstance:FindFirstChildWhichIsA("SurfaceAppearance") ~= nil
			local isSpecialMesh = meshInstance.ClassName == "SpecialMesh"
				and (meshInstance :: SpecialMesh).TextureId ~= ""
			local isNormalMesh = meshInstance.ClassName == "MeshPart"
				and (meshInstance :: MeshPart).TextureContent.SourceType ~= Enum.ContentSourceType.None
			return isNormalMesh or isPBR or isSpecialMesh, meshInstance
		elseif requestedData == DataEnums.outerCagesData and wrapInstance then
			local validData = (wrapInstance :: BaseWrap).CageMeshContent.SourceType ~= Enum.ContentSourceType.None
			return validData, wrapInstance
		elseif requestedData == DataEnums.innerCagesData and wrapInstance and wrapInstance.ClassName == "WrapLayer" then
			local validData = (wrapInstance :: WrapLayer).ReferenceMeshContent.SourceType ~= Enum.ContentSourceType.None
			return validData, wrapInstance
		end
	end

	return false
end

function FetchEditables.getDatas(
	rootInstance: Instance,
	requestedData: string,
	allowEditableInstances: boolean,
	preloadedMeshes: { [string]: EditableMesh },
	preloadedImages: { [string]: EditableImage }
): { [string]: any }?
	local results = {}
	local allInstances = rootInstance:GetDescendants()
	table.insert(allInstances, rootInstance)
	for _, instance in allInstances do
		local instanceHasRelevantData, dataInstance
		if getFFlagUGCValidationAddPBRToSharedData() then
			instanceHasRelevantData, dataInstance = getDataInstance(instance, requestedData)
		else
			instanceHasRelevantData, dataInstance = getDataInstance_deprecated(instance, requestedData)
		end

		if instanceHasRelevantData then
			local fetchSuccess, data: Types.EditableCageData? | Types.EditableMeshData? | Types.EditableImageData? | Types.EditableImageWithPBRData?
			if requestedData == DataEnums.renderMeshesData then
				fetchSuccess, data = getMeshData(dataInstance :: any, allowEditableInstances, preloadedMeshes)
			elseif requestedData == DataEnums.innerCagesData or requestedData == DataEnums.outerCagesData then
				local getOuterCage = (requestedData == DataEnums.outerCagesData)
				fetchSuccess, data =
					getCageData(dataInstance :: any, getOuterCage, allowEditableInstances, preloadedMeshes)
			elseif requestedData == DataEnums.meshTextures then
				if getFFlagUGCValidationAddPBRToSharedData() then
					fetchSuccess, data = getTextureData(dataInstance :: any, allowEditableInstances, preloadedImages)
				else
					fetchSuccess, data =
						getTextureData_deprecated(dataInstance :: any, allowEditableInstances, preloadedImages)
				end
			end

			if not fetchSuccess or data == nil then
				-- TODO: provide a fetch error to the user?
				FetchEditables.cleanup(results)
				return
			end

			results[instance.Name] = data
		end
	end

	return results
end

return FetchEditables
