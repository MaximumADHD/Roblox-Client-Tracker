--!strict
--[[
	Validates that the Decal has a valid Texture that <= a maximum texture size.
]]
local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent

local Analytics = require(root.Analytics)
local Constants = require(root.Constants)
local ReferenceUVValues = require(root.WrapTargetCageUVReferenceValues)

local Types = require(root.util.Types)
local pcallDeferred = require(root.util.pcallDeferred)
local getEditableMeshFromContext = require(root.util.getEditableMeshFromContext)

local function validateReferenceCageMeshContent(
	wrapTextureTransfer: WrapTextureTransfer,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local referenceCageContent = (wrapTextureTransfer :: WrapTextureTransfer).ReferenceCageMeshContent
	local hasReferenceCage = referenceCageContent.Uri ~= nil and referenceCageContent.Uri ~= ""
	local getReferenceCageSuccess, editableMesh =
		getEditableMeshFromContext(wrapTextureTransfer, "ReferenceCageMeshContent", validationContext)
	if not getReferenceCageSuccess then
		local errorMsg
		if not hasReferenceCage then
			Analytics.reportFailure(Analytics.ErrorType.validateWrapTextureTransfer_NoCage, nil, validationContext)
			errorMsg = string.format("No ReferenceCageContent provided for %s", wrapTextureTransfer:GetFullName())
		else
			Analytics.reportFailure(
				Analytics.ErrorType.validateWrapTextureTransfer_FailedToLoadCage,
				nil,
				validationContext
			)
			errorMsg = string.format("Failed to load ReferenceCageContent for %s", wrapTextureTransfer:GetFullName())
		end
		return false, { errorMsg }
	end

	local success, result = pcallDeferred(function()
		return UGCValidationService:ValidateEditableMeshUVValuesInReference(
			ReferenceUVValues.Head,
			editableMesh :: EditableMesh
		)
	end, validationContext)

	if not success then
		local errorMsg = string.format(
			"Failed to load UVs for '%s'. Make sure the UV map exists and try again.",
			wrapTextureTransfer:GetFullName()
		)
		if validationContext.isServer then
			error(errorMsg)
		end

		Analytics.reportFailure(Analytics.ErrorType.validateWrapTextureTransfer_FailedToLoadUV, nil, validationContext)
		return false, { errorMsg }
	end

	if not result then
		Analytics.reportFailure(Analytics.ErrorType.validateWrapTextureTransfer_InvalidUV, nil, validationContext)
		return false,
			{
				string.format(
					"Found invalid UV value for cage of '%s'. You need to edit the UV map to fix this issue.",
					wrapTextureTransfer:GetFullName()
				),
			}
	end

	return true
end

local function validateWrapTextureTransfer(
	instance: Decal,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local startTime = tick()

	local makeupInfo = Constants.MAKEUP_INFO

	local wrapTextureTransfer = instance:FindFirstChildOfClass("WrapTextureTransfer")
	assert(wrapTextureTransfer ~= nil, string.format("WrapTextureTransfer child not found for %s", instance.Name))

	do
		local success, reasons = validateReferenceCageMeshContent(wrapTextureTransfer, validationContext)
		if not success then
			return false, reasons
		end
	end

	if not wrapTextureTransfer.UVMinBound:FuzzyEq(makeupInfo.WrapTextureTransferUVBounds.MinBound) then
		Analytics.reportFailure(Analytics.ErrorType.validateWrapTextureTransfer_InvalidMinBound, nil, validationContext)
		return false,
			{
				string.format(
					"%s.UVMinBound [%s] does not match required UVMinBound of [%s]",
					wrapTextureTransfer:GetFullName(),
					tostring(wrapTextureTransfer.UVMinBound),
					tostring(makeupInfo.WrapTextureTransferUVBounds.MinBound)
				),
			}
	end

	if not wrapTextureTransfer.UVMaxBound:FuzzyEq(makeupInfo.WrapTextureTransferUVBounds.MaxBound) then
		Analytics.reportFailure(Analytics.ErrorType.validateWrapTextureTransfer_InvalidMaxBound, nil, validationContext)
		return false,
			{
				string.format(
					"%s.UVMaxBound [%s] does not match required UVMaxBound of [%s]",
					wrapTextureTransfer:GetFullName(),
					tostring(wrapTextureTransfer.UVMaxBound),
					tostring(makeupInfo.WrapTextureTransferUVBounds.MaxBound)
				),
			}
	end

	Analytics.recordScriptTime(script.Name, startTime, validationContext)
	return true
end

return validateWrapTextureTransfer
