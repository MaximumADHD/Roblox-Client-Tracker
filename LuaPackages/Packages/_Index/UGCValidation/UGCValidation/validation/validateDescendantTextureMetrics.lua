--!strict

--[[
	validateDescendantTextureMetrics.lua checks all textures referenced in the asset hierarchy have the correct specifications
]]

local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent

local Constants = require(root.Constants)

local validateTextureSize = require(root.validation.validateTextureSize)

local FailureReasonsAccumulator = require(root.util.FailureReasonsAccumulator)
local ParseContentIds = require(root.util.ParseContentIds)

local getEngineFeatureEngineUGCValidateBodyParts = require(root.flags.getEngineFeatureEngineUGCValidateBodyParts)

local function validateTextureChannels(textureAssetId: string, data: any, isServer: boolean): (boolean, { string }?)
	local numChannelsRequired = assert(
		Constants.TEXTURE_CHANNELS[data.instance.ClassName][data.fieldName],
		"A texture property has not specified number of channels required"
	)

	local success, passedCheck = pcall(function()
		return UGCValidationService:ValidateNumTextureChannels(data.instance[data.fieldName], numChannelsRequired)
	end)

	if not success then
		local errorMsg = string.format(
			"Failed to load texture image data for %s.%s (%s)",
			data.instance:GetFullName(),
			data.fieldName,
			textureAssetId
		)
		if isServer then
			--  not successfully getting results could happen for many reasons, so we throw an error which means the RCC will try again
			error(errorMsg)
		end
		return false, { errorMsg }
	elseif not passedCheck then
		return false,
			{
				string.format(
					"%s.%s ( %s ) has incorrect bit depth (%d is required for %s)",
					data.instance:GetFullName(),
					data.fieldName,
					textureAssetId,
					numChannelsRequired * 8,
					data.fieldName
				),
			}
	end
	return true
end

local function validateDescendantTextureMetrics(rootInstance: Instance, isServer: boolean): (boolean, { string }?)
	local reasonsAccumulator = FailureReasonsAccumulator.new()

	local texturesMap = ParseContentIds.parse(rootInstance, Constants.TEXTURE_CONTENT_ID_FIELDS)

	for textureAssetId, data in pairs(texturesMap) do
		if not reasonsAccumulator:updateReasons(validateTextureSize(data.instance[data.fieldName], nil, isServer)) then
			return reasonsAccumulator:getFinalResults()
		end

		if getEngineFeatureEngineUGCValidateBodyParts() then
			if not reasonsAccumulator:updateReasons(validateTextureChannels(textureAssetId, data, isServer)) then
				return reasonsAccumulator:getFinalResults()
			end
		end
	end

	return reasonsAccumulator:getFinalResults()
end

return validateDescendantTextureMetrics
