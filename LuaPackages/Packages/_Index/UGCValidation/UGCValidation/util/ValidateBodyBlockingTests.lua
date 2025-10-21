--[[
validate:
	check anything that may cause a crash in later validation code
]]

local root = script.Parent.Parent
local Analytics = require(root.Analytics)
local Constants = require(root.Constants)

local util = root.util
local Types = require(util.Types)
local floatEquals = require(util.floatEquals)
local getExpectedPartSize = require(util.getExpectedPartSize)
local FailureReasonsAccumulator = require(util.FailureReasonsAccumulator)

local ValidateBodyBlockingTests = {}

local meshSizeAsDefault = true

function ValidateBodyBlockingTests.validateMeshMin(meshSize: Vector3, meshName: string): (boolean, { string }?)
	local ok = true
	local error = ""

	for _, dimension in { "X", "Y", "Z" } do
		local sizeOnAxis = (meshSize :: any)[dimension]
		if floatEquals(sizeOnAxis, 0, 0.0001) then
			error = if #error > 0 then error .. ". " else ""
			error = error .. "Size on " .. dimension .. " axis is zero"
			ok = false
		end
	end

	if not ok then
		return false, { "Render mesh for " .. meshName .. ": " .. error .. ". Increase the size of the mesh" }
	end
	return true
end

function ValidateBodyBlockingTests.validateInternal(
	meshHandle: MeshPart,
	validationContext: Types.ValidationContext,
	reportFailure: boolean
): (boolean, { string }?)
	local reasonsAccumulator = FailureReasonsAccumulator.new()

	local meshSize = getExpectedPartSize(meshHandle, validationContext, meshSizeAsDefault)
	local success, errorMessages = ValidateBodyBlockingTests.validateMeshMin(meshSize, meshHandle.Name)
	reasonsAccumulator:updateReasons(success, errorMessages)
	if not success then
		if reportFailure then
			Analytics.reportFailure(Analytics.ErrorType.validateBodyBlockingTests_ZeroMeshSize, nil, validationContext)
		end
	end
	return reasonsAccumulator:getFinalResults()
end

function ValidateBodyBlockingTests.validateAll(
	allBodyParts: Types.AllBodyParts,
	validationContext: Types.ValidationContext
): boolean
	local startTime = tick()

	local result = true
	for _, instance in allBodyParts do
		assert(instance:IsA("MeshPart"))
		local success = ValidateBodyBlockingTests.validateInternal(instance :: MeshPart, validationContext, false)
		if not success then
			result = false
			break
		end
	end

	Analytics.recordScriptTime(script.Name, startTime, validationContext)
	return result
end

function ValidateBodyBlockingTests.validate(
	inst: Instance,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local startTime = tick()

	local assetTypeEnum = validationContext.assetTypeEnum

	local reasonsAccumulator = FailureReasonsAccumulator.new()

	local assetInfo = Constants.ASSET_TYPE_INFO[assetTypeEnum]
	if Enum.AssetType.DynamicHead == assetTypeEnum then
		reasonsAccumulator:updateReasons(
			ValidateBodyBlockingTests.validateInternal(inst :: MeshPart, validationContext, true)
		)
	else
		for subPartName in pairs(assetInfo.subParts) do
			local meshHandle: MeshPart? = inst:FindFirstChild(subPartName) :: MeshPart
			assert(meshHandle) -- expected parts have been checked for existance before calling this function

			reasonsAccumulator:updateReasons(
				ValidateBodyBlockingTests.validateInternal(meshHandle :: MeshPart, validationContext, true)
			)
		end
	end

	Analytics.recordScriptTime(script.Name, startTime, validationContext)
	return reasonsAccumulator:getFinalResults()
end

return ValidateBodyBlockingTests
