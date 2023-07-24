--!strict
local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent

local getFFlagUGCValidateBodyParts = require(root.flags.getFFlagUGCValidateBodyParts)
local getFFlagAddValidateVertColorsAlphaUGCValidate = require(root.flags.getFFlagAddValidateVertColorsAlphaUGCValidate)

local floatEquals = require(root.util.floatEquals)
local valueToString = require(root.util.valueToString)

local function validateMeshVertexColors(
	meshId: string,
	checkTransparency: boolean,
	isServer: boolean?
): (boolean, { string }?)
	if not game:GetFastFlag("UGCReturnAllValidations") then
		-- we have checked meshId in validateLayeredClothingAccessory, this should be removed when UGCReturnAllValidations is on
		if meshId == "" then
			return false, { "Mesh must contain valid MeshId" }
		end
	end

	if
		(game:GetFastFlag("UGCLCQualityReplaceLua") or getFFlagUGCValidateBodyParts())
		and getFFlagAddValidateVertColorsAlphaUGCValidate()
	then
		local success, result = pcall(function()
			return UGCValidationService:ValidateMeshVertColors(meshId, checkTransparency) -- ValidateMeshVertColors() checks the color as well as the alpha transparency
		end)

		if not success then
			local message = "Failed to execute validateMeshVertexColors check"
			if nil ~= isServer and isServer then
				-- there could be many reasons that an error occurred, the asset is not necessarilly incorrect, we just didn't get as
				-- far as testing it, so we throw an error which means the RCC will try testing the asset again, rather than returning false
				-- which would mean the asset failed validation
				error(message)
			end
			return false, { message }
		end

		if not result then
			return false,
				{ `Your mesh ({meshId}) has non-neutral vertex color values, which violates UGC upload requirements.` }
		end
	else
		local success, vertColors = pcall(function()
			return UGCValidationService:GetMeshVertColors(meshId)
		end)

		if not success then
			return false, { "Failed to load mesh data" }
		end

		for _, color in ipairs(vertColors) do
			if not floatEquals(color.R, 1) or not floatEquals(color.G, 1) or not floatEquals(color.B, 1) then
				return false,
					{
						string.format(
							"Mesh cannot have non-neutral vertex colors. Found color: %s",
							valueToString(color)
						),
					}
			end
		end
	end

	return true
end

return validateMeshVertexColors
