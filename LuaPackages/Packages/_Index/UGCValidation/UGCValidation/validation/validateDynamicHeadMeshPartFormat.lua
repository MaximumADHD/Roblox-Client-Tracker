--!strict

local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent

local getEngineFeatureEngineUGCValidateBodyParts = require(root.flags.getEngineFeatureEngineUGCValidateBodyParts)
local getFFlagUGCValidateMoveDynamicHeadTest = require(root.flags.getFFlagUGCValidateMoveDynamicHeadTest)

local Analytics = require(root.Analytics)

local validateSingleInstance = require(root.validation.validateSingleInstance)
local validateMeshPartBodyPart = require(root.validation.validateMeshPartBodyPart)
local validateDynamicHeadData = require(root.validation.validateDynamicHeadData)

local Types = require(root.util.Types)
local createDynamicHeadMeshPartSchema = require(root.util.createDynamicHeadMeshPartSchema)

-- remove this function when FFlagUGCValidateMoveDynamicHeadTest is removed true
local function validateDynamicHeadMesh(meshPartHead: MeshPart, isServer: boolean?): (boolean, { string }?)
	if getFFlagUGCValidateMoveDynamicHeadTest() then
		assert(false, "Should never get here")
	end

	if not getEngineFeatureEngineUGCValidateBodyParts() then
		return true
	end

	local retrievedMeshData, testsPassed = pcall(function()
		return UGCValidationService:ValidateDynamicHeadMesh(meshPartHead.MeshId)
	end)

	if not retrievedMeshData then
		local errorMessage = "Failed to retrieve mesh data to validate dynamic head"
		if isServer then
			-- ValidateDynamicHead() failed retriving mesh data, meaning the tests on the mesh couldn't proceed, therefore we throw an error here,
			-- which means that the validation of this asset will be run again, rather than returning false. This is because we can't conclusively
			-- say it failed. It's inconclusive as we couldn't even get the mesh data for unknown reason. This throwing of an error should only
			-- happen when validation is called from RCC
			error(errorMessage)
		end
		Analytics.reportFailure(Analytics.ErrorType.validateDynamicHeadMeshPartFormat_FailedToLoadMesh)
		return false, { errorMessage }
	end

	if not testsPassed then
		Analytics.reportFailure(Analytics.ErrorType.validateDynamicHeadMeshPartFormat_ValidateDynamicHeadMesh)
		return false,
			{
				`{meshPartHead.Name}.MeshId ({meshPartHead.MeshId}) is not correctly set-up to be a dynamic head mesh as it has no FACS information`,
			}
	end
	return true
end

local function validateDynamicHeadMeshPartFormat(
	allSelectedInstances: { Instance },
	isServer: boolean?,
	allowUnreviewedAssets: boolean?,
	restrictedUserIds: Types.RestrictedUserIds?
): (boolean, { string }?)
	local result, failureReasons = validateSingleInstance(allSelectedInstances)
	if not result then
		return result, failureReasons
	end

	local inst = allSelectedInstances[1]
	result, failureReasons = validateMeshPartBodyPart(
		inst,
		createDynamicHeadMeshPartSchema(),
		Enum.AssetType.DynamicHead,
		isServer,
		allowUnreviewedAssets,
		restrictedUserIds
	)
	-- return if failure at this point, as the above function could've found whole Instances or meshes to be missing
	-- carrying on would mean later functions called could not assume all Instances and meshes/textures are present
	if not result then
		return false, failureReasons
	end

	if getFFlagUGCValidateMoveDynamicHeadTest() then
		return validateDynamicHeadData(inst :: MeshPart, isServer)
	else
		return validateDynamicHeadMesh(inst :: MeshPart, isServer)
	end
end

return validateDynamicHeadMeshPartFormat
