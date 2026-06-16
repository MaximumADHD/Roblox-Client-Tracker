--[[
	AccurateBoundingBoxRasterUtil re-exports the raster method bounding box validation
	logic for consumption by the folder-based system. The implementation lives in
	src/validation/validateAccurateBoundingBoxRasterMethod.lua but new modules in
	src/validationFolders/ cannot import from src/validation/ directly.

	Under the migration flag (getFFlagUGCValidateMigratePoseBlocking), the legacy call
	site in validateMeshPartBodyPart.lua is guarded, and this util's callers are the
	new BoundingBoxAccurate module. When the flag is cleaned up, the original
	src/validation/validateAccurateBoundingBoxRasterMethod.lua can be deleted and this
	file becomes the sole home of the logic.
]]

local root = script.Parent.Parent

-- DO NOT EDIT — superseded indirection for src/validation/validateAccurateBoundingBoxRasterMethod.lua
-- under getFFlagUGCValidateMigratePoseBlocking; this branch exists for rollback only.
local validateAccurateBoundingBoxRasterMethod = require(root.validation.validateAccurateBoundingBoxRasterMethod)

local AccurateBoundingBoxRasterUtil = {}

function AccurateBoundingBoxRasterUtil.getBoundsViewsForAssetType(assetType: Enum.AssetType): { [string]: boolean }?
	return validateAccurateBoundingBoxRasterMethod.getBoundsViewsForAssetType(assetType)
end

function AccurateBoundingBoxRasterUtil.validate(
	inst: Instance,
	bodyAssetMasksWrapper: any,
	validationContext: any
): (boolean, { string }?)
	return validateAccurateBoundingBoxRasterMethod.validate(inst, bodyAssetMasksWrapper, validationContext)
end

return AccurateBoundingBoxRasterUtil
