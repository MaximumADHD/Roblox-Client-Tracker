--[[
	validateAssetTransparency.lua: This file validates that a mesh part has transparency set to zero
	and that the geometry of the mesh part is visible enough. The visibility of the geometry is
	determined by a score in two categories, area covered and distribution/how long it is. The
	asset is scored from a number of different rendered views and it's score must be above a
	threshold set for every view.

	Description of visibility algorithm:
	https://docs.google.com/document/d/1iwqaLDV1rQL5IQxG7-jSAakV-NL5KrQLzaMs6bAeMyo/edit?usp=sharing
]]

local root = script.Parent.Parent

local Analytics = require(root.Analytics)
local Types = require(root.util.Types)
local Constants = require(root.Constants)
local tryYield = require(root.util.tryYield)
local getEditableMeshFromContext = require(root.util.getEditableMeshFromContext)
local FailureReasonsAccumulator = require(root.util.FailureReasonsAccumulator)
local BoundsCalculator = require(root.util.BoundsCalculator)
local RasterUtil = require(root.util.RasterUtil)
local TransparencyUtil = require(root.util.TransparencyUtil)
local getExpectedPartSize = require(root.util.getExpectedPartSize)
local SummedAreaTable = require(root.util.SummedAreaTable)

local ConstantsTransparencyValidation = require(root.ConstantsTransparencyValidation)

local getFFlagUGCValidateFixTransparencyReporting = require(root.flags.getFFlagUGCValidateFixTransparencyReporting)
local getFFlagUGCValidateMinBoundsVisibility = require(root.flags.getFFlagUGCValidateMinBoundsVisibility)
local getFFlagReportVisibilityAndIslandTelemetry = require(root.flags.getFFlagReportVisibilityAndIslandTelemetry)

type SummedAreaTable = SummedAreaTable.SummedAreaTable
type ValidationContext = Types.ValidationContext

local function getViews()
	return {
		{
			axis1 = Vector3.new(1, 0, 0),
			axis2 = Vector3.new(0, 1, 0),
			normal = if getFFlagUGCValidateFixTransparencyReporting()
				then Vector3.new(0, 0, 1)
				else Vector3.new(0, 0, -1),
			viewId = ConstantsTransparencyValidation.CAMERA_ANGLES.Front,
		},
		{
			axis1 = Vector3.new(1, 0, 0),
			axis2 = Vector3.new(0, 1, 0),
			normal = if getFFlagUGCValidateFixTransparencyReporting()
				then Vector3.new(0, 0, -1)
				else Vector3.new(0, 0, 1),
			viewId = ConstantsTransparencyValidation.CAMERA_ANGLES.Back,
		},
		{
			axis1 = Vector3.new(0, 0, 1),
			axis2 = Vector3.new(0, 1, 0),
			normal = Vector3.new(-1, 0, 0),
			viewId = ConstantsTransparencyValidation.CAMERA_ANGLES.Left,
		},
		{
			axis1 = Vector3.new(0, 0, 1),
			axis2 = Vector3.new(0, 1, 0),
			normal = Vector3.new(1, 0, 0),
			viewId = ConstantsTransparencyValidation.CAMERA_ANGLES.Right,
		},
		{
			axis1 = Vector3.new(1, 0, 0),
			axis2 = Vector3.new(0, 0, 1),
			normal = Vector3.new(0, -1, 0),
			viewId = ConstantsTransparencyValidation.CAMERA_ANGLES.Top,
		},
		{
			axis1 = Vector3.new(1, 0, 0),
			axis2 = Vector3.new(0, 0, 1),
			normal = Vector3.new(0, 1, 0),
			viewId = ConstantsTransparencyValidation.CAMERA_ANGLES.Bottom,
		},
	}
end

