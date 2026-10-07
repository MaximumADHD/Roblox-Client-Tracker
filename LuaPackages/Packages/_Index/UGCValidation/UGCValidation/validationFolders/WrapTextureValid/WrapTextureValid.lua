local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent.Parent

local Constants = require(root.Constants)
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)
local ReferenceUVValues = require(root.WrapTargetCageUVReferenceValues)
local createEditableInstancesForContext = require(root.util.createEditableInstancesForContext)

local getFFlagUGCValidationAllowFullVaas = require(root.flags.getFFlagUGCValidationAllowFullVaas)
local getFFlagUGCValidateTransitionMakeupBounds = require(root.flags.getFFlagUGCValidateTransitionMakeupBounds)

-- Server-side and IEC consumer routing. Read directly from `consumerConfig.source`
-- (always populated) so the RCC-retry and IEC pre-load paths work regardless of
-- consumer surface.
local SERVER_SOURCES = {
	Publish = true,
	Backend = true,
	Internal = true,
	InExpServer = true,
}
local IEC_SOURCES = {
	InExpServer = true,
	InExpClient = true,
}

local OLD_MIN_BOUND = Vector2.new(3.28941798, 0.313124001)
local OLD_MAX_BOUND = Vector2.new(3.71058202, 0.734287024)

local WrapTextureValid = {}

WrapTextureValid.categories = { ValidationEnums.UploadCategory.MAKEUP }

WrapTextureValid.requiredData = {
	ValidationEnums.SharedDataMember.rootInstance,
	ValidationEnums.SharedDataMember.consumerConfig,
}

WrapTextureValid.expectedFailures = {}

WrapTextureValid.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local instance = data.rootInstance
	local wrapTextureTransferOpt = instance:FindFirstChildOfClass("WrapTextureTransfer")
	if wrapTextureTransferOpt == nil then
		-- Structural impossibility: ExpectedRootSchema enforces this child;
		-- raise as a plain error so the wrapper marks the test as ERROR.
		error(string.format("WrapTextureTransfer child not found for %s", instance.Name))
	end
	local wrapTextureTransfer = wrapTextureTransferOpt :: WrapTextureTransfer

	local consumerConfig = data.consumerConfig
	-- Capability-gated: escalation-to-retry on cage/UV-load failure depends on where validation runs; route by validationEnv under the flag.
	local routeByEnv = getFFlagUGCValidationAllowFullVaas() and consumerConfig.isVaaS
	local isBackend = if routeByEnv
		then consumerConfig.validationEnv == ValidationEnums.ValidationEnv.Backend
		else SERVER_SOURCES[consumerConfig.source] == true
	-- Lifecycle (honest origin): IEC-origin uploads may pre-load the cage mesh on `content.Object`, so they keep the
	-- editable-instance allowance even when re-run on a VaaS backend. Hardcoding false silently regressed IEC uploads.
	local allowEditableInstances = IEC_SOURCES[consumerConfig.source] == true

	reporter:setReportingInstance(wrapTextureTransfer)

	-- Resolve the editable mesh for the reference cage
	local referenceCageContent = wrapTextureTransfer.ReferenceCageMeshContent
	local hasReferenceCage = referenceCageContent.Uri ~= nil and referenceCageContent.Uri ~= ""

	local preloadedMeshes = data.consumerConfig.preloadedEditableMeshes
	local success, editableMeshInfo = createEditableInstancesForContext.getEditableInstanceInfo(
		referenceCageContent,
		preloadedMeshes,
		"EditableMesh",
		allowEditableInstances
	)

	if not success or not editableMeshInfo or not editableMeshInfo.instance then
		if not hasReferenceCage then
			reporter:fail(ErrorSourceStrings.Keys.WrapTexture_NoCage, {
				instanceName = wrapTextureTransfer:GetFullName(),
			})
		else
			if isBackend then
				reporter:forceError(
					string.format("Failed to load ReferenceCageContent for %s", wrapTextureTransfer:GetFullName())
				)
			end
			reporter:fail(ErrorSourceStrings.Keys.WrapTexture_FailedToLoadCage, {
				instanceName = wrapTextureTransfer:GetFullName(),
			})
		end
		return
	end

	local editableMesh = editableMeshInfo.instance :: EditableMesh

	-- Validate UV values against reference
	local uvSuccess, uvResult = pcall(function()
		return UGCValidationService:ValidateEditableMeshUVValuesInReference(ReferenceUVValues.Head, editableMesh)
	end)

	if not uvSuccess then
		-- UV loading failure: transient on server, user-fixable on client
		if isBackend then
			reporter:forceError(
				string.format(
					"Failed to load UVs for '%s'. Make sure the UV map exists and try again.",
					wrapTextureTransfer:GetFullName()
				)
			)
		end
		reporter:fail(ErrorSourceStrings.Keys.WrapTexture_FailedToLoadUV, {
			instanceName = wrapTextureTransfer:GetFullName(),
		})
		return
	end

	if not uvResult then
		reporter:fail(ErrorSourceStrings.Keys.WrapTexture_InvalidUV, {
			instanceName = wrapTextureTransfer:GetFullName(),
		})
		return
	end

	-- Validate UV bounds match expected values
	local makeupInfo = Constants.MAKEUP_INFO

	-- to support transition period of taking new and old bounds. If everyone moves to new bounds, we should flip this flag off then remove as false
	local matchesOldBounds = false
	if getFFlagUGCValidateTransitionMakeupBounds() then
		-- oldMinBound is 3.28941798, 0.313124001
		-- oldMaxBound is 3.71058202, 0.734287024
		matchesOldBounds = wrapTextureTransfer.UVMinBound:FuzzyEq(OLD_MIN_BOUND)
			and wrapTextureTransfer.UVMaxBound:FuzzyEq(OLD_MAX_BOUND)
	end
	if not matchesOldBounds then
		-- makeupInfo.WrapTextureTransferUVBounds is expected to use new values set by FInts with UGCValidationUseFIntsInUVMinMaxBounds
		if not wrapTextureTransfer.UVMinBound:FuzzyEq(makeupInfo.WrapTextureTransferUVBounds.MinBound) then
			reporter:fail(ErrorSourceStrings.Keys.WrapTexture_InvalidMinBound, {
				instanceName = wrapTextureTransfer:GetFullName(),
				actual = tostring(wrapTextureTransfer.UVMinBound),
				expected = tostring(makeupInfo.WrapTextureTransferUVBounds.MinBound),
			})
			return
		end
		if not wrapTextureTransfer.UVMaxBound:FuzzyEq(makeupInfo.WrapTextureTransferUVBounds.MaxBound) then
			reporter:fail(ErrorSourceStrings.Keys.WrapTexture_InvalidMaxBound, {
				instanceName = wrapTextureTransfer:GetFullName(),
				actual = tostring(wrapTextureTransfer.UVMaxBound),
				expected = tostring(makeupInfo.WrapTextureTransferUVBounds.MaxBound),
			})
			if getFFlagUGCValidateTransitionMakeupBounds() then
				return
			end
		end
	end

	if getFFlagUGCValidateTransitionMakeupBounds() and isBackend then
		if matchesOldBounds then
			reporter:setTelemetryContext("makeupBounds=Old")
		else
			reporter:setTelemetryContext("makeupBounds=New")
		end
	end
end

return WrapTextureValid :: Types.ValidationModule
