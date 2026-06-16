local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent.Parent

local ConstantsInterface = require(root.ConstantsInterface)
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)
local FetchAllDesiredData = require(root.validationSystem.dataFetchModules.FetchAllDesiredData)

local getFFlagUGCValidateMigrateTextureTransparency = require(root.flags.getFFlagUGCValidateMigrateTextureTransparency)

local TextureSizeBounded = {}

TextureSizeBounded.categories = {
	ValidationEnums.UploadCategory.TORSO_AND_LIMBS,
	ValidationEnums.UploadCategory.DYNAMIC_HEAD,
	ValidationEnums.UploadCategory.LAYERED_CLOTHING,
	ValidationEnums.UploadCategory.RIGID_ACCESSORY,
}

TextureSizeBounded.requiredData = {}
TextureSizeBounded.conditionalData = {
	ValidationEnums.SharedDataMember.meshTextures,
}

TextureSizeBounded.fflag = getFFlagUGCValidateMigrateTextureTransparency

TextureSizeBounded.expectedFailures = {}

local function checkEditableImageSize(
	editableImage: EditableImage,
	maxSize: number,
	fullName: string,
	fieldName: string,
	reporter: Types.ValidationReporter,
	instance: Instance?,
	consumerConfig: Types.PreloadedConsumerConfigs?
)
	local success, imageSize = pcall(function()
		return UGCValidationService:GetEditableImageSize(editableImage)
	end)

	if not success then
		if consumerConfig and consumerConfig.consumerEnv == ValidationEnums.ConsumerEnv.Backend then
			reporter:fetchError(
				string.format(
					"Failed to get texture size for '%s'. Make sure the texture exists and try again.",
					fullName
				)
			)
		end
		reporter:fail(ErrorSourceStrings.Keys.TextureSize_FailedToLoad, {
			FullName = fullName,
		}, instance)
		return
	end

	if imageSize.X > maxSize or imageSize.Y > maxSize then
		reporter:fail(ErrorSourceStrings.Keys.TextureSize_TooBig, {
			Width = tostring(imageSize.X),
			Height = tostring(imageSize.Y),
			FullName = fullName,
			MaxSize = tostring(maxSize),
			FieldName = fieldName,
		}, instance)
	end
end

TextureSizeBounded.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local rootInstance = data.rootInstance
	local assetType = data.uploadEnum.assetType
	local meshTextures = (data :: any).meshTextures
	local consumerConfig = data.consumerConfig
	local uploadCategory = data.uploadCategory

	if not meshTextures or meshTextures == FetchAllDesiredData.DATA_FETCH_FAILURE then
		reporter:fetchError("Failed to load texture data for texture size check")
		return
	end

	-- Walk the root instance tree to find all MeshParts and SpecialMeshes with textures
	local allInstances = rootInstance:GetDescendants()
	table.insert(allInstances, rootInstance)

	for _, instance in allInstances do
		local meshInstance: (MeshPart | SpecialMesh)? = nil
		local instanceName: string = ""

		if instance:IsA("MeshPart") then
			meshInstance = instance :: MeshPart
			instanceName = instance.Name
		elseif instance:IsA("Part") then
			local specialMesh = instance:FindFirstChildOfClass("SpecialMesh")
			if specialMesh then
				meshInstance = specialMesh :: SpecialMesh
				instanceName = instance.Name
			end
		end

		if not meshInstance then
			continue
		end

		local textureData = meshTextures[instanceName]
		if not textureData then
			continue
		end

		-- Only check SA textures for body parts; accessories have SurfaceAppearanceTexturesBounded
		local isBodyPart = uploadCategory == ValidationEnums.UploadCategory.TORSO_AND_LIMBS
			or uploadCategory == ValidationEnums.UploadCategory.DYNAMIC_HEAD
		if textureData.isPBR and isBodyPart then
			-- SurfaceAppearance textures: check each map with per-map limit
			local surfaceAppearance = (meshInstance :: Instance):FindFirstChildWhichIsA("SurfaceAppearance")
			if not surfaceAppearance then
				continue
			end

			local mapNames = { "ColorMap", "MetalnessMap", "NormalMap", "RoughnessMap" }
			for _, mapName in mapNames do
				local mapData = (textureData :: any)[mapName]
				if mapData and mapData.editable then
					local textureSizeLimit = ConstantsInterface.getTextureLimit(assetType, surfaceAppearance, mapName)
					checkEditableImageSize(
						mapData.editable,
						textureSizeLimit,
						surfaceAppearance:GetFullName() .. "." .. mapName,
						mapName,
						reporter,
						surfaceAppearance,
						consumerConfig
					)
				end
			end
		elseif not textureData.isPBR then
			-- Direct texture (MeshPart.TextureID or SpecialMesh.TextureId)
			if textureData.Texture and textureData.Texture.editable then
				local fieldName: string
				if (meshInstance :: Instance):IsA("MeshPart") then
					fieldName = "TextureID"
				else
					fieldName = "TextureId"
				end
				local textureSizeLimit =
					ConstantsInterface.getTextureLimit(assetType, meshInstance :: Instance, fieldName)
				checkEditableImageSize(
					textureData.Texture.editable,
					textureSizeLimit,
					(meshInstance :: Instance):GetFullName(),
					fieldName,
					reporter,
					meshInstance :: Instance,
					consumerConfig
				)
			end
		end
	end
end

return TextureSizeBounded :: Types.ValidationModule
