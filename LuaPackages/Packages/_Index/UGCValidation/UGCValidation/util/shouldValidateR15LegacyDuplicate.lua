local root = script.Parent.Parent
local Constants = require(root.Constants)
local Types = require(root.util.Types)

-- Whether the current run should re-validate the R15Fixed "legacy duplicate" tree (the copy the backend
-- deserializes). Only folder-structured body-part uploads carry one: single body-part assets (Torso, arms,
-- legs) and body-part bundles, and only when folder-structure enforcement is on. Other uploads (accessories,
-- dynamic heads, shoe/animation bundles) have no R15Fixed copy, so the duplicate pass is skipped for them
-- rather than run against a tree that does not exist. Callers still gate on the engine feature separately.
local function shouldValidateR15LegacyDuplicate(data: Types.SharedData): boolean
	if not data or not data.consumerConfig or not data.consumerConfig.enforceR15FolderStructure then
		return false
	end

	local uploadEnum = data.uploadEnum
	if uploadEnum.bundleType == Enum.BundleType.BodyParts then
		return true
	end

	local assetType = uploadEnum.assetType
	return assetType ~= nil and Constants.AssetUploadsWithFolderStructure[assetType] == true
end

return shouldValidateR15LegacyDuplicate
