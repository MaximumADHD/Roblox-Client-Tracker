--!strict

local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent

local getEngineFeatureEngineUGCValidateBodyParts = require(root.flags.getEngineFeatureEngineUGCValidateBodyParts)

local function validateDynamicHeadData(meshPartHead: MeshPart, isServer: boolean?): (boolean, { string }?)
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
		return false, { errorMessage }
	end

	if not testsPassed then
		return false,
			{
				`{meshPartHead.Name}.MeshId ({meshPartHead.MeshId}) is not correctly set-up to be a dynamic head mesh as it has no FACS information`,
			}
	end
	return true
end

return validateDynamicHeadData