local function getAvatarPartScaleType(inst: Instance): string?
	local avatarScaleType = nil
	local avatarScaleTypeStringValue = inst:FindFirstChild("AvatarPartScaleType", true)
	if avatarScaleTypeStringValue and avatarScaleTypeStringValue:IsA("StringValue") then
		if Constants.AvatarPartScaleTypes[avatarScaleTypeStringValue.Value] then
			avatarScaleType = avatarScaleTypeStringValue.Value
		end
	end

	return avatarScaleType
end

local function getAssetTypeMinSize(inst: Instance, assetTypeEnum: Enum.AssetType): Vector3?
	local avatarScaleType = getAvatarPartScaleType(inst)
	if not avatarScaleType then
		return nil
	end
	return Constants.ASSET_TYPE_INFO[assetTypeEnum].bounds[avatarScaleType].minSize
end

local function getBoundingBoxFace(bounds: Vector3, viewAxes): Vector2
	local viewMatrix = CFrame.fromMatrix(Vector3.zero, viewAxes.axis1, viewAxes.axis2, viewAxes.normal:Abs())
	local transformBounds = viewMatrix * bounds
	return Vector2.new(transformBounds.X, transformBounds.Y)
end

local function calculateTargetPixelsPerStud(windowSize: Vector2, meshSize: Vector2): number
	local windowArea = windowSize.X * windowSize.Y
	-- pps * W * pps * L = TargetPixelsInBox, solve for pps
	local pixelsPerStud = math.sqrt(ConstantsTransparencyValidation.AREA_OF_INTEREST_TARGET_PIXELS / windowArea)

	local largestDim = math.max(meshSize.X, meshSize.Y)
	local maxPixelsPerStud = ConstantsTransparencyValidation.ASSET_TRANSPARENCY_MAX_RASTER_SIZE / largestDim

	return math.min(pixelsPerStud, maxPixelsPerStud)
end

local function rasterSizeFromViewSpaceSize(pixelsPerStud: number, viewFace: Vector2): Vector2
	local rasterSize = viewFace * pixelsPerStud

	local eps = 0.001
	return Vector2.new(math.floor(rasterSize.X + eps), math.floor(rasterSize.Y + eps))
end

-- remove with FFlagUGCValidateMinBoundsVisibility
local function getAspectRatio(assetSize: Vector3, viewId)
	if
		viewId == ConstantsTransparencyValidation.CAMERA_ANGLES.Front
		or viewId == ConstantsTransparencyValidation.CAMERA_ANGLES.Back
	then
		return assetSize.X / assetSize.Y
	elseif
		viewId == ConstantsTransparencyValidation.CAMERA_ANGLES.Left
		or viewId == ConstantsTransparencyValidation.CAMERA_ANGLES.Right
	then
		return assetSize.Z / assetSize.Y
	else
		-- top or bottom views
		return assetSize.X / assetSize.Z
	end
end

-- remove with FFlagUGCValidateMinBoundsVisibility
local function getScaleFactor(meshSize, viewId)
	local aspectRatio = getAspectRatio(meshSize, viewId)

	local newWidth, newHeight
	if aspectRatio > 1 then
		newHeight = ConstantsTransparencyValidation.ASSET_TRANSPARENCY_RASTER_SIZE / aspectRatio
		newWidth = ConstantsTransparencyValidation.ASSET_TRANSPARENCY_RASTER_SIZE
	elseif aspectRatio < 1 then
		newWidth = ConstantsTransparencyValidation.ASSET_TRANSPARENCY_RASTER_SIZE * aspectRatio
		newHeight = ConstantsTransparencyValidation.ASSET_TRANSPARENCY_RASTER_SIZE
	else
		newWidth = ConstantsTransparencyValidation.ASSET_TRANSPARENCY_RASTER_SIZE
		newHeight = ConstantsTransparencyValidation.ASSET_TRANSPARENCY_RASTER_SIZE
	end

	local scaleFactor = Vector2.new(
		newWidth / ConstantsTransparencyValidation.ASSET_TRANSPARENCY_RASTER_SIZE,
		newHeight / ConstantsTransparencyValidation.ASSET_TRANSPARENCY_RASTER_SIZE
	)
	local maxComponent = math.max(scaleFactor.X, scaleFactor.Y)
	if maxComponent > 1 then
		return scaleFactor / maxComponent
	end

	return scaleFactor
