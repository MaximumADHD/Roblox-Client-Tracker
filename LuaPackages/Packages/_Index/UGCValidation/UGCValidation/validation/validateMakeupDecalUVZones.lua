--!strict
--[[
	Validates that the opaque area of a texture falls inside or outside of a specified UV zone.
]]

local root = script.Parent.Parent

local Analytics = require(root.Analytics)

local Types = require(root.util.Types)

local FailureReasonsAccumulator = require(root.util.FailureReasonsAccumulator)

local function createIncludeError(instance, bounds, validationContext): (boolean, { string }?)
	local assetTypeEnum = validationContext.assetTypeEnum :: Enum.AssetType
	Analytics.reportFailure(Analytics.ErrorType.validateMakeupDecal_UVZoneError, nil, validationContext)
	return false,
		{
			string.format(
				"Opague area of ColorMap for %s does not fall within allowed UV area of [%s] and [%s] for asset type %s",
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
				"Opague pixels in ColorMap for %s were found within a restricted UV area of [%s] and [%s] for asset type %s",
				instance.Name,
				tostring(bounds.MinBound),
				tostring(bounds.MaxBound),
				assetTypeEnum.Name
			),
		}
end

local function validateTextureWithBounds(
	instance: Decal,
	editableImage: EditableImage,
	imageMin: Vector2,
	imageMax: Vector2,
	bounds: any,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local pixels = editableImage:ReadPixelsBuffer(Vector2.new(0, 0), editableImage.Size)
	local col = 0
	local row = editableImage.Size.Y - 1
	for i = 0, buffer.len(pixels) - 1, 4 do
		if col == editableImage.Size.X then
			col = 0
			row = row - 1
		end

		local a = buffer.readu8(pixels, i + 3)
		if bounds.isIncludeBound then
			if col < imageMin.X or row < imageMin.Y or col > imageMax.X or row > imageMax.Y then
				if a > 0 then
					return createIncludeError(instance, bounds, validationContext)
				end
			end
		else
			if col > imageMin.X and row > imageMin.Y and col < imageMax.X and row < imageMax.Y then
				if a > 0 then
					return createExcludeError(instance, bounds, validationContext)
				end
			end
		end
		col = col + 1
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

		reasonsAccumulator:updateReasons(
			validateTextureWithBounds(instance, editableImage, imageMin, imageMax, bounds, validationContext)
		)
	end

	return reasonsAccumulator:getFinalResults()
end

return validateMakeupDecalUVZones
