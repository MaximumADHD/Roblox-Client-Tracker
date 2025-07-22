--[[
	ValidateMeshSizeProperty.lua calculates the size of the mesh used in a MeshPart through getting the verts from the
	EditableMesh, and checks it's the same as the MeshPart.MeshSize property
]]

local root = script.Parent.Parent
local Constants = require(root.Constants)

local Analytics = require(root.Analytics)

local util = root.util
local floatEquals = require(root.util.floatEquals)
local Types = require(util.Types)
local pcallDeferred = require(util.pcallDeferred)
local getMeshSize = require(util.getMeshSize)
local getEditableMeshFromContext = require(util.getEditableMeshFromContext)
local FailureReasonsAccumulator = require(util.FailureReasonsAccumulator)

local ValidateMeshSizeProperty = {}

local function reportFailure(
	msg: string,
	issueType: string,
	validationContext: Types.ValidationContext,
	doErrorOnServer: boolean
): (boolean, { string }?)
	if doErrorOnServer and nil ~= validationContext.isServer and validationContext.isServer then
		-- there could be many reasons that an error occurred, the asset is not necessarilly incorrect, we just didn't get as
		-- far as testing it, so we throw an error which means the RCC will try testing the asset again, rather than returning false
		-- which would mean the asset failed validation
		error(msg)
	end

	Analytics.reportFailure(issueType, nil, validationContext)
	return false, {
		msg,
	}
end

local function vector3Equals(v1: Vector3, v2: Vector3)
	local tol = 0.00001
	return floatEquals(v1.X, v2.X, tol) and floatEquals(v1.Y, v2.Y, tol) and floatEquals(v1.Z, v2.Z, tol)
end

local function calculateMeshSize(
	theMeshPart: MeshPart,
	validationContext: Types.ValidationContext
): (boolean, { string }?, Vector3?)
	local meshInfo = {
		fullName = theMeshPart:GetFullName(),
		fieldName = "MeshId",
		contentId = theMeshPart.MeshId,
		context = theMeshPart.Name,
	} :: Types.MeshInfo

	local getEditableMeshSuccess, editableMesh = getEditableMeshFromContext(theMeshPart, "MeshId", validationContext)
	if not getEditableMeshSuccess then
		return reportFailure(
			string.format("Mesh for '%s' failed to load. Make sure the mesh exists and try again.", theMeshPart.Name),
			Analytics.ErrorType.validateMeshSizeProperty_FailedToLoadMesh,
			validationContext,
			false
		)
	end

	meshInfo.editableMesh = editableMesh :: EditableMesh

	local success, meshSize = pcallDeferred(function()
		return getMeshSize(meshInfo)
	end, validationContext)

	if not success then
		return reportFailure(
			string.format("Mesh for '%s' failed to load. Make sure the mesh exists and try again.", theMeshPart.Name),
			Analytics.ErrorType.validateMeshSizeProperty_FailedToLoadMesh,
			validationContext,
			true
		)
	end
	return true, nil, meshSize
end

local function validateInternal(
	theMeshPart: MeshPart,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local startTime = tick()

	local success, failureReasons, meshSize = calculateMeshSize(theMeshPart, validationContext)
	if (not success) or not meshSize then
		return success, failureReasons
	end

	if not vector3Equals(theMeshPart.MeshSize, meshSize) then
		return reportFailure(
			string.format("Calculated mesh size for %s does not match MeshSize property value", theMeshPart.Name),
			Analytics.ErrorType.validateMeshSizeProperty_Mismatch,
			validationContext,
			false
		)
	end

	Analytics.recordScriptTime(script.Name, startTime, validationContext)
	return true
end

function ValidateMeshSizeProperty.validateSingleMeshPart(
	handle: MeshPart,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	if validationContext.allowEditableInstances then -- if in-experieance
		return true
	end
	return validateInternal(handle, validationContext)
end

function ValidateMeshSizeProperty.validateBodyAsset(
	inst: Instance,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local startTime = tick()

	if validationContext.allowEditableInstances then -- if in-experieance
		return true
	end

	local assetTypeEnum = validationContext.assetTypeEnum

	if Enum.AssetType.DynamicHead == assetTypeEnum then
		local success, error = validateInternal(inst :: MeshPart, validationContext)
		Analytics.recordScriptTime(script.Name, startTime, validationContext)
		return success, error
	end

	local reasonsAccumulator = FailureReasonsAccumulator.new()

	local assetInfo = Constants.ASSET_TYPE_INFO[assetTypeEnum]
	for subPartName in assetInfo.subParts do
		local theMeshPart: MeshPart? = inst:FindFirstChild(subPartName) :: MeshPart
		assert(theMeshPart) -- expected parts have been checked for existance before calling this function

		reasonsAccumulator:updateReasons(validateInternal(theMeshPart :: MeshPart, validationContext))
	end

	Analytics.recordScriptTime(script.Name, startTime, validationContext)
	return reasonsAccumulator:getFinalResults()
end

return ValidateMeshSizeProperty
