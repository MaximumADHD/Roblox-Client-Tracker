--!strict

--[[
	validateAccurateBoundingBox.lua: separates the geometry of the asset's mesh parts into islands.
    The small islands are filtered out and the bounds of the remaining islands are calculated. We then add the
    filtered small islands back one by one to see if they expand the bounds at all. If an expansion
    is found, we fail the asset for bounding box manipulation.
]]

local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent

local Analytics = require(root.Analytics)
local AssetCalculator = require(root.util.AssetCalculator)
local getExpectedPartSize = require(root.util.getExpectedPartSize)
local getEditableMeshFromContext = require(root.util.getEditableMeshFromContext)
local FailureReasonsAccumulator = require(root.util.FailureReasonsAccumulator)
local pcallDeferred = require(root.util.pcallDeferred)

local Types = require(root.util.Types)

local getFStringUGCValidateBoundsInflationThreshold = require(root.flags.getFStringUGCValidateBoundsInflationThreshold)
local getFFlagReportVisibilityAndIslandTelemetry = require(root.flags.getFFlagReportVisibilityAndIslandTelemetry)

type Extents = {
	min: Vector3,
	max: Vector3,
}

local function calculateExtentsUnion(lhs: Extents, rhs: Extents): Extents
	local unionExtents = {}
	unionExtents.min = lhs.min:Min(rhs.min)
	unionExtents.max = lhs.max:Max(rhs.max)
	return unionExtents
end

local function checkExtentsValid(extents: Extents): boolean
	for _, dimension in { "X", "Y", "Z" } do
		if (extents.max :: any)[dimension] < (extents.min :: any)[dimension] then
			return false
		end
	end
	return true
end

local function validationSpaceToWorldSpace(
	inPosition: Vector3,
	validationCFrame: CFrame,
	validationScale: Vector3,
	originalCFrame: CFrame,
	originalScale: Vector3
): Vector3
	local centeredValidation = validationCFrame:Inverse() * inPosition
	local normalizedSpace = centeredValidation / validationScale
	local worldScaled = normalizedSpace * originalScale
	return originalCFrame * worldScaled
end

local function calculateAmountInflated(
	validBounds: { min: Vector3, max: Vector3 },
	suspectBounds: { min: Vector3, max: Vector3 }
): number
	local withSuspect = calculateExtentsUnion(validBounds, suspectBounds)

	local maxDiff = 0.0
	for _, dimension in { "X", "Y", "Z" } do
		local validLength = math.abs((validBounds.max :: any)[dimension] - (validBounds.min :: any)[dimension])
		local suspectLength = math.abs((withSuspect.max :: any)[dimension] - (withSuspect.min :: any)[dimension])
		local axialDifference = math.abs(suspectLength - validLength)
		maxDiff = math.max(maxDiff, axialDifference)
	end

	return maxDiff
end

local function getPartNamesInAsset(inst: Instance, assetType: Enum.AssetType): { string }
	local names = {}
	if assetType == Enum.AssetType.DynamicHead then
		table.insert(names, inst.Name)
		return names
	end

	for _, part in inst:GetChildren() do
		if part:IsA("MeshPart") then
			table.insert(names, part.Name)
		end
	end

	return names
end

local function calculateMeshScales(
	partKeys: { string },
	validationContext: Types.ValidationContext,
	getMesh: (string) -> MeshPart
): { string: Vector3 }
	local validationMeshScales = {}
	for _, partKey in partKeys do
		local meshPart = getMesh(partKey)
		local scale = getExpectedPartSize(meshPart, validationContext)
			/ getExpectedPartSize(meshPart, validationContext, true)
		validationMeshScales[partKey] = scale
	end

	return validationMeshScales
end

local function checkInflatingGeo(
	validBounds: Extents,
	problemGeoBoundsList: { [number]: { extents: Extents, worldSpacePosition: Vector3 } },
	maxProblemGeoToReport: number,
	problemGeoClass: string,
	assetTypeEnum: Enum.AssetType,
	reasonsAccumulator
)
	local sortedProblemGeo: { [number]: { extents: Extents, worldSpacePosition: Vector3, inflated: number } } = {}
	for _, problemGeo in problemGeoBoundsList do
		local inflated = calculateAmountInflated(validBounds, problemGeo.extents)
		table.insert(
			sortedProblemGeo,
			{ extents = problemGeo.extents, inflated = inflated, worldSpacePosition = problemGeo.worldSpacePosition }
		)
	end

	table.sort(sortedProblemGeo, function(lhs, rhs)
		return lhs.inflated > rhs.inflated
	end)

	local inflationThreshold = tonumber(getFStringUGCValidateBoundsInflationThreshold()) :: number

	local problemGeoToReport = {}
	local problemGeoIndex = 1
	while
		problemGeoIndex <= #sortedProblemGeo
		and sortedProblemGeo[problemGeoIndex].inflated > inflationThreshold
		and #problemGeoToReport < maxProblemGeoToReport
	do
		table.insert(problemGeoToReport, sortedProblemGeo[problemGeoIndex])
		problemGeoIndex += 1
	end

	if #problemGeoToReport > 0 then
		local geoPositions = ""
		for i = 1, #problemGeoToReport, 1 do
			if i > 1 then
				if i == #problemGeoToReport then
					geoPositions = geoPositions .. ", and "
				else
					geoPositions = geoPositions .. ", "
				end
			end
			local geoPosition = problemGeoToReport[i].worldSpacePosition
			geoPositions = geoPositions
				.. string.format("{%.4f, %.4f, %.4f}", geoPosition.X, geoPosition.Y, geoPosition.Z)
		end
		reasonsAccumulator:updateReasons(false, {
			string.format(
				"Detected %s centered around: %s that increases %s bounding box. Remove the geometry or increase its size so that it is more visible",
				problemGeoClass,
				geoPositions,
				assetTypeEnum.Name
			),
		})
	end
