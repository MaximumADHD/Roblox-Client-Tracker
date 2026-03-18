--[[
	test to make sure that the average distance between outer cage to render mesh is below threshold
]]

local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent

local Analytics = require(root.Analytics)

local Types = require(root.util.Types)
local pcallDeferred = require(root.util.pcallDeferred)

local getFIntUGCValidateCageMeshDistanceThreshold = require(root.flags.getFIntUGCValidateCageMeshDistanceThreshold)

local function validateCageMeshDistance(
	innerCageMeshInfo: Types.MeshInfo,
	outerCageMeshInfo: Types.MeshInfo,
	meshInfo: Types.MeshInfo,
	innerCFrame: CFrame,
	outerCFrame: CFrame,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local success, averageOuterCageToMeshDistance = pcallDeferred(function()
		return (UGCValidationService :: any):CalculateAverageEditableCageMeshDistance(
			innerCageMeshInfo.editableMesh,
			outerCageMeshInfo.editableMesh,
			meshInfo.editableMesh,
			innerCFrame,
			outerCFrame
		)
	end, validationContext)

	if not success then
		Analytics.reportFailure(Analytics.ErrorType.validateCageMeshDistance_FailedToExecute, nil, validationContext)
		return false,
			{
				string.format(
					"Failed to execute cage mesh distance validation for '%s'. Make sure the cage mesh exists and try again.",
					meshInfo.fullName
				),
			}
	end

	local reasons = {}
	local result = true
	if
		averageOuterCageToMeshDistance * 100 > getFIntUGCValidateCageMeshDistanceThreshold()
		or averageOuterCageToMeshDistance < 0
	then
		result = false
		Analytics.reportFailure(
			Analytics.ErrorType.validateCageMeshDistance_OuterCageToMeshDistance,
			nil,
			validationContext
		)
		if averageOuterCageToMeshDistance < 0 then
			local errorString =
				"Average distance between outer cage to mesh is too high. Mesh seems to be outside of the outer cage."
			errorString = errorString
				.. "[Read more](https://create.roblox.com/docs/art/validation-errors#cageMeshDistance)"

			table.insert(reasons, errorString)
		else
			local errorString = string.format(
				"Average distance between outer cage to mesh is too high (%.2f). Make adjustment to cage to fit the mesh better.",
				averageOuterCageToMeshDistance
			)
			errorString = errorString
				.. "[Read more](https://create.roblox.com/docs/art/validation-errors#cageMeshDistance)"

			table.insert(reasons, errorString)
		end
	end

	return result, reasons
end

return validateCageMeshDistance