end

local function addTransformedTriangle(
	srcMesh,
	combinedMeshData,
	triangleId,
	origin: CFrame,
	scale: Vector3? -- make not optional when removing FFlagUGCValidateUpdateTransparencyErrorMessage
)
	local triangleData = {
		orderedVerts = {},
	}

	local verts = srcMesh:GetFaceVertices(triangleId)

	local p1_local = srcMesh:GetPosition(verts[1])
	local p2_local = srcMesh:GetPosition(verts[2])
	local p3_local = srcMesh:GetPosition(verts[3])

	if getFFlagUGCValidateFixTransparencyReporting() then
		local p1_world, p2_world, p3_world, normal_world =
			TransparencyUtil.transformTriangleToWorld(p1_local, p2_local, p3_local, origin, scale :: Vector3)
		table.insert(triangleData.orderedVerts, p1_world)
		table.insert(triangleData.orderedVerts, p2_world)
		table.insert(triangleData.orderedVerts, p3_world)
		triangleData.normal = normal_world
	else
		local edge1 = p2_local - p1_local
		local edge2 = p3_local - p1_local
		triangleData.normal = edge1:Cross(edge2).Unit

		local p1_world = origin * p1_local
		local p2_world = origin * p2_local
		local p3_world = origin * p3_local

		table.insert(triangleData.orderedVerts, p1_world)
		table.insert(triangleData.orderedVerts, p2_world)
		table.insert(triangleData.orderedVerts, p3_world)
	end

	table.insert(combinedMeshData, triangleData)

	return triangleData
end

local function updateMinMaxBounds(boundsData, triangle)
	local minX = boundsData.min.X
	local maxX = boundsData.max.X
	local minY = boundsData.min.Y
	local maxY = boundsData.max.Y
	local minZ = boundsData.min.Z
	local maxZ = boundsData.max.Z

	local p1_world = triangle.orderedVerts[1]
	local p2_world = triangle.orderedVerts[2]
	local p3_world = triangle.orderedVerts[3]

	minX = math.min(p1_world.X, p2_world.X, p3_world.X, minX)
	maxX = math.max(p1_world.X, p2_world.X, p3_world.X, maxX)
	minY = math.min(p1_world.Y, p2_world.Y, p3_world.Y, minY)
	maxY = math.max(p1_world.Y, p2_world.Y, p3_world.Y, maxY)
	minZ = math.min(p1_world.Z, p2_world.Z, p3_world.Z, minZ)
	maxZ = math.max(p1_world.Z, p2_world.Z, p3_world.Z, maxZ)

	boundsData.min = Vector3.new(minX, minY, minZ)
	boundsData.max = Vector3.new(maxX, maxY, maxZ)
end

local function getCombinedMeshData(
	srcMesh,
	combinedMeshData,
	origin: CFrame,
	boundsData,
	scale: Vector3?, -- make not optional when removing FFlagUGCValidateUpdateTransparencyErrorMessage
	validationContext
)
	local triangles = srcMesh:GetFaces()
	for _, triangleId in triangles do
		local newTriangle = addTransformedTriangle(
			srcMesh,
			combinedMeshData,
			triangleId,
			origin,
			if getFFlagUGCValidateFixTransparencyReporting() then scale else nil
		)
		updateMinMaxBounds(boundsData, newTriangle)
		tryYield(validationContext)
	end
end

