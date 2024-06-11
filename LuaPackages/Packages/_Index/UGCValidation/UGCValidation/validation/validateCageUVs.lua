--!strict

--[[
	validateCageUVs.lua checks that WrapTarget cage meshes have the correct number of unique UVs
]]

local root = script.Parent.Parent

local Types = require(root.util.Types)
local pcallDeferred = require(root.util.pcallDeferred)
local getFFlagUGCValidationShouldYield = require(root.flags.getFFlagUGCValidationShouldYield)

local Analytics = require(root.Analytics)
local Constants = require(root.Constants)

local getEngineFeatureEngineUGCValidateBodyParts = require(root.flags.getEngineFeatureEngineUGCValidateBodyParts)
local getEngineFeatureEngineUGCValidateCalculateUniqueUV =
	require(root.flags.getEngineFeatureEngineUGCValidateCalculateUniqueUV)
local getFIntUniqueUVTolerance = require(root.flags.getFIntUniqueUVTolerance)
local getEngineFeatureUGCValidateEditableMeshAndImage =
	require(root.flags.getEngineFeatureUGCValidateEditableMeshAndImage)

local UGCValidationService = game:GetService("UGCValidationService")

local function validateCageUVs(
	meshInfo: Types.MeshInfo,
	wrapTarget: WrapTarget,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local startTime = tick()

	local isServer = validationContext.isServer
	if not getEngineFeatureEngineUGCValidateBodyParts() then
		return true
	end

	local requiredUVCount = assert(
		Constants.WRAP_TARGET_CAGE_MESH_UV_COUNTS[(wrapTarget.Parent :: Instance).Name],
		"WrapTarget is not parented to a MeshPart"
	)

	local testExecutedSuccessfully
	local testPassed
	local uniqueUVCount
	if getEngineFeatureEngineUGCValidateCalculateUniqueUV() then
		if getEngineFeatureUGCValidateEditableMeshAndImage() and getFFlagUGCValidationShouldYield() then
			testExecutedSuccessfully, testPassed = pcallDeferred(function()
				uniqueUVCount =
					UGCValidationService:CalculateEditableMeshUniqueUVCount(meshInfo.editableMesh :: EditableMesh)
				return math.abs(uniqueUVCount - requiredUVCount) <= getFIntUniqueUVTolerance()
			end, validationContext)
		else
			testExecutedSuccessfully, testPassed = pcall(function()
				uniqueUVCount = UGCValidationService:CalculateUniqueUVCount(meshInfo.contentId :: string)
				return math.abs(uniqueUVCount - requiredUVCount) <= getFIntUniqueUVTolerance()
			end)
		end
	else
		if getEngineFeatureUGCValidateEditableMeshAndImage() and getFFlagUGCValidationShouldYield() then
			testExecutedSuccessfully, testPassed = pcallDeferred(function()
				for tolIter = 0, getFIntUniqueUVTolerance() do
					if
						UGCValidationService:ValidateEditableMeshUniqueUVCount(
							meshInfo.editableMesh :: EditableMesh,
							requiredUVCount + tolIter
						)
					then
						return true
					end

					if 0 == tolIter or (requiredUVCount - tolIter) < 0 then
						continue
					end

					if
						UGCValidationService:ValidateEditableMeshUniqueUVCount(
							meshInfo.editableMesh :: EditableMesh,
							requiredUVCount - tolIter
						)
					then
						return true
					end
				end
				return false
			end, validationContext)
		else
			testExecutedSuccessfully, testPassed = pcall(function()
				for tolIter = 0, getFIntUniqueUVTolerance() do
					if
						UGCValidationService:ValidateUniqueUVCount(
							meshInfo.contentId :: string,
							requiredUVCount + tolIter
						)
					then
						return true
					end

					if 0 == tolIter or (requiredUVCount - tolIter) < 0 then
						continue
					end

					if
						UGCValidationService:ValidateUniqueUVCount(
							meshInfo.contentId :: string,
							requiredUVCount - tolIter
						)
					then
						return true
					end
				end
				return false
			end)
		end
	end

	if not testExecutedSuccessfully then
		local errorMsg = string.format(
			"Failed to execute UV check for '%s'. Make sure the UV map exists and try again.",
			wrapTarget:GetFullName()
		)
		if isServer then
			-- there could be many reasons that an error occurred, the asset is not necessarilly incorrect, we just didn't get as
			-- far as testing it, so we throw an error which means the RCC will try testing the asset again, rather than returning false
			-- which would mean the asset failed validation
			error(errorMsg)
		end
		Analytics.reportFailure(Analytics.ErrorType.validateCageUVs_TestExecutedSuccessfully)
		return false, { errorMsg }
	end

	if not testPassed then
		Analytics.reportFailure(Analytics.ErrorType.validateCageUVs_TestPassed)
		return false,
			{
				string.format(
					"%s.%s ( %s ) should have %d unique UVs, but has %d. Please make sure the mesh has the required number of unique UVs and try again.",
					wrapTarget:GetFullName(),
					meshInfo.fieldName,
					if meshInfo.contentId then meshInfo.contentId else "",
					requiredUVCount,
					uniqueUVCount
				),
			}
	end

	Analytics.recordScriptTime(script.Name, startTime, validationContext)
	return true
end

return validateCageUVs
