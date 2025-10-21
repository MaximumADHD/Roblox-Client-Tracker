--[[
	ValidationHints.lua provides functions which give hints for how to change what's being validated so it passes

	preprocessDataAsync()
		returns the data required for calculateScaleToValidateBoundsAsync() to run

	isPreprocessDataCached()
		returns whether the data required for calculateScaleToValidateBoundsAsync() is cached

	calculateScaleToValidateBoundsAsync()
		returns the scale require to uniformally scale the model by so it passes validation bounds checks (and using which proportions type)
]]

local root = script.Parent.Parent

local Constants = require(root.Constants)

local Types = require(root.util.Types)
local BoundsCalculator = require(root.util.BoundsCalculator)
local BoundsDataUtils = require(root.util.BoundsDataUtils)
local ParseContentIds = require(root.util.ParseContentIds)
local getMeshInfo = require(root.util.getMeshInfo)
local getMeshVerts = require(root.util.getMeshVerts)

local getFFlagUGCValidationConsolidateGetMeshInfos = require(root.flags.getFFlagUGCValidationConsolidateGetMeshInfos)

local ValidationHints = {}

local fieldsToCheckFor = {
	MeshPart = { "MeshId" },
}

local requiredFields = {
	MeshPart = { MeshId = true },
}
local function validateMeshIds(instance: Instance, validationContext: Types.ValidationContext): (boolean, { string }?)
	local contentIdMap = {}
	local contentIds = {}

	local parseSuccess = ParseContentIds.parseWithErrorCheck(
		contentIds,
		contentIdMap,
		instance,
		fieldsToCheckFor,
		requiredFields,
		validationContext
	)
	if not parseSuccess then
		return false, { instance.Name .. " does not have a MeshId" }
	end
	return true
end

