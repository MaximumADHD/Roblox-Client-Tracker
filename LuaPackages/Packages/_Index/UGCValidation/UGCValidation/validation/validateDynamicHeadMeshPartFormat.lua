--!strict

local root = script.Parent.Parent

local validateSingleInstance = require(root.validation.validateSingleInstance)
local validateMeshPartBodyPart = require(root.validation.validateMeshPartBodyPart)

local Types = require(root.util.Types)
local createDynamicHeadMeshPartSchema = require(root.util.createDynamicHeadMeshPartSchema)

local function validateDynamicHeadMeshPartFormat(
	allSelectedInstances: { Instance },
	isServer: boolean,
	allowUnreviewedAssets: boolean,
	restrictedUserIds: Types.RestrictedUserIds
): (boolean, { string }?)
	local result, failureReasons = validateSingleInstance(allSelectedInstances)
	if not result then
		return result, failureReasons
	end

	return validateMeshPartBodyPart(
		allSelectedInstances[1],
		createDynamicHeadMeshPartSchema(),
		Enum.AssetType.DynamicHead,
		isServer,
		allowUnreviewedAssets,
		restrictedUserIds
	)
end

return validateDynamicHeadMeshPartFormat