end

local function getWorldPositions(
	partsProblemGeos,
	partValidationCFrames: { [string]: CFrame },
	partValidationScales: { [string]: Vector3 },
	problemGeoType: string,
	partNames: { [number]: string },
	findMeshHandle: (string) -> MeshPart
): { [number]: { extents: Extents, worldSpacePosition: Vector3 } }
	local extentsAndPositions = {}

	for _, partName in partNames do
		local meshPart = findMeshHandle(partName)
		local partCFrame = meshPart.CFrame
		local partScale = meshPart.Size / meshPart.MeshSize

		local partProblemGeos = partsProblemGeos[partName]
		local problemGeosOfType = partProblemGeos[problemGeoType]
		for _, problemGeoExtents in problemGeosOfType do
			local extentsCenter = (problemGeoExtents.min + problemGeoExtents.max) / 2.0
			local worldSpacePosition = validationSpaceToWorldSpace(
				extentsCenter,
				partValidationCFrames[partName],
				partValidationScales[partName],
				partCFrame,
				partScale
			)
			local extentAndPosition =
				{ extents = problemGeoExtents :: Extents, worldSpacePosition = worldSpacePosition }
			table.insert(extentsAndPositions, extentAndPosition)
		end
	end

	return extentsAndPositions
end

local function validateAccurateBoundingBox(
	inst: Instance,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local assetType = validationContext.assetTypeEnum :: Enum.AssetType
	assert(assetType)

	local partNames = getPartNamesInAsset(inst, assetType)

	local validationPartCFrames = AssetCalculator.calculateAllTransformsForAsset(assetType, inst)

	local function findMeshHandle(name: string): MeshPart
		if assetType == Enum.AssetType.DynamicHead then
			return inst :: MeshPart
		end
		return inst:FindFirstChild(name) :: MeshPart
	end

	if assetType ~= Enum.AssetType.DynamicHead and assetType ~= Enum.AssetType.Torso then
		local results = AssetCalculator.calculateStraightenedLimb(assetType, validationPartCFrames, findMeshHandle)

		for name, newCFrame in results do
			validationPartCFrames[name] = newCFrame
		end
	end

	local validationMeshScales = calculateMeshScales(partNames, validationContext, findMeshHandle)

	local partMeshes = {}
	for _, partName in partNames do
		local meshPart = findMeshHandle(partName)
		local success, editableMesh = getEditableMeshFromContext(meshPart, "MeshId", validationContext)
		if not success then
			return false,
				{
					string.format("Failed to load mesh for '%s'. Make sure mesh exists and try again.", meshPart.Name),
				}
		end

		partMeshes[partName] = editableMesh
	end

	-- convert maps to lists for cpp api
	local partMeshList = {}
	local partCFrameList = {}
	local meshScaleList = {}
	for _, partName in partNames do
		table.insert(partMeshList, partMeshes[partName])
		table.insert(partCFrameList, validationPartCFrames[partName])
		table.insert(meshScaleList, validationMeshScales[partName])
	end

	local success, boundsManipulationData = pcallDeferred(function()
		return (UGCValidationService :: any):GetBoundingBoxManipulationData(partMeshList, partCFrameList, meshScaleList)
	end, validationContext)

	if not success then
		local errorMsg = string.format("Could not get bounding box manipulation metrics for %s", assetType.Name)
		if validationContext.isServer then
			error(errorMsg)
		else
			return false, { errorMsg }
		end
	end

	local validExtents =
		{ min = boundsManipulationData.minValidExtents, max = boundsManipulationData.maxValidExtents } :: Extents

	if not checkExtentsValid(validExtents) then
		return false,
			{ string.format("%s mesh is too small or made of disconnected pieces that are too small", assetType.Name) }
	end

	-- convert lists returned from cpp api back to maps
	local partsProblemGeos = {}
	for index, partProblemGeos in boundsManipulationData.partsProblemGeos do
		local partName = partNames[index]
		partsProblemGeos[partName] = partProblemGeos
	end

	local smallIslands = getWorldPositions(
		partsProblemGeos,
		validationPartCFrames,
		validationMeshScales,
		"smallIslands",
		partNames,
		findMeshHandle
	)

	local skinnyTris = getWorldPositions(
		partsProblemGeos,
		validationPartCFrames,
		validationMeshScales,
		"skinnyTris",
		partNames,
		findMeshHandle
	)

	local reasonsAccumulator = FailureReasonsAccumulator.new()

	checkInflatingGeo(validExtents, smallIslands, 3, "small geometry", assetType, reasonsAccumulator)

	checkInflatingGeo(validExtents, skinnyTris, 3, "skinny triangle(s)", assetType, reasonsAccumulator)

	if getFFlagReportVisibilityAndIslandTelemetry() then
		if not (reasonsAccumulator:getFinalResults()) then
			Analytics.reportFailure(Analytics.ErrorType.validateAccurateBoundingBox :: string, nil, validationContext)
		end
	end

	return reasonsAccumulator:getFinalResults()
end

return validateAccurateBoundingBox
