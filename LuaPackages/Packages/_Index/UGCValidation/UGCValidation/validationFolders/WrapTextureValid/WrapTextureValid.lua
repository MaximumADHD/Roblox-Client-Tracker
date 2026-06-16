local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent.Parent

local Constants = require(root.Constants)
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)
local ReferenceUVValues = require(root.WrapTargetCageUVReferenceValues)
local createEditableInstancesForContext = require(root.util.createEditableInstancesForContext)

local getFFlagUGCValidateMigrateWrapAndMakeup = require(root.flags.getFFlagUGCValidateMigrateWrapAndMakeup)

-- Server-side and IEC consumer routing. Read directly from `consumerConfig.source`
-- because consumerEnv is only assigned when FFlagUGCValidateMigrateSchemaProperties
-- is on (see ValidationManager.lua:445-451); under flag-off it is nil and a
-- consumerEnv comparison spuriously skips the RCC-retry and IEC pre-load paths.
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

local WrapTextureValid = {}

WrapTextureValid.fflag = getFFlagUGCValidateMigrateWrapAndMakeup

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

	local source = data.consumerConfig.source
	local isBackend = SERVER_SOURCES[source] == true
	-- Match legacy `getEditableMeshFromContext` behavior: IEC consumers may
	-- pre-load the cage mesh on `content.Object`, so allowEditableInstances
	-- must be true for IEC paths. Hardcoding false (the prior shape) silently
	-- regressed IEC uploads.
	local allowEditableInstances = IEC_SOURCES[source] == true

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
	end
end

return WrapTextureValid :: Types.ValidationModule
