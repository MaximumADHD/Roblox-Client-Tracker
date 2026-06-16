local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent.Parent

local Constants = require(root.Constants)
local ConstantsInterface = require(root.ConstantsInterface)
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)
local createEditableInstancesForContext = require(root.util.createEditableInstancesForContext)

local getFFlagUGCValidateMigrateWrapAndMakeup = require(root.flags.getFFlagUGCValidateMigrateWrapAndMakeup)
local getFFlagUGCValidateDecalTextureLimits = require(root.flags.getFFlagUGCValidateDecalTextureLimits)

-- We allow this much coverage outside the include bounds
local FIntValidateMakeupZoneIncludeToleranceHundredPercent =
	game:DefineFastInt("ValidateMakeupZoneIncludeToleranceHundredthsPercent", 100)
-- We allow this much coverage inside the exclude bounds
local FIntValidateMakeupZoneExcludeToleranceHundredPercent =
	game:DefineFastInt("ValidateMakeupZoneExcludeHundredthsPercent", 200)

-- Server-side and IEC consumer routing. Read directly from `consumerConfig.source`
-- because consumerEnv is only assigned when FFlagUGCValidateMigrateSchemaProperties
-- is on (see ValidationManager.lua:445-451); under flag-off it is nil and a
-- consumerEnv comparison spuriously skips the RCC-retry and IEC pre-load paths.
local SERVER_SOURCES = {
	Publish = true,
	Backend = true,
	Internal = true,
	InExpServer = true,
}
local IEC_SOURCES = {
	InExpServer = true,
	InExpClient = true,
}

local MakeupDecalValid = {}

MakeupDecalValid.fflag = getFFlagUGCValidateMigrateWrapAndMakeup

MakeupDecalValid.categories = { ValidationEnums.UploadCategory.MAKEUP }

MakeupDecalValid.requiredData = {
	ValidationEnums.SharedDataMember.rootInstance,
	ValidationEnums.SharedDataMember.consumerConfig,
	ValidationEnums.SharedDataMember.uploadEnum,
}

MakeupDecalValid.expectedFailures = {}

-- Validates texture size against the allowed maximum
local function validateTextureSize(
	reporter: Types.ValidationReporter,
	editableImage: EditableImage,
	fullName: string,
	fieldName: string,
	maxTextureSize: number,
	isBackend: boolean
)
	local success, imageSize = pcall(function()
		return UGCValidationService:GetEditableImageSize(editableImage)
	end)

	if not success then
		if isBackend then
			reporter:forceError(
				string.format(
					"Failed to load texture data for '%s'. Make sure the texture exists and try again.",
					fullName
				)
			)
		end
		reporter:fail(ErrorSourceStrings.Keys.MakeupDecal_FailedToLoadTextureData, {
			fullName = fullName,
		})
		return
	end

	if imageSize.X > maxTextureSize or imageSize.Y > maxTextureSize then
		reporter:fail(ErrorSourceStrings.Keys.MakeupDecal_TextureTooBig, {
			sizeX = tostring(imageSize.X),
			sizeY = tostring(imageSize.Y),
			fullName = fullName,
			maxSize = tostring(maxTextureSize),
			fieldName = fieldName,
		})
	end
end

-- Validates that opaque pixels outside include bounds are within tolerance
local function validateCoverageOutsideIncludeBounds(
	reporter: Types.ValidationReporter,
	instance: Instance,
	editableImage: EditableImage,
	imageMin: Vector2,
	imageMax: Vector2,
	bounds: any,
	assetTypeName: string
)
	local allowableCoverageOutsideBounds = (
		(imageMax.X - imageMin.X)
		* (imageMax.Y - imageMin.Y)
		* FIntValidateMakeupZoneIncludeToleranceHundredPercent
		/ 10000
	) * 255
	local actualCoverageOutsideBounds = 0

	local pixels = editableImage:ReadPixelsBuffer(Vector2.new(0, 0), editableImage.Size)
	local col = 0
	local row = editableImage.Size.Y - 1
	for i = 0, buffer.len(pixels) - 1, 4 do
		if col == editableImage.Size.X then
			col = 0
			row = row - 1
		end

		local a = buffer.readu8(pixels, i + 3)
		if a > 0 then
			if col < imageMin.X or row < imageMin.Y or col > imageMax.X or row > imageMax.Y then
				actualCoverageOutsideBounds = actualCoverageOutsideBounds + a
			end
		end
		col = col + 1
	end

	if actualCoverageOutsideBounds > allowableCoverageOutsideBounds then
		reporter:fail(ErrorSourceStrings.Keys.MakeupDecal_UVZoneIncludeViolation, {
			instanceName = instance.Name,
			minBound = tostring(bounds.MinBound),
			maxBound = tostring(bounds.MaxBound),
			assetTypeName = assetTypeName,
		})
	end
end

