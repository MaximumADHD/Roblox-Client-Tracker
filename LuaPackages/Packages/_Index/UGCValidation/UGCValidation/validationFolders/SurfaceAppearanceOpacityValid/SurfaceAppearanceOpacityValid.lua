local root = script.Parent.Parent.Parent

local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)
local FetchAllDesiredData = require(root.validationSystem.dataFetchModules.FetchAllDesiredData)

local getFFlagUGCValidateMigrateTextureTransparency = require(root.flags.getFFlagUGCValidateMigrateTextureTransparency)

local FORCE_OPAQUE_TEXTURES: { [string]: boolean } = {
	ColorMap = true,
	NormalMap = true,
}

local SurfaceAppearanceOpacityValid = {}

SurfaceAppearanceOpacityValid.categories = {
	ValidationEnums.UploadCategory.RIGID_ACCESSORY,
}

SurfaceAppearanceOpacityValid.requiredData = {}
SurfaceAppearanceOpacityValid.conditionalData = {
	ValidationEnums.SharedDataMember.meshTextures,
}

SurfaceAppearanceOpacityValid.fflag = getFFlagUGCValidateMigrateTextureTransparency

SurfaceAppearanceOpacityValid.expectedFailures = {}

local function getIsOpaque(image: EditableImage): boolean
	local pixels = image:ReadPixelsBuffer(Vector2.new(0, 0), image.Size)
	for i = 0, buffer.len(pixels) - 1, 4 do
		local a = buffer.readu8(pixels, i + 3)
		if a < 255 then
			return false
		end
	end
	return true
end

SurfaceAppearanceOpacityValid.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local rootInstance = data.rootInstance
	local meshTextures = (data :: any).meshTextures

	if not meshTextures or meshTextures == FetchAllDesiredData.DATA_FETCH_FAILURE then
		reporter:fetchError("Failed to load texture data for surface appearance opacity check")
		return
	end

	local allInstances = rootInstance:GetDescendants()
	table.insert(allInstances, rootInstance)

	for _, instance in allInstances do
		if not instance:IsA("MeshPart") then
			continue
		end

		local surfaceAppearance = instance:FindFirstChildWhichIsA("SurfaceAppearance")
		if not surfaceAppearance then
			continue
		end

		-- Check AlphaMode is Overlay
		if (surfaceAppearance :: SurfaceAppearance).AlphaMode ~= Enum.AlphaMode.Overlay then
			reporter:fail(ErrorSourceStrings.Keys.SAOpacity_InvalidAlphaMode, {
				FullName = instance:GetFullName(),
			}, surfaceAppearance)
		end

		-- Check that forced-opaque textures (ColorMap, NormalMap) are fully opaque
		local textureData = meshTextures[instance.Name]
		if not textureData or not textureData.isPBR then
			continue
		end

		for mapName, _ in FORCE_OPAQUE_TEXTURES do
			local mapData = (textureData :: any)[mapName]
			if not mapData then
				continue
			end

			if not mapData.editable then
				reporter:fail(ErrorSourceStrings.Keys.SAOpacity_FailedToLoadTexture, {
					FullName = surfaceAppearance:GetFullName(),
					FieldName = mapName,
				}, surfaceAppearance)
				continue
			end

			local isOpaque = getIsOpaque(mapData.editable)
			if not isOpaque then
				reporter:fail(ErrorSourceStrings.Keys.SAOpacity_TextureNotOpaque, {
					FullName = surfaceAppearance:GetFullName() .. "." .. mapName,
				}, surfaceAppearance)
			end
		end
	end
end

return SurfaceAppearanceOpacityValid :: Types.ValidationModule
