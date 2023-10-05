--!strict

--[[
	validateCageUVs.lua checks that WrapTarget cage meshes have the correct number of unique UVs
]]

local root = script.Parent.Parent

local Analytics = require(root.Analytics)
local Constants = require(root.Constants)

local getEngineFeatureEngineUGCValidateBodyParts = require(root.flags.getEngineFeatureEngineUGCValidateBodyParts)
local getEngineFeatureEngineUGCValidateCalculateUniqueUV =
	require(root.flags.getEngineFeatureEngineUGCValidateCalculateUniqueUV)
local getFIntUniqueUVTolerance = require(root.flags.getFIntUniqueUVTolerance)

local UGCValidationService = game:GetService("UGCValidationService")

local function validateCageUVs(
	contentId: string,
	wrapTarget: WrapTarget,
	fieldName: string,
	isServer: boolean?
): (boolean, { string }?)
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
		testExecutedSuccessfully, testPassed = pcall(function()
			uniqueUVCount = UGCValidationService:CalculateUniqueUVCount(contentId)
			return math.abs(uniqueUVCount - requiredUVCount) <= getFIntUniqueUVTolerance()
		end)
	else
		testExecutedSuccessfully, testPassed = pcall(function()
			for tolIter = 0, getFIntUniqueUVTolerance() do
				if UGCValidationService:ValidateUniqueUVCount(contentId, requiredUVCount + tolIter) then
					return true
				end

				if 0 == tolIter or (requiredUVCount - tolIter) < 0 then
					continue
				end

				if UGCValidationService:ValidateUniqueUVCount(contentId, requiredUVCount - tolIter) then
					return true
				end
			end
			return false
		end)
	end

	if not testExecutedSuccessfully then
		local errorMsg =
			string.format("Failed to read mesh %s.%s ( %s )", wrapTarget:GetFullName(), fieldName, contentId)
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
		if getEngineFeatureEngineUGCValidateCalculateUniqueUV() then
			return false,
				{
					string.format(
						"%s.%s ( %s ) should have %d unique UVs, but has %d",
						wrapTarget:GetFullName(),
						fieldName,
						contentId,
						requiredUVCount,
						uniqueUVCount
					),
				}
		else
			return false,
				{
					string.format(
						"%s.%s ( %s ) should have %d unique UVs",
						wrapTarget:GetFullName(),
						fieldName,
						contentId,
						requiredUVCount
					),
				}
		end
	end
	return true
end

return validateCageUVs
