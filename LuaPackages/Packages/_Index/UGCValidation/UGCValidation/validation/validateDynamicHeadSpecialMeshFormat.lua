--!strict

local root = script.Parent.Parent

local validateSingleInstance = require(root.validation.validateSingleInstance)

local validateWithSchema = require(root.util.validateWithSchema)

local createDynamicHeadSpecialMeshSchema = require(root.util.createDynamicHeadSpecialMeshSchema)

local function validateDynamicHeadSpecialMeshFormat(
	allSelectedInstances: { Instance },
	assetTypeEnum: Enum.AssetType,
	isServer: boolean,
	allowUnreviewedAssets: boolean
): (boolean, { string }?)
	local result, failureReasons = validateSingleInstance(allSelectedInstances)
	if not result then
		return result, failureReasons
	end

	local inst = allSelectedInstances[1]
	local headBodyPartSchema = createDynamicHeadSpecialMeshSchema()
	local validationResult = validateWithSchema(headBodyPartSchema, inst)
	if not validationResult.success then
		return false, { validationResult.message }
	end
	return true
end

return validateDynamicHeadSpecialMeshFormat
