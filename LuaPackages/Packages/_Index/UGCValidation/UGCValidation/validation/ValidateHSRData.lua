--[[
	ValidateHSRData.lua checks the HSR asset referenced by a WrapLayer instance is set-up correctly, including:
		- The HSRAssetId is a valid asset URL
		- The asset can be downloaded
		- The asset contains exactly one root Instance, which is a HiddenSurfaceRemovalAsset
		- The HiddenSurfaceRemovalAsset has no children
		- The HiddenSurfaceRemovalAsset has no tags or attributes
		- The HiddenSurfaceRemovalAsset has sensible property values (no NaNs, Infs, or long strings)
]]

local root = script.Parent.Parent

local Analytics = require(root.Analytics)

local validation = root.validation
local validateTags = require(validation.validateTags)
local validateAttributes = require(validation.validateAttributes)
local ValidatePropertiesSensible = require(validation.ValidatePropertiesSensible)

local util = root.util
local Types = require(util.Types)
local FailureReasonsAccumulator = require(util.FailureReasonsAccumulator)
local ParseContentIds = require(util.ParseContentIds)

local ValidateHSRData = {}

function ValidateHSRData.validateHiddenSurfaceRemovalAsset(
	HSRAssets: { Instance },
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	if #HSRAssets ~= 1 then
		Analytics.reportFailure(Analytics.ErrorType.validateHSR_FileDataInvalid, nil, validationContext)
		return false, { `WrapLayer HSR asset does not have exactly 1 root` }
	end

	local hiddenSurfaceRemovalAsset = HSRAssets[1]
	if not hiddenSurfaceRemovalAsset:IsA("HiddenSurfaceRemovalAsset") then
		Analytics.reportFailure(Analytics.ErrorType.validateHSR_FileDataInvalid, nil, validationContext)
		return false, {
			`WrapLayer HSR asset does not have a HiddenSurfaceRemovalAsset as the root Instance`,
		}
	end

	local reasonsAccumulator = FailureReasonsAccumulator.new()
	reasonsAccumulator:updateReasons(#hiddenSurfaceRemovalAsset:GetDescendants() == 0, {
		`WrapLayer HSR asset has children under the HiddenSurfaceRemovalAsset root Instance`,
	})
	reasonsAccumulator:updateReasons(validateTags(hiddenSurfaceRemovalAsset, validationContext))
	reasonsAccumulator:updateReasons(validateAttributes(hiddenSurfaceRemovalAsset, validationContext))
	reasonsAccumulator:updateReasons(ValidatePropertiesSensible.validate(hiddenSurfaceRemovalAsset, validationContext))

	if not (reasonsAccumulator:getFinalResults()) then
		Analytics.reportFailure(Analytics.ErrorType.validateHSR_FileDataInvalid, nil, validationContext)
	end
	return reasonsAccumulator:getFinalResults()
end

function ValidateHSRData.validateInstance(
	inst: Instance,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	if not inst:IsA("WrapLayer") then
		return true
	end
	local isServer = if validationContext.isServer then true else false

	local wrapLayer = inst :: WrapLayer
	local HSRAssetId = (wrapLayer :: any).HSRAssetId

	if (not HSRAssetId) or HSRAssetId == "" then -- url is missing
		local isURLRequired = isServer -- on server, HSRAssetID is required, Studio/in-experience it is optional
		if isURLRequired then
			Analytics.reportFailure(Analytics.ErrorType.validateHSR_FileDataInvalid, nil, validationContext)
			return false, { "WrapLayer HSRAssetId is required" }
		end
		return true -- url is missing, but it's optional so it's valid
	end

	if not ParseContentIds.tryGetAssetIdFromContentId(HSRAssetId) then
		Analytics.reportFailure(Analytics.ErrorType.validateHSR_FileDataInvalid, nil, validationContext)
		return false, { "WrapLayer HSRAssetId contains an invalid url" }
	end

	local success, HSRAssets = pcall(function()
		return game:GetObjectsAllOrNone(HSRAssetId)
	end)

	if not success then
		local msg = `Failed to load WrapLayer HSR asset`
		if isServer then
			-- there could be many reasons that an error occurred, the asset is not necessarilly incorrect, we just didn't get as
			-- far as testing it, so we throw an error which means the RCC will try testing the asset again, rather than returning false
			-- which would mean the asset failed validation
			error(msg)
		end
		Analytics.reportFailure(Analytics.ErrorType.validateHSR_FileDataInvalid, nil, validationContext)
		return false, { msg }
	end

	return ValidateHSRData.validateHiddenSurfaceRemovalAsset(HSRAssets, validationContext)
end

function ValidateHSRData.validate(inst: Instance, validationContext: Types.ValidationContext): (boolean, { string }?)
	local startTime = tick()

	local reasonsAccumulator = FailureReasonsAccumulator.new()
	reasonsAccumulator:updateReasons(ValidateHSRData.validateInstance(inst, validationContext))

	Analytics.recordScriptTime(script.Name, startTime, validationContext)
	return reasonsAccumulator:getFinalResults()
end

return ValidateHSRData
