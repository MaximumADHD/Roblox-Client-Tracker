--!strict

--[[
	validateDescendantTextureMetrics.lua checks all textures referenced in the asset hierarchy have the correct specifications
]]

local root = script.Parent.Parent

local Types = require(root.util.Types)
local Constants = require(root.Constants)

local validateTextureSize = require(root.validation.validateTextureSize)

local FailureReasonsAccumulator = require(root.util.FailureReasonsAccumulator)
local ParseContentIds = require(root.util.ParseContentIds)
local getEditableImageFromContext = require(root.util.getEditableImageFromContext)

local getFFlagUseUGCValidationContext = require(root.flags.getFFlagUseUGCValidationContext)

local function validateDescendantTextureMetrics(
	rootInstance: Instance,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local reasonsAccumulator = FailureReasonsAccumulator.new()

	local allTextures = ParseContentIds.parse(rootInstance, Constants.TEXTURE_CONTENT_ID_FIELDS, validationContext)

	local sizeAlreadyTested = {}
	for _, data in allTextures do
		local getEditableImageSuccess, editableImage =
			getEditableImageFromContext(data.instance, data.fieldName, validationContext)
		if not getEditableImageSuccess then
			return false, { "Failed to load texture data" }
		end
		if not sizeAlreadyTested[data.id] then
			reasonsAccumulator:updateReasons(validateTextureSize(editableImage, nil, validationContext))
			if data.id then
				sizeAlreadyTested[data.id] = true
			end
		end
	end

	return reasonsAccumulator:getFinalResults()
end

local function DEPRECATED_validateDescendantTextureMetrics(
	rootInstance: Instance,
	isServer: boolean?
): (boolean, { string }?)
	local reasonsAccumulator = FailureReasonsAccumulator.new()

	local allTextures = ParseContentIds.parse(rootInstance, Constants.TEXTURE_CONTENT_ID_FIELDS)

	local sizeAlreadyTested = {}
	for _, data in allTextures do
		if not sizeAlreadyTested[data.id] then
			reasonsAccumulator:updateReasons(validateTextureSize(data.instance[data.fieldName], nil, isServer))
			sizeAlreadyTested[data.id] = true
		end
	end

	return reasonsAccumulator:getFinalResults()
end

if getFFlagUseUGCValidationContext() then
	return validateDescendantTextureMetrics :: any
else
	return DEPRECATED_validateDescendantTextureMetrics :: any
end
