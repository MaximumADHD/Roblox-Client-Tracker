--[[
	check that each SurfaceAppearance's TexturePack has the same textures as the SurfaceAppearance itself
]]

local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent

local Analytics = require(root.Analytics)

local util = root.util
local Types = require(util.Types)
local TexturePackUtils = require(util.TexturePackUtils)
local FailureReasonsAccumulator = require(util.FailureReasonsAccumulator)

local getFFlagUGCValidateTexturePack = require(root.flags.getFFlagUGCValidateTexturePack)
local getFFlagUGCValidateTexturePackOnRCCOnly = require(root.flags.getFFlagUGCValidateTexturePackOnRCCOnly)

local ValidateTexturePack = {}

local function validateTexturePackURL(
	instance: Instance,
	allowEmpty: boolean,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local reasonsAccumulator = FailureReasonsAccumulator.new()

	local surfaceAppearancesMissingTexturePacks =
		TexturePackUtils.findSurfaceAppearancesMissingTexturePacks(instance, allowEmpty)
	for _, surfaceAppearance in surfaceAppearancesMissingTexturePacks do
		reasonsAccumulator:updateReasons(false, {
			`'{surfaceAppearance:GetFullName()}' has a 'TexturePack' property with an invalid URL. Please fix the URL.`,
		})
	end
	if #surfaceAppearancesMissingTexturePacks > 0 then
		Analytics.reportFailure(Analytics.ErrorType.validateTexturePack_InvalidTexturePackURL, nil, validationContext)
	end
	return reasonsAccumulator:getFinalResults()
end

local function validateSurfaceAppearanceTexturePackMatch(
	instance: Instance,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local reasonsAccumulator = FailureReasonsAccumulator.new()
	local reportErrors = false
	local reportFailures = false
	for _, surfaceAppearance in TexturePackUtils.findSurfaceAppearancesWithTexturePacks(instance) do
		local didDownloadOk, testsPassed = pcall(function()
			return (UGCValidationService :: any):DoesSurfaceAppearanceMatchTexturePackAsync(surfaceAppearance)
		end)

		if not didDownloadOk then
			local errorMessage =
				`Failed to download TexturePack for SurfaceAppearance '{surfaceAppearance:GetFullName()}'.`
			if validationContext.isServer then
				error(errorMessage)
			end
			reportFailures = true
			reasonsAccumulator:updateReasons(false, { errorMessage })
			continue
		end
		reasonsAccumulator:updateReasons(testsPassed, {
			`The textures in SurfaceAppearance '{surfaceAppearance:GetFullName()}' do not match those in its TexturePack. Please fix the TexturePack`,
		})
		reportErrors = if reportErrors then reportErrors else not testsPassed
	end

	if reportFailures then
		Analytics.reportFailure(
			Analytics.ErrorType.validateTexturePack_FailedToDownloadTexturePack,
			nil,
			validationContext
		)
	end
	if reportErrors then
		Analytics.reportFailure(Analytics.ErrorType.validateTexturePack_TexturePackMismatch, nil, validationContext)
	end
	return reasonsAccumulator:getFinalResults()
end

function ValidateTexturePack.validate(
	instance: Instance,
	allowEmpty: boolean,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	if not getFFlagUGCValidateTexturePack() then
		return true
	end

	local isServer
	if getFFlagUGCValidateTexturePackOnRCCOnly() then
		isServer = if validationContext.isServer then true else false
	end

	local isInExperience = validationContext.allowEditableInstances
	if isInExperience then
		return true
	end

	local startTime = tick()
	local reasonsAccumulator = FailureReasonsAccumulator.new()

	if getFFlagUGCValidateTexturePackOnRCCOnly() then
		if isServer then
			reasonsAccumulator:updateReasons(validateTexturePackURL(instance, allowEmpty, validationContext))
		end
	else
		reasonsAccumulator:updateReasons(validateTexturePackURL(instance, allowEmpty, validationContext))
	end
	reasonsAccumulator:updateReasons(validateSurfaceAppearanceTexturePackMatch(instance, validationContext))

	Analytics.recordScriptTime(script.Name, startTime, validationContext)
	return reasonsAccumulator:getFinalResults()
end

return ValidateTexturePack
