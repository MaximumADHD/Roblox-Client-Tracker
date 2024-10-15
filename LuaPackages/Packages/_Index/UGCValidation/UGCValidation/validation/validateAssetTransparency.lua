local root = script.Parent.Parent

local Types = require(root.util.Types)
local tryYield = require(root.util.tryYield)
local getEditableMeshFromContext = require(root.util.getEditableMeshFromContext)
local FailureReasonsAccumulator = require(root.util.FailureReasonsAccumulator)
local AssetCalculator = require(root.util.AssetCalculator)
local RasterUtil = require(root.util.RasterUtil)
local ConstantsTransparencyValidation = require(root.ConstantsTransparencyValidation)

local getEngineFeatureEditableImageDrawTriangleEnabled =
	require(root.flags.getEngineFeatureEditableImageDrawTriangleEnabled)
local getEngineFeatureUGCValidateEditableMeshAndImage =
	require(root.flags.getEngineFeatureUGCValidateEditableMeshAndImage)
local getFFlagRefactorValidateAssetTransparency = require(root.flags.getFFlagRefactorValidateAssetTransparency)

local function checkFlags()
	return getEngineFeatureEditableImageDrawTriangleEnabled()
		and getEngineFeatureUGCValidateEditableMeshAndImage()
		and getFFlagRefactorValidateAssetTransparency()
end

local function getViews()
	return {
		{
			axis1 = Vector3.new(1, 0, 0),
			axis2 = Vector3.new(0, 1, 0),
			normal = Vector3.new(0, 0, -1),
			viewId = ConstantsTransparencyValidation.CAMERA_ANGLES.Front,
		},
		{
			axis1 = Vector3.new(1, 0, 0),
			axis2 = Vector3.new(0, 1, 0),
			normal = Vector3.new(0, 0, 1),
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

local function getAspectRatio(assetSize, viewId)
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

local function addTransformedTriangle(srcMesh, combinedMeshData, triangleId, transform, origin)
	local triangleData = {
		orderedVerts = {},
	}

	local verts = srcMesh:GetFaceVertices(triangleId)

	local p1_local = srcMesh:GetPosition(verts[1])
	local p2_local = srcMesh:GetPosition(verts[2])
	local p3_local = srcMesh:GetPosition(verts[3])

	local edge1 = p2_local - p1_local
	local edge2 = p3_local - p1_local
	triangleData.normal = edge1:Cross(edge2).Unit

	local p1_world = transform:inverse() * (origin * p1_local)
	local p2_world = transform:inverse() * (origin * p2_local)
	local p3_world = transform:inverse() * (origin * p3_local)

	table.insert(triangleData.orderedVerts, p1_world)
	table.insert(triangleData.orderedVerts, p2_world)
	table.insert(triangleData.orderedVerts, p3_world)

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

local function getCombinedMeshData(srcMesh, combinedMeshData, transform, origin, boundsData)
	local triangles = srcMesh:GetFaces()
	for _, triangleId in triangles do
		local newTriangle = addTransformedTriangle(srcMesh, combinedMeshData, triangleId, transform, origin)
		updateMinMaxBounds(boundsData, newTriangle)
	end
end

local function getOpacity(raster)
	local pixels = raster:ReadPixels(Vector2.new(0, 0), raster.Size)
	local totalPixels = 0
	local transparentPixels = 0
	for i = 1, #pixels, 4 do
		local r = pixels[i]
		local g = pixels[i + 1]
		local b = pixels[i + 2]

		if r == 0 and g == 0 and b == 0 then
			transparentPixels += 1
		end

		totalPixels += 1
	end

	if totalPixels == 0 then
		return false
	end

	return true, 1 - (transparentPixels / totalPixels)
end

local function validateAssetTransparency(inst: Instance, validationContext: Types.ValidationContext)
	if not checkFlags() then
		return true
	end

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

	local transform = AssetCalculator.calculateAssetCFrame(assetTypeEnum, inst)
	local origins = AssetCalculator.calculateAllTransformsForAsset(assetTypeEnum, inst)

	local combinedMeshData = {}
	local boundsData = {
		min = Vector3.new(math.huge, math.huge, math.huge),
		max = Vector3.new(-math.huge, -math.huge, -math.huge),
	}
	for _, meshPart in meshParts do
		local success, srcMesh = getEditableMeshFromContext(meshPart, "MeshId", validationContext)
		if not success then
			return false,
				{
					string.format(
						"Failed to load mesh for MeshPart '%s'. Make sure mesh exists and try again.",
						meshPart.Name
					),
				}
		end
		srcMesh:Triangulate()
		getCombinedMeshData(srcMesh, combinedMeshData, transform, origins[meshPart.Name], boundsData)
		tryYield(validationContext)
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
					"%s is not opague enough. Opacity is %f but needs to be above %f.",
					assetTypeEnum.Name,
					opacity,
					threshold
				),
			})
		end
		editableImage:Destroy()
	end

	return reasonsAccumulator:getFinalResults()
end

return validateAssetTransparency
