--[[
	validateAssetTransparency.lua: This file validates that a mesh part has transparency set to zero
	and that the geometry of the mesh part is visible enough. Visibility is measured as rasterized
	opacity from several rendered views; each view must meet an opacity threshold for that asset type.

	Description of visibility algorithm:
	https://docs.google.com/document/d/1iwqaLDV1rQL5IQxG7-jSAakV-NL5KrQLzaMs6bAeMyo/edit?usp=sharing
]]

local root = script.Parent.Parent

local Analytics = require(root.Analytics)
local Types = require(root.util.Types)
local tryYield = require(root.util.tryYield)
local getEditableMeshFromContext = require(root.util.getEditableMeshFromContext)
local FailureReasonsAccumulator = require(root.util.FailureReasonsAccumulator)
local BoundsCalculator = require(root.util.BoundsCalculator)
local RasterUtil = require(root.util.RasterUtil)
local TransparencyUtil = require(root.util.TransparencyUtil)
local getExpectedPartSize = require(root.util.getExpectedPartSize)

local ConstantsTransparencyValidation = require(root.ConstantsTransparencyValidation)

type ValidationContext = Types.ValidationContext

local function getViews()
	return {
		{
			axis1 = Vector3.new(1, 0, 0),
			axis2 = Vector3.new(0, 1, 0),
			normal = Vector3.new(0, 0, 1),
			viewId = ConstantsTransparencyValidation.CAMERA_ANGLES.Front,
		},
		{
			axis1 = Vector3.new(1, 0, 0),
			axis2 = Vector3.new(0, 1, 0),
			normal = Vector3.new(0, 0, -1),
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

	local p1_world, p2_world, p3_world, normal_world =
		TransparencyUtil.transformTriangleToWorld(p1_local, p2_local, p3_local, origin, scale :: Vector3)
	table.insert(triangleData.orderedVerts, p1_world)
	table.insert(triangleData.orderedVerts, p2_world)
	table.insert(triangleData.orderedVerts, p3_world)
	triangleData.normal = normal_world

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
		local newTriangle = addTransformedTriangle(srcMesh, combinedMeshData, triangleId, origin, scale)
		updateMinMaxBounds(boundsData, newTriangle)
		tryYield(validationContext)
	end
end

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

		-- for in-experience creation these two calls to getExpectedPartSize() will return the same result meaning the meshScaling will be 1
		local meshScaling = getExpectedPartSize(meshPart, validationContext)
			/ getExpectedPartSize(meshPart, validationContext, true)

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
				string.format(
					"%s is not opaque enough from the %s. Opacity is %.2f but needs to be above %.2f.",
					assetTypeEnum.Name,
					view.viewId,
					opacity,
					threshold
				),
			})
		end
		editableImage:Destroy()
	end
	if not (reasonsAccumulator:getFinalResults()) then
		Analytics.reportFailure(
			Analytics.ErrorType.validateAssetTransparency_AssetTransparencyThresholds :: string,
			nil,
			validationContext
		)
	end

	return reasonsAccumulator:getFinalResults()
end

return validateAssetTransparency