-- remove with FFlagUGCValidateMinBoundsVisibility
local function getOpacity(raster)
	local pixels = raster:ReadPixelsBuffer(Vector2.new(0, 0), raster.Size)
	local totalPixels = 0
	local transparentPixels = 0
	for i = 0, buffer.len(pixels) - 1, 4 do
		local r = buffer.readu8(pixels, i)
		local g = buffer.readu8(pixels, i + 1)
		local b = buffer.readu8(pixels, i + 2)

		if r == 0 and g == 0 and b == 0 then
			transparentPixels += 1
		end

		totalPixels += 1
	end

	if totalPixels == 0 then
		return false, 0.0
	end

	return true, 1 - (transparentPixels / totalPixels)
end

local function getSubregionVisibility(
	windowPos: Vector2,
	windowSize: Vector2,
	areaTable: SummedAreaTable,
	distributionDirection: Vector2?
): number
	local windowArea = windowSize.X * windowSize.Y
	local areaCoverage: number = areaTable:GetAreaDensity(windowPos, windowSize)
	local areaScore = areaCoverage / windowArea
	local visibility = areaScore

	if distributionDirection then
		local sliceDirection = Vector2.one - distributionDirection
		local distributionLength = windowSize:Dot(distributionDirection)
		local sliceLength = windowSize:Dot(sliceDirection)
		local sliceSize = (sliceDirection * sliceLength):Max(Vector2.one)
		local maxSliceArea = sliceLength * ConstantsTransparencyValidation.DISTRIBUTION_SLICE_MAX
		local filledAreaUnderThresholdLine = 0.0
		local AreaUnderThresholdLine = maxSliceArea * distributionLength
		for sliceIndex = 0, distributionLength, 1 do
			local sliceStart = windowPos + distributionDirection * sliceIndex
			local sliceCoveredArea = areaTable:GetAreaDensity(sliceStart, sliceSize)
			local sliceClamped = math.min(sliceCoveredArea, maxSliceArea)
			filledAreaUnderThresholdLine += sliceClamped
		end

		local distributionScore = filledAreaUnderThresholdLine / AreaUnderThresholdLine

		local distributionScoreWeight = ConstantsTransparencyValidation.DISTRIBUTION_SCORE_WEIGHT
		local areaScoreWeight = 1.0 - distributionScoreWeight
		visibility = distributionScore * distributionScoreWeight + areaScore * areaScoreWeight
	end

	return visibility
end

local function getHighestSubregionVisibility(raster: EditableImage, windowSize: Vector2, threshold: number): number
	local windowArea = windowSize.X * windowSize.Y
	if windowArea <= 0 then
		return 0.0
	end

	local assetOpacityScan = SummedAreaTable.new(raster.Size, function(color)
		if color.R > 0 or color.G > 0 or color.B > 0 then
			return 1
		end

		return 0
	end)

	assetOpacityScan:BuildSummedAreaTable(raster)

	local distributionDirection = nil
	if ConstantsTransparencyValidation.DISTRIBUTION_ASPECT_CUTOFF then
		if windowSize.X / windowSize.Y >= ConstantsTransparencyValidation.DISTRIBUTION_ASPECT_CUTOFF then
			distributionDirection = Vector2.xAxis
		elseif windowSize.Y / windowSize.X >= ConstantsTransparencyValidation.DISTRIBUTION_ASPECT_CUTOFF then
			distributionDirection = Vector2.yAxis
		end
	end

	local maxOpacity = 0.0
	local yDifference = raster.Size.Y - windowSize.Y
	local xDifference = raster.Size.X - windowSize.X
	for y = 0, yDifference, 1 do
		for x = 0, xDifference, 1 do
			local windowPos = Vector2.new(x, y)
			local subregionOpacity =
				getSubregionVisibility(windowPos, windowSize, assetOpacityScan, distributionDirection)
			if subregionOpacity >= threshold then
				return subregionOpacity
			end
			maxOpacity = math.max(maxOpacity, subregionOpacity)
		end
	end

	return maxOpacity
end