-- Validates that opaque pixels inside exclude bounds are within tolerance
local function validateCoverageInsideExcludeBounds(
	reporter: Types.ValidationReporter,
	instance: Instance,
	editableImage: EditableImage,
	imageMin: Vector2,
	imageMax: Vector2,
	bounds: any,
	assetTypeName: string
)
	local allowableInsideCoverage = (
		(imageMax.X - imageMin.X)
		* (imageMax.Y - imageMin.Y)
		* FIntValidateMakeupZoneExcludeToleranceHundredPercent
		/ 10000
	) * 255
	local actualInsideCoverage = 0

	local pixels = editableImage:ReadPixelsBuffer(Vector2.new(0, 0), editableImage.Size)
	local col = 0
	local row = editableImage.Size.Y - 1
	for i = 0, buffer.len(pixels) - 1, 4 do
		if col == editableImage.Size.X then
			col = 0
			row = row - 1
		end

		local a = buffer.readu8(pixels, i + 3)
		if a > 0 then
			if col > imageMin.X and row > imageMin.Y and col < imageMax.X and row < imageMax.Y then
				actualInsideCoverage = actualInsideCoverage + a
			end
		end
		col = col + 1
	end

	if actualInsideCoverage > allowableInsideCoverage then
		reporter:fail(ErrorSourceStrings.Keys.MakeupDecal_UVZoneExcludeViolation, {
			instanceName = instance.Name,
			minBound = tostring(bounds.MinBound),
			maxBound = tostring(bounds.MaxBound),
			assetTypeName = assetTypeName,
		})
	end
end

-- Validates UV zones for the makeup decal
local function validateUVZones(
	reporter: Types.ValidationReporter,
	instance: Instance,
	editableImage: EditableImage,
	wrapTextureTransfer: WrapTextureTransfer,
	boundsInfo: any,
	assetTypeName: string
)
	local extents = wrapTextureTransfer.UVMaxBound - wrapTextureTransfer.UVMinBound

	for _, bounds in boundsInfo do
		local uvMin = (bounds.MinBound - wrapTextureTransfer.UVMinBound) / extents
		local uvMax = (bounds.MaxBound - wrapTextureTransfer.UVMinBound) / extents

		local imageMin = uvMin * editableImage.Size
		local imageMax = uvMax * editableImage.Size

		if bounds.isIncludeBound then
			validateCoverageOutsideIncludeBounds(
				reporter,
				instance,
				editableImage,
				imageMin,
				imageMax,
				bounds,
				assetTypeName
			)
		else
			validateCoverageInsideExcludeBounds(
				reporter,
				instance,
				editableImage,
				imageMin,
				imageMax,
				bounds,
				assetTypeName
			)
		end
	end
end

MakeupDecalValid.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local instance = data.rootInstance
	local assetTypeEnum = data.uploadEnum.assetType
	local isBackend = SERVER_SOURCES[data.consumerConfig.source] == true

	local wrapTextureTransfer = instance:FindFirstChildOfClass("WrapTextureTransfer")
	if wrapTextureTransfer == nil then
		-- Structural impossibility: ExpectedRootSchema enforces this child;
		-- raise as a plain error so the wrapper marks the test as ERROR.
		error(string.format("WrapTextureTransfer child not found for %s", instance.Name))
	end

	reporter:setReportingInstance(instance)

	local preloadedImages = data.consumerConfig.preloadedEditableImages
	local allowEditableInstances = IEC_SOURCES[data.consumerConfig.source] == true

	-- The Decal root instance has texture content fields (ColorMap, MetalnessMap, etc.)
	-- Walk the same fields as the legacy code
	local textureFields = Constants.TEXTURE_CONTENT_ID_FIELDS["Decal"]
	if not textureFields then
		error("No texture content ID fields defined for Decal class")
	end

	local colorMapEditableImage: EditableImage? = nil

	for _, fieldName in textureFields do
		local content = (instance :: any)[fieldName .. "Content"]
		if not content or (content.Uri == nil or content.Uri == "") then
			-- Check if there's an editable instance provided directly (IEC path)
			if not allowEditableInstances or not content or not content.Object then
				continue
			end
		end

		local getSuccess, editableImageInfo = createEditableInstancesForContext.getEditableInstanceInfo(
			content,
			preloadedImages,
			"EditableImage",
			allowEditableInstances
		)

		if not getSuccess or not editableImageInfo or not editableImageInfo.instance then
			if isBackend then
				reporter:forceError(string.format("Failed to load %s for Decal %s", fieldName, instance.Name))
			end
			reporter:fail(ErrorSourceStrings.Keys.MakeupDecal_FailedToLoadTexture, {
				fieldName = fieldName,
				instanceName = instance.Name,
			})
			continue
		end

		local editableImage = editableImageInfo.instance :: EditableImage

		if fieldName == "ColorMap" then
			colorMapEditableImage = editableImage
		end

		-- Validate texture size
		local textureSizeLimit = Constants.MAX_TEXTURE_SIZE
		if getFFlagUGCValidateDecalTextureLimits() and assetTypeEnum then
			textureSizeLimit = ConstantsInterface.getTextureLimit(assetTypeEnum, instance, fieldName)
		end

		local fullName = instance:GetFullName() .. "." .. fieldName
		validateTextureSize(reporter, editableImage, fullName, fieldName, textureSizeLimit, isBackend)
	end

	if not colorMapEditableImage then
		reporter:fail(ErrorSourceStrings.Keys.MakeupDecal_NoColorMap, {
			instanceName = instance.Name,
		})
		return
	end

	-- Validate UV zones
	local boundsInfo = Constants.MAKEUP_INFO.AssetUVBounds[assetTypeEnum]
	if boundsInfo then
		validateUVZones(
			reporter,
			instance,
			colorMapEditableImage :: EditableImage,
			wrapTextureTransfer :: WrapTextureTransfer,
			boundsInfo,
			assetTypeEnum.Name
		)
	end
end

return MakeupDecalValid :: Types.ValidationModule
