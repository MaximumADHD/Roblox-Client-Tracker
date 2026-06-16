local root = script.Parent.Parent.Parent

local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local AssetCalculator = require(root.util.AssetCalculator)
local RasterUtil = require(root.util.RasterUtil)
local TransparencyUtil = require(root.util.TransparencyUtil)
local tryYield = require(root.util.tryYield)

local ConstantsTransparencyValidation = require(root.ConstantsTransparencyValidation)

local getFFlagUGCValidateMigrateTextureTransparency = require(root.flags.getFFlagUGCValidateMigrateTextureTransparency)

local AssetOpacityValid = {}

AssetOpacityValid.categories = {
	ValidationEnums.UploadCategory.TORSO_AND_LIMBS,
	ValidationEnums.UploadCategory.DYNAMIC_HEAD,
}

AssetOpacityValid.requiredData = {
	ValidationEnums.SharedDataMember.renderMeshesData,
}

AssetOpacityValid.fflag = getFFlagUGCValidateMigrateTextureTransparency

AssetOpacityValid.expectedFailures = {}

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

local function getAspectRatio(assetSize: Vector3, viewId: string): number
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
		return assetSize.X / assetSize.Z
	end
end

local function getScaleFactor(meshSize: Vector3, viewId: string): Vector2
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

local function addTransformedTriangle(srcMesh, combinedMeshData, triangleId, origin: CFrame, scale: Vector3)
	local triangleData = {
		orderedVerts = {},
	}

	local verts = srcMesh:GetFaceVertices(triangleId)

	local p1_local = srcMesh:GetPosition(verts[1])
	local p2_local = srcMesh:GetPosition(verts[2])
	local p3_local = srcMesh:GetPosition(verts[3])

	local p1_world, p2_world, p3_world, normal_world =
		TransparencyUtil.transformTriangleToWorld(p1_local, p2_local, p3_local, origin, scale)
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

local function getOpacity(raster): (boolean, number)
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

local LIMB_ASSET_TYPES = {
	[Enum.AssetType.LeftArm] = true,
	[Enum.AssetType.RightArm] = true,
	[Enum.AssetType.LeftLeg] = true,
	[Enum.AssetType.RightLeg] = true,
}

AssetOpacityValid.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local rootInstance = data.rootInstance
	local assetTypeEnum = data.uploadEnum.assetType
	local renderMeshesData = data.renderMeshesData
	local consumerEnv = data.consumerConfig.consumerEnv

	-- Backend/RCC has no heartbeat; task.wait() would hang. IEC/Studio have heartbeats and need yielding.
	local yieldContext: any = {
		shouldYield = consumerEnv ~= ValidationEnums.ConsumerEnv.Backend,
		lastTickSeconds = tick(),
	}

	-- Build meshParts list based on asset structure
	local meshParts: { MeshPart } = {}
	if rootInstance:IsA("MeshPart") and assetTypeEnum == Enum.AssetType.DynamicHead then
		table.insert(meshParts, rootInstance :: MeshPart)
	else
		for _, child in rootInstance:GetChildren() do
			if child:IsA("MeshPart") then
				table.insert(meshParts, child :: MeshPart)
			end
		end
	end

	-- Check Transparency property: must be 0
	local transparentParts: { string } = {}
	for _, meshPart in meshParts do
		if meshPart.Transparency ~= 0 then
			table.insert(transparentParts, meshPart.Name)
		end
	end

	if #transparentParts > 0 then
		for _, partName in transparentParts do
			reporter:fail(ErrorSourceStrings.Keys.AssetOpacity_NonZeroTransparency, {
				PartName = partName,
			})
		end
		return
	end

	-- Calculate part transforms directly from AssetCalculator (no BoundsCalculator needed)
	local partsCFrames = AssetCalculator.calculateAllTransformsForAsset(assetTypeEnum, rootInstance)

	if LIMB_ASSET_TYPES[assetTypeEnum] then
		local function findMeshHandle(name: string): MeshPart
			return rootInstance:FindFirstChild(name) :: MeshPart
		end
		local straightened = AssetCalculator.calculateStraightenedLimb(assetTypeEnum, partsCFrames, findMeshHandle)
		for name, newCFrame in straightened do
			partsCFrames[name] = newCFrame
		end
	end

	-- Build combined mesh data for rasterization
	local combinedMeshData = {}
	local boundsData = {
		min = Vector3.new(math.huge, math.huge, math.huge),
		max = Vector3.new(-math.huge, -math.huge, -math.huge),
	}

	for _, meshPart in meshParts do
		local meshData = renderMeshesData[meshPart.Name]
		if not meshData then
			reporter:fail(ErrorSourceStrings.Keys.AssetOpacity_MeshLoadFailed, {
				PartName = meshPart.Name,
			})
			return
		end
		local srcMesh = meshData.editable :: EditableMesh
		srcMesh:Triangulate()

		-- Compute mesh scaling (part.Size / part.MeshSize)
		local meshScaling = meshPart.Size / meshPart.MeshSize

		local partCFrame = partsCFrames[meshPart.Name] or CFrame.new()
		local triangles = srcMesh:GetFaces()
		for _, triangleId in triangles do
			local newTriangle = addTransformedTriangle(srcMesh, combinedMeshData, triangleId, partCFrame, meshScaling)
			updateMinMaxBounds(boundsData, newTriangle)
			tryYield(yieldContext)
		end
	end

	if (boundsData.max - boundsData.min).Magnitude == 0 then
		reporter:fail(ErrorSourceStrings.Keys.AssetOpacity_ZeroSize, {
			AssetName = assetTypeEnum.Name,
		})
		return
	end

	-- Rasterize from all views and check opacity thresholds
	local views = getViews()
	for _, view in views do
		if #combinedMeshData == 0 then
			reporter:fail(ErrorSourceStrings.Keys.AssetOpacity_NoTriangles, {
				AssetName = assetTypeEnum.Name,
			})
			continue
		end

		local meshSize = boundsData.max - boundsData.min
		local meshCenter = boundsData.min + (meshSize / 2)
		local rasterSize = Vector2.new(
			ConstantsTransparencyValidation.ASSET_TRANSPARENCY_RASTER_SIZE,
			ConstantsTransparencyValidation.ASSET_TRANSPARENCY_RASTER_SIZE
		) * getScaleFactor(meshSize, view.viewId)

		local editableImage =
			RasterUtil.rasterMesh(combinedMeshData, rasterSize, view, meshCenter, meshSize, yieldContext)

		local threshold = ConstantsTransparencyValidation.ASSET_TRANSPARENCY_THRESHOLDS[assetTypeEnum][view.viewId]
		local opacitySuccess, opacity = getOpacity(editableImage)
		if not opacitySuccess then
			reporter:fail(ErrorSourceStrings.Keys.AssetOpacity_Invisible, {
				AssetName = assetTypeEnum.Name,
			})
			editableImage:Destroy()
			continue
		end

		if opacity < threshold then
			reporter:fail(ErrorSourceStrings.Keys.AssetOpacity_BelowThreshold, {
				AssetName = assetTypeEnum.Name,
				ViewName = view.viewId,
				Opacity = string.format("%.2f", opacity),
				Threshold = string.format("%.2f", threshold),
			})
		end
		editableImage:Destroy()
	end
end

return AssetOpacityValid :: Types.ValidationModule
