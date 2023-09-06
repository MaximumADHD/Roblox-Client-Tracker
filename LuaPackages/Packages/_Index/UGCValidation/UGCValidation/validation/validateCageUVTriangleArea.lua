--!nonstrict

local root = script.Parent.Parent

local getEngineFeatureEngineUGCValidateCageUVTriangleArea =
	require(root.flags.getEngineFeatureEngineUGCValidateCageUVTriangleArea)

local UGCValidationService = game:GetService("UGCValidationService")

local function validateCageUVTriangleArea(
	instance: Instance,
	fieldName: string,
	isServer: boolean
): (boolean, { string }?)
	local contentId = instance[fieldName]

	if getEngineFeatureEngineUGCValidateCageUVTriangleArea() then
		local success, result = pcall(function()
			return UGCValidationService:ValidateCageUVTriangleArea(contentId)
		end)

		if not success then
			if isServer then
				error("Failed to load mesh data")
			end
			return false, { "Failed to load mesh data" }
		end

		if not result then
			return false,
				{
					string.format(
						"%s.%s ( %s ) contained an invalid triangle which contained no area",
						instance:GetFullName(),
						fieldName,
						contentId
					),
				}
		end
	end

	return true
end

return validateCageUVTriangleArea