local function validateAllMeshParts(
	allBodyData: Types.AllBodyParts,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	for _, assetInfo in Constants.ASSET_TYPE_INFO do
		if not assetInfo.isBodyPart then
			continue
		end
		for subPartName, validationData in pairs(assetInfo.subParts) do
			local part = allBodyData[subPartName]
			if not part or part.ClassName ~= "MeshPart" then
				return false, { subPartName .. " missing" }
			end

			if part.Name ~= subPartName then
				return false, { subPartName .. " input data is incorrectly set-up" }
			end

			local validateMeshIdsSuccess, validateMeshIdsErrorMessages = validateMeshIds(part, validationContext)
			if not validateMeshIdsSuccess then
				return false, validateMeshIdsErrorMessages
			end

			local requiredAttachments = {
				[validationData.rigAttachmentToParent.name] = 0,
			}
			local numAttachmentsRequired = 1
			for attachmentName in validationData.otherAttachments do
				local isRigAttachment = nil ~= string.find(attachmentName, "RigAttachment$")
				if isRigAttachment then
					requiredAttachments[attachmentName] = 0
					numAttachmentsRequired = numAttachmentsRequired + 1
				end
			end

			local numRequiredAttachmentsFound = 0
			for _, child in part:GetChildren() do
				if child.ClassName ~= "Attachment" or not requiredAttachments[child.Name] then
					continue
				end
				if requiredAttachments[child.Name] == 1 then
					return false, { subPartName .. " has duplicate rig attachments: " .. child.Name }
				end
				requiredAttachments[child.Name] = requiredAttachments[child.Name] + 1
				numRequiredAttachmentsFound = numRequiredAttachmentsFound + 1
			end

			if numRequiredAttachmentsFound ~= numAttachmentsRequired then
				return false, { "Missing rig attachments" }
			end
		end
	end
	return true
end

local function isWindowValid(min: number, max: number): boolean
	return min <= max
end

-- there needs to be a little gap between the min and max we can scale to else there is a chance that the returned scale may still fail bounds checks
local ToleranceWindow = 0.0001
local HalfToleranceWindow = ToleranceWindow * 0.5

local allAxes = { "X", "Y", "Z" }
local function calculateScalingWindow(boundsDimensions: Types.BoundsData, minMaxPerScaleType: any)
	local results = {}
	local mesh, _, overall = BoundsDataUtils.calculateBoundsDimensions(boundsDimensions)

	results.meshSize = mesh
	results.overallSize = overall
	results.scaleTypes = {}

	for scaleType, minMaxBounds in minMaxPerScaleType do
		local scaleTypeResults = {
			max = math.huge,
			min = -math.huge,
		}
		for _, axis in allAxes do
			scaleTypeResults[axis] = {
				min = HalfToleranceWindow + ((minMaxBounds.minSize :: any)[axis] / (mesh :: any)[axis]),
				max = ((minMaxBounds.maxSize :: any)[axis] / (overall :: any)[axis]) - HalfToleranceWindow,
			}
			scaleTypeResults[axis].ok = isWindowValid(scaleTypeResults[axis].min, scaleTypeResults[axis].max)
			scaleTypeResults.max = math.min(scaleTypeResults.max, scaleTypeResults[axis].max)
			scaleTypeResults.min = math.max(scaleTypeResults.min, scaleTypeResults[axis].min)
		end
		scaleTypeResults.ok = isWindowValid(scaleTypeResults.min, scaleTypeResults.max)
		results.scaleTypes[scaleType] = scaleTypeResults
	end
	return results
end

local function combineScalingWindows(allWindows: any): any
	local allWindowsResults = {}
	for _, window in allWindows do
		for scaleType, scaleTypeData in window.scaleTypes do
			allWindowsResults[scaleType] = allWindowsResults[scaleType]
				or {
					max = math.huge,
					min = -math.huge,
				}
			allWindowsResults[scaleType].max = math.min(allWindowsResults[scaleType].max, scaleTypeData.max)
			allWindowsResults[scaleType].min = math.max(allWindowsResults[scaleType].min, scaleTypeData.min)
		end
	end
	return allWindowsResults
end

local function createFinalResults(scalingWindow: any): Types.ExtraDataValidateBoundsResult
	local results = {
		meshSize = scalingWindow.meshSize,
		overallSize = scalingWindow.overallSize,
	}
	for scaleType, scaleTypeData in scalingWindow.scaleTypes do
		local scaleTypeResults = {}

		for _, axis in allAxes do
			scaleTypeResults[axis] = scaleTypeData[axis]
		end
		scaleTypeResults.ok = scaleTypeData.ok
		scaleTypeResults.min = scaleTypeData.min
		scaleTypeResults.max = scaleTypeData.max

		results[scaleType] = scaleTypeResults
	end
	return results
end

function ValidationHints.preprocessDataAsync(
	allBodyData: Types.AllBodyParts,
	validationContext: Types.ValidationContext
): Types.PreprocessDataResult
	local validateAllMeshPartsSuccess, validateAllMeshPartsErrors = validateAllMeshParts(allBodyData, validationContext)
	if not validateAllMeshPartsSuccess then
		return {
			ok = false,
			errors = validateAllMeshPartsErrors :: { string },
		} :: Types.ErrorValidateBoundsResult
	end

	local meshDataResults = {}
	for _, assetInfo in Constants.ASSET_TYPE_INFO do
		if not assetInfo.isBodyPart then
			continue
		end
		for subPartName in assetInfo.subParts do
			assert(allBodyData[subPartName].ClassName == "MeshPart")
			local meshPart = allBodyData[subPartName] :: MeshPart

			local success, failureReasons, meshInfoOpt
			if getFFlagUGCValidationConsolidateGetMeshInfos() then
				success, failureReasons, meshInfoOpt =
					getMeshInfo(meshPart, Constants.MESH_CONTENT_TYPE.RENDER_MESH, validationContext)
			else
				success, failureReasons, meshInfoOpt = (getMeshInfo :: any)(meshPart, validationContext)
			end
			if not success then
				return {
					ok = false,
					errors = failureReasons :: { string },
				} :: Types.ErrorValidateBoundsResult
			end
			local meshInfo = meshInfoOpt :: Types.MeshInfo

			meshDataResults[meshPart.MeshId] = {}
			local data = meshDataResults[meshPart.MeshId]

			local vertsOpt
			success, failureReasons, vertsOpt = getMeshVerts(meshInfo, validationContext)
			if not success then
				return {
					ok = false,
					errors = failureReasons :: { string },
				} :: Types.ErrorValidateBoundsResult
			end
			data.verts = vertsOpt :: { Vector3 }
		end
	end
	return {
		ok = true,
		cache = { meshData = meshDataResults } :: Types.DataCache,
	} :: Types.MainPreprocessDataResult
end

function ValidationHints.isPreprocessDataCached(allBodyData: Types.AllBodyParts, dataCache: Types.DataCache): boolean
	local meshData = dataCache.meshData
	for _, assetInfo in Constants.ASSET_TYPE_INFO do
		if not assetInfo.isBodyPart then
			continue
		end
		for subPartName in pairs(assetInfo.subParts) do
			local part = allBodyData[subPartName]
			if not part or part.ClassName ~= "MeshPart" then
				continue
			end

			local meshPart = part :: MeshPart
			if meshPart.MeshId == "" then
				continue
			end

			if not meshData then
				return false
			end

			local meshDataForPart = meshData[meshPart.MeshId]
			if not meshDataForPart then
				return false
			end

			if not meshDataForPart.verts then
				return false
			end
		end
	end
	return true
end

local FullBodyName = "FullBody"
local OverallName = "Overall"
function ValidationHints.calculateScaleToValidateBoundsAsync(
	allBodyData: Types.AllBodyParts,
	validationContext: Types.ValidationContext,
	dataCache: Types.DataCache?
): Types.ValidateBoundsResult
	local validateAllMeshPartsSuccess, validateAllMeshPartsErrors = validateAllMeshParts(allBodyData, validationContext)
	if not validateAllMeshPartsSuccess then
		return {
			ok = false,
			errors = validateAllMeshPartsErrors :: { string },
		} :: Types.ErrorValidateBoundsResult
	end

	-- first we get the bounds data for each part
	local partsMetricsSuccess, partsMetricsErrors, allPartsMetricsOpt =
		BoundsCalculator.calculateIndividualFullBodyPartsData(allBodyData, validationContext, dataCache)
	if not partsMetricsSuccess then
		return {
			ok = false,
			errors = partsMetricsErrors or { "Errors calculating parts metrics" },
		}
	end
	local allPartsMetrics = allPartsMetricsOpt :: { string: any }

	-- calculate the full body bounds then the min/max scale window to make full body bounds pass
	local fullBodyBounds: Types.BoundsData = {}
	for _, partMetric: any in allPartsMetrics do
		fullBodyBounds = BoundsDataUtils.combineBounds(fullBodyBounds, partMetric.boundsData)
	end
	local runningResults = {}
	runningResults[FullBodyName] = calculateScalingWindow(fullBodyBounds, Constants.FULL_BODY_BOUNDS)

	-- calculate each asset's bounds then the min/max scale window to make each asset's bounds pass
	for assetTypeEnum, assetInfo in Constants.ASSET_TYPE_INFO do
		if not assetInfo.isBodyPart then
			continue
		end

		local assetResult: Types.BoundsData = {}
		for subPartName in assetInfo.subParts do
			assetResult = BoundsDataUtils.combineBounds(assetResult, allPartsMetrics[subPartName].boundsData)
		end
		runningResults[assetTypeEnum.Name] =
			calculateScalingWindow(assetResult, Constants.ASSET_TYPE_INFO[assetTypeEnum].bounds)
	end

	local overallScale
	local overallScaleType
	for scaleType, minMax in combineScalingWindows(runningResults) do
		if not isWindowValid(minMax.min, minMax.max) then
			continue
		end

		if minMax.min <= 1 and minMax.max >= 1 then
			overallScale = 1
			overallScaleType = scaleType
			break
		end

		local scale = if math.abs(1 - minMax.min) < math.abs(1 - minMax.max) then minMax.min else minMax.max

		if not overallScale or math.abs(1 - scale) < math.abs(1 - overallScale) then --looking for the scale closest to 1 (current scale being 1)
			overallScale = scale
			overallScaleType = scaleType
		end
	end

	local finalResults = {}

	finalResults.ok = true -- no errors
	finalResults[OverallName] = {
		ok = overallScale ~= nil,
		scale = overallScale,
		scaleType = overallScaleType,
	} :: any

	for name, window in runningResults do
		finalResults[name] = createFinalResults(window) :: any
	end
	return finalResults :: Types.ValidateBoundsResult
end

return ValidationHints