local function checkPartsTransparency(meshParts)
	local transparentParts = {}
	for _, meshPart in meshParts do
		if meshPart.Transparency ~= 0 then
			table.insert(transparentParts, meshPart.Name)
		end
	end

	if #transparentParts > 0 then
		return false,
			{
				string.format(
					"The following parts have a non-zero transparency: %s. Part transparency should always be exactly zero.",
					table.concat(transparentParts, ", ")
				),
			}
	end

	return true, {}
end

local function validateAssetTransparency(inst: Instance, validationContext: ValidationContext): (boolean, { string }?)
	local assetTypeEnum = validationContext.assetTypeEnum :: Enum.AssetType

	local meshParts = {}
	if inst:IsA("MeshPart") and validationContext.assetTypeEnum == Enum.AssetType.DynamicHead then
		table.insert(meshParts, inst)
	else
		assert(
			inst:IsA("Folder") and validationContext.assetTypeEnum ~= Enum.AssetType.DynamicHead,
			string.format("BodyPart %s is not in the correct format.", inst:GetFullName())
		)
		for _, child in inst:GetChildren() do
			assert(
				child:IsA("MeshPart"),
				string.format("BodyPart %s contained child that is not a MeshPart.", inst:GetFullName())
			)
			table.insert(meshParts, child)
		end
	end

	local transparentCheckSuccess, errorMessages = checkPartsTransparency(meshParts)
	if not transparentCheckSuccess then
		return false, errorMessages
	end

	local boundsSuccess, boundsErrors, originsOpt =
		BoundsCalculator.calculateIndividualAssetPartsData(inst, validationContext)
	if not boundsSuccess then
		return false, boundsErrors
	end
	local origins = originsOpt :: { string: any }

	local combinedMeshData = {}
	local boundsData = {
		min = Vector3.new(math.huge, math.huge, math.huge),
		max = Vector3.new(-math.huge, -math.huge, -math.huge),
	}
	for _, meshPart in meshParts do
		local success, srcMeshOpt = getEditableMeshFromContext(meshPart, "MeshId", validationContext)
		if not success then
			return false,
				{
					string.format(
						"Failed to load mesh for MeshPart '%s'. Make sure mesh exists and try again.",
						meshPart.Name
					),
				}
		end
		local srcMesh = srcMeshOpt :: EditableMesh
		srcMesh:Triangulate()

		local meshScaling = nil
		if getFFlagUGCValidateFixTransparencyReporting() then
			-- for in-experience creation these two calls to getExpectedPartSize() will return the same result meaning the meshScaling will be 1
			meshScaling = getExpectedPartSize(meshPart, validationContext)
				/ getExpectedPartSize(meshPart, validationContext, true)
		end
		getCombinedMeshData(
			srcMesh,
			combinedMeshData,
			origins[meshPart.Name].cframe,
			boundsData,
			meshScaling,
			validationContext
		)
	end

	if (boundsData.max - boundsData.min).Magnitude == 0 then
		return false, { string.format("Meshes %s should not have zero size", assetTypeEnum.Name) }
	end

	if getFFlagUGCValidateMinBoundsVisibility() then
		local meshSize = boundsData.max - boundsData.min
		local meshCenter = boundsData.min + (meshSize / 2)
		local minBoundsSize = getAssetTypeMinSize(inst, assetTypeEnum)
		if not minBoundsSize then
			return false, {}
		end
		local paddedMeshSize = meshSize:Max(minBoundsSize)

		local reasonsAccumulator = FailureReasonsAccumulator.new()
		local views = getViews()
		for _, view in views do
			if #combinedMeshData == 0 then
				reasonsAccumulator:updateReasons(
					false,
					{ string.format("Mesh for %s has no triangles.", assetTypeEnum.Name) }
				)
				continue
			end

			local paddedMeshSizeViewSpace = getBoundingBoxFace(paddedMeshSize, view)
			local minBoundsViewSpace = getBoundingBoxFace(minBoundsSize :: Vector3, view)
			local pixelsPerStud = calculateTargetPixelsPerStud(minBoundsViewSpace, paddedMeshSizeViewSpace)

			local rasterSize = rasterSizeFromViewSpaceSize(pixelsPerStud, paddedMeshSizeViewSpace)
			local minBoundsPixelSpace = rasterSizeFromViewSpaceSize(pixelsPerStud, minBoundsViewSpace)

			local editableImage =
				RasterUtil.rasterMesh(combinedMeshData, rasterSize, view, meshCenter, paddedMeshSize, validationContext)

			local threshold = ConstantsTransparencyValidation.ASSET_TRANSPARENCY_THRESHOLDS[assetTypeEnum][view.viewId]
			local visibility = getHighestSubregionVisibility(editableImage, minBoundsPixelSpace, threshold)
			editableImage:Destroy()

			if visibility == 0.0 and threshold > 0.0 then
				reasonsAccumulator:updateReasons(false, {
					string.format("Mesh for %s is completely invisible from the %s.", assetTypeEnum.Name, view.viewId),
				})
			elseif visibility < threshold then
				reasonsAccumulator:updateReasons(false, {
					string.format(
						"%s is not visible enough from the %s. The most visible region found, scored %.2f but needs to be above %.2f.",
						assetTypeEnum.Name,
						view.viewId,
						visibility,
						threshold
					),
				})
			end
		end

		if getFFlagReportVisibilityAndIslandTelemetry() then
			if not (reasonsAccumulator:getFinalResults()) then
				Analytics.reportFailure(
					Analytics.ErrorType.validateAssetTransparency_AssetTransparencyThresholds :: string,
					nil,
					validationContext
				)
			end
		end

		return reasonsAccumulator:getFinalResults()
	else
		local reasonsAccumulator = FailureReasonsAccumulator.new()
		local views = getViews()
		for _, view in views do
			if #combinedMeshData == 0 then
				reasonsAccumulator:updateReasons(
					false,
					{ string.format("Mesh for %s has no triangles.", assetTypeEnum.Name) }
				)
				continue
			end
			local meshSize = boundsData.max - boundsData.min
			local meshCenter = boundsData.min + (meshSize / 2)
			local rasterSize = Vector2.new(
				ConstantsTransparencyValidation.ASSET_TRANSPARENCY_RASTER_SIZE,
				ConstantsTransparencyValidation.ASSET_TRANSPARENCY_RASTER_SIZE
			) * getScaleFactor(meshSize, view.viewId)

			local editableImage =
				RasterUtil.rasterMesh(combinedMeshData, rasterSize, view, meshCenter, meshSize, validationContext)

			local threshold = ConstantsTransparencyValidation.ASSET_TRANSPARENCY_THRESHOLDS[assetTypeEnum][view.viewId]
			local success, opacity = getOpacity(editableImage)
			if not success then
				reasonsAccumulator:updateReasons(
					false,
					{ string.format("Mesh for %s is completely invisible.", assetTypeEnum.Name) }
				)
				editableImage:Destroy()
				continue
			end
			if opacity < threshold then
				reasonsAccumulator:updateReasons(false, {
					if getFFlagUGCValidateFixTransparencyReporting()
						then string.format(
							"%s is not opaque enough from the %s. Opacity is %.2f but needs to be above %.2f.",
							assetTypeEnum.Name,
							view.viewId,
							opacity,
							threshold
						)
						else string.format(
							"%s is not opague enough. Opacity is %f but needs to be above %f.",
							assetTypeEnum.Name,
							opacity,
							threshold
						),
				})
			end
			editableImage:Destroy()
		end

		if getFFlagReportVisibilityAndIslandTelemetry() then
			if not (reasonsAccumulator:getFinalResults()) then
				Analytics.reportFailure(
					Analytics.ErrorType.validateAssetTransparency_AssetTransparencyThresholds :: string,
					nil,
					validationContext
				)
			end
		end

		return reasonsAccumulator:getFinalResults()
	end
end

return validateAssetTransparency
