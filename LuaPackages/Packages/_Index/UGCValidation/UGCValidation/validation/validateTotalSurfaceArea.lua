--!strict

--[[
	validateTotalSurfaceArea.lua calculates the total surface area of a mesh and compares it to the maximum allowed surface area.
]]

local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent

local getEngineFeatureUGCValidateEditableMeshAndImage =
	require(root.flags.getEngineFeatureUGCValidateEditableMeshAndImage)

local getEngineFeatureEngineUGCValidateTotalSurfaceAreaTest =
	require(root.flags.getEngineFeatureEngineUGCValidateTotalSurfaceAreaTest)

local getFIntMaxTotalSurfaceArea = require(root.flags.getFIntMaxTotalSurfaceArea)

local getFFlagUGCValidateFixTotalSurfaceAreaTestErrorString =
	require(root.flags.getFFlagUGCValidateFixTotalSurfaceAreaTestErrorString)

local Types = require(root.util.Types)
local pcallDeferred = require(root.util.pcallDeferred)
local getFFlagUGCValidationShouldYield = require(root.flags.getFFlagUGCValidationShouldYield)

local Analytics = require(root.Analytics)

local function validateTotalSurfaceArea(
	meshInfo: Types.MeshInfo,
	meshScale: Vector3,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	if not getEngineFeatureEngineUGCValidateTotalSurfaceAreaTest() then
		return true
	end

	local startTime = tick()

	local isServer = validationContext.isServer

	local success, result
	if getEngineFeatureUGCValidateEditableMeshAndImage() and getFFlagUGCValidationShouldYield() then
		success, result = pcallDeferred(function()
			return (UGCValidationService :: any):CalculateEditableMeshTotalSurfaceArea(meshInfo.editableMesh, meshScale)
		end, validationContext)
	else
		success, result = pcall(function()
			return (UGCValidationService :: any):CalculateTotalSurfaceArea(meshInfo.contentId, meshScale)
		end)
	end

	if not success then
		local errorString = string.format(
			"Failed to execute max total surface area check for '%s'. Make sure mesh exists and try again.",
			meshInfo.fullName
		)
		if nil ~= isServer and isServer then
			-- there could be many reasons that an error occurred, the asset is not necessarilly incorrect, we just didn't get as
			-- far as testing it, so we throw an error which means the RCC will try testing the asset again, rather than returning false
			-- which would mean the asset failed validation
			error(errorString)
		end
		Analytics.reportFailure(Analytics.ErrorType.validateTotalSurfaceArea_FailedToExecute)
		return false, { errorString }
	end

	if result > getFIntMaxTotalSurfaceArea() then
		Analytics.reportFailure(Analytics.ErrorType.validateTotalSurfaceArea_maxTotalSurfaceAreaExceeded)
		return false,
			{
				if getFFlagUGCValidateFixTotalSurfaceAreaTestErrorString()
					then string.format(
						"The total surface area of model mesh '%s' is %.2f, it cannot be greater than %d. You must reduce the number and/or size of all triangles.",
						meshInfo.fullName,
						result,
						getFIntMaxTotalSurfaceArea()
					)
					else string.format(
						"The total surface area of model mesh '%s' is greater than %d. You must reduce the number and/or size of all triangles.",
						meshInfo.fullName,
						getFIntMaxTotalSurfaceArea()
					),
			}
	end

	Analytics.recordScriptTime(script.Name, startTime, validationContext)
	return true
end

return validateTotalSurfaceArea
