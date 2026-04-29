--!strict
--[[
	Validates that the opaque area of a texture falls inside or outside of a specified UV zone.
]]

local root = script.Parent.Parent

local Analytics = require(root.Analytics)

local Types = require(root.util.Types)

local FailureReasonsAccumulator = require(root.util.FailureReasonsAccumulator)

-- We allow this much coverage outside the include bounds
local FIntValidateMakeupZoneIncludeToleranceHundredPercent =
	game:DefineFastInt("ValidateMakeupZoneIncludeToleranceHundredthsPercent", 100)
-- We allow this much coverage inside the exclude bounds
local FIntValidateMakeupZoneExcludeToleranceHundredPercent =
	game:DefineFastInt("ValidateMakeupZoneExcludeHundredthsPercent", 200)

local function createIncludeError(instance, bounds, validationContext): (boolean, { string }?)
	local assetTypeEnum = validationContext.assetTypeEnum :: Enum.AssetType
	Analytics.reportFailure(Analytics.ErrorType.validateMakeupDecal_UVZoneError, nil, validationContext)
	return false,
		{
			string.format(
				"Opaque area of ColorMap for %s does not fall within allowed UV area of [%s] and [%s] for asset type %s",
				instance.Name,
				tostring(bounds.MinBound),
				tostring(bounds.MaxBound),
				assetTypeEnum.Name
			),
		}
end

local function createExcludeError(instance, bounds, validationContext): (boolean, { string }?)
	local assetTypeEnum = validationContext.assetTypeEnum :: Enum.AssetType
	Analytics.reportFailure(Analytics.ErrorType.validateMakeupDecal_UVZoneError, nil, validationContext)
	return false,
		{
			string.format(
				"Opaque pixels in ColorMap for %s were found within a restricted UV area of [%s] and [%s] for asset type %s",
				instance.Name,
				tostring(bounds.MinBound),
				tostring(bounds.MaxBound),
				assetTypeEnum.Name
			),
		}
end

-- Validation that allows for some tolerance of pixels outside the include bounds as long as the overall coverage of those pixels is below a certain threshold.
local function validateCoverageOutsideIncludeBounds(
	instance: Decal,
	editableImage: EditableImage,
	imageMin: Vector2,
	imageMax: Vector2,
	bounds: any,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
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
		return createIncludeError(instance, bounds, validationContext)
	end

	return true
end

-- Validation that allows for some tolerance of pixels inside the exclude bounds as long as the overall coverage of those pixels is below a certain threshold.
local function validateCoverageInsideExcludeBounds(
	instance: Decal,
	editableImage: EditableImage,
	imageMin: Vector2,
	imageMax: Vector2,
	bounds: any,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
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
		return createExcludeError(instance, bounds, validationContext)
	end

	return true
end

local function validateMakeupDecalUVZones(
	instance: Decal,
	editableImage: EditableImage,
	wrapTextureTransfer: WrapTextureTransfer,
	boundsInfo: any,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local extents = wrapTextureTransfer.UVMaxBound - wrapTextureTransfer.UVMinBound

	local reasonsAccumulator = FailureReasonsAccumulator.new()

	for _, bounds in boundsInfo do
		local uvMin = (bounds.MinBound - wrapTextureTransfer.UVMinBound) / extents
		local uvMax = (bounds.MaxBound - wrapTextureTransfer.UVMinBound) / extents

		local imageMin = uvMin * editableImage.Size
		local imageMax = uvMax * editableImage.Size

		if bounds.isIncludeBound then
			reasonsAccumulator:updateReasons(
				validateCoverageOutsideIncludeBounds(
					instance,
					editableImage,
					imageMin,
					imageMax,
					bounds,
					validationContext
				)
			)
		else
			reasonsAccumulator:updateReasons(
				validateCoverageInsideExcludeBounds(
					instance,
					editableImage,
					imageMin,
					imageMax,
					bounds,
					validationContext
				)
			)
		end
	end

	return reasonsAccumulator:getFinalResults()
end

return validateMakeupDecalUVZones
