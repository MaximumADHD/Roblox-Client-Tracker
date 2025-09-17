--[[
	bodyAssetMasksRenderer.lua renders views of a given body part asset from the directions defined in bodyAssetMaskModule.viewDirections
	The renders are orthographic views of the straightened asset where the view is sized to the view space extents of the asset.
	The rendering code can take off axis view directions. createBodyAssetMasks() should only be called once, and then the masks reused
	by any test that needs them.
]]
local root = script.Parent.Parent

local Types = require(root.util.Types)
local tryYield = require(root.util.tryYield)
local getEditableMeshFromContext = require(root.util.getEditableMeshFromContext)
local getAssetMeshesValidationSpaceTransforms =
	require(root.util.AssetCalculator).getAssetMeshesValidationSpaceTransforms

local AssetService = game:GetService("AssetService")

local getFIntUGCValidationBodyAssetMaskHeightPixels = require(root.flags.getFIntUGCValidationBodyAssetMaskHeightPixels)

type ValidationContext = Types.ValidationContext

local BodyAssetMasksRenderer = {}
BodyAssetMasksRenderer.__index = BodyAssetMasksRenderer

type BodyAssetMaskEntry = { mask: EditableImage?, view: CFrame, viewSpaceBounds: { max: Vector3, min: Vector3 } }
export type BodyAssetMasksMembers = {
	viewIds: { [string]: string },
	viewDirections: { [string]: Vector3 },
	views: { [string]: CFrame } | nil,
	bodyAssetMasks: { [string]: BodyAssetMaskEntry },
	initializeViewToWorldTransforms: any,
	destroyBodyAssetMasks: () -> (),
}

export type BodyAssetMasksRenderer = typeof(setmetatable({} :: BodyAssetMasksMembers, BodyAssetMasksRenderer))

BodyAssetMasksRenderer.viewIds = {
	Front = "Front",
	Back = "Back",
	Left = "Left",
	Right = "Right",
	Top = "Top",
	Bottom = "Bottom",
}

BodyAssetMasksRenderer.viewDirections = {
	[BodyAssetMasksRenderer.viewIds.Front] = Vector3.new(0.0, 0.0, 1.0),
	[BodyAssetMasksRenderer.viewIds.Back] = Vector3.new(0.0, 0.0, -1.0),
	[BodyAssetMasksRenderer.viewIds.Left] = Vector3.new(-1.0, 0.0, 0.0),
	[BodyAssetMasksRenderer.viewIds.Right] = Vector3.new(1.0, 0.0, 0.0),
	[BodyAssetMasksRenderer.viewIds.Top] = Vector3.new(0.0, -1.0, 0.0),
	[BodyAssetMasksRenderer.viewIds.Bottom] = Vector3.new(0.0, 1.0, 0.0),
}

BodyAssetMasksRenderer.views = nil :: { [string]: CFrame }?

function BodyAssetMasksRenderer.getViewToWorldTransforms()
	if not BodyAssetMasksRenderer.views then
		BodyAssetMasksRenderer.views = {}
		for _, viewId in BodyAssetMasksRenderer.viewIds do
			local forward = BodyAssetMasksRenderer.viewDirections[viewId :: string]
			local up = Vector3.new(0.0, 1.0, 0.0)
			if math.abs(forward:Dot(up)) > 0.99 then
				up = BodyAssetMasksRenderer.viewDirections[BodyAssetMasksRenderer.viewIds.Front]
			end
			local viewCFrame = CFrame.lookAlong(Vector3.zero, forward, up)
			do
				(BodyAssetMasksRenderer.views :: any)[viewId] = viewCFrame
			end
		end
	end

	return BodyAssetMasksRenderer.views
end

local function populateViewsToRender(viewIds: { string }?)
	local allViews = BodyAssetMasksRenderer.getViewToWorldTransforms()
	local filteredViews = {}
	if viewIds and #viewIds > 0 then
		for _, viewId in viewIds do
			if (allViews :: { [string]: CFrame })[viewId] then
				filteredViews[viewId] = (allViews :: { [string]: CFrame })[viewId]
			end
		end
	else
		filteredViews = allViews :: { [string]: CFrame }
	end

	return filteredViews
end

local function addTransformedTriangle(
	srcMesh: EditableMesh,
	triangleId: number,
	transform: { CFrame: CFrame, scale: Vector3 },
	outputMesh: { [number]: { [number]: Vector3 } }
)
	local verts = srcMesh:GetFaceVertices(triangleId)

	local triangleVerts = {}
	for i = 1, 3 do
		local position = srcMesh:GetPosition(verts[i])
		position = position * transform.scale
		position = transform.CFrame * position
		table.insert(triangleVerts, position)
	end

	table.insert(outputMesh, triangleVerts)
end

local function pushTransformedMesh(
	srcMesh: EditableMesh,
	transform: { CFrame: CFrame, scale: Vector3 },
	validationContext: ValidationContext,
	combinedMesh: { [number]: { [number]: Vector3 } }
)
	local triangles = srcMesh:GetFaces()
	for _, triangleId in triangles do
		addTransformedTriangle(srcMesh, triangleId, transform, combinedMesh)
		tryYield(validationContext)
	end
end

local function getViewSpaceMesh(
	meshTriangles: { [number]: { [number]: Vector3 } },
	viewTransform: CFrame
): ({ [number]: { [number]: Vector3 } }, { min: Vector3, max: Vector3 })
	-- viewTransform is calculated from CFrame:lookAlong() which is based on a model space in which -Z is forward, Y is up, and X is right
	-- TODO: Want viewspace to be Z forward?
	local worldToModelSpace = viewTransform:Inverse()

	local viewSpaceBounds = {
		min = Vector3.new(math.huge, math.huge, math.huge),
		max = Vector3.new(-math.huge, -math.huge, -math.huge),
	}
	local viewSpaceTriangles = {}
	for _, triangle in meshTriangles do
		local viewSpaceVertices = {}
		for _, vertex in triangle do
			local vsVert = worldToModelSpace * vertex
			table.insert(viewSpaceVertices, worldToModelSpace * vertex)
			viewSpaceBounds.min = viewSpaceBounds.min:Min(vsVert)
			viewSpaceBounds.max = viewSpaceBounds.max:Max(vsVert)
		end
		table.insert(viewSpaceTriangles, viewSpaceVertices)
	end

	return viewSpaceTriangles, viewSpaceBounds
end

local function getNormalizedCoordinates(
	viewSpaceTriangle: { [number]: Vector3 },
	viewSpaceCenter: Vector3,
	viewSpaceHalfSize: Vector3
)
	local normalizedCoordinates = {}
	for _, viewSpaceVert in viewSpaceTriangle do
		local normalizedVert = (viewSpaceVert - viewSpaceCenter) / viewSpaceHalfSize
		table.insert(normalizedCoordinates, normalizedVert)
	end

	return normalizedCoordinates
end

local function getIsNormalizedTriangleVisible(triangle: { [number]: Vector3 })
	local v1v2 = triangle[2] - triangle[1]
	local v1v3 = triangle[3] - triangle[1]

	local cross = v1v2:Cross(v1v3)
	-- normalized space is X to the right, Y up, Z out of the screen,
	-- the tri is CCW winding and thus, front facing, if the z component of the cross product of the legs is positive
	return cross.Z > 0.001
end

-- transforms the X,Y ranges [-1, 1], [-1, 1] => [0, screenSize.X - 1], [screenSize.Y - 1, 0]
local function normalizedSpaceToScreenSpace(normalizedCoordinate: Vector3, screenSize: Vector2)
	local screenCoordinate = Vector2.new(normalizedCoordinate.X, normalizedCoordinate.Y)
	screenCoordinate = (screenCoordinate * Vector2.new(0.5, -0.5)) + Vector2.new(0.5, 0.5)
	screenCoordinate = screenCoordinate * (screenSize - Vector2.new(1, 1))
	return screenCoordinate
end

local function rasterMesh(
	meshTriangles: { [number]: { [number]: Vector3 } },
	viewSpaceBounds: { min: Vector3, max: Vector3 },
	rasterHeight: number,
	validationContext: Types.ValidationContext
): EditableImage
	local meshSize = viewSpaceBounds.max - viewSpaceBounds.min
	local meshHalfSize = meshSize / 2
	local meshCenter = viewSpaceBounds.min + meshHalfSize

	local rasterAspect = meshSize.X / meshSize.Y
	local rasterWidth = rasterAspect * rasterHeight
	local rasterSize = Vector2.new(rasterWidth, rasterHeight)
	local rasterTarget = (AssetService :: any):CreateEditableImage({
		Size = rasterSize,
	})

	for _, viewSpaceTriangle in meshTriangles do
		local normalizedVertices = getNormalizedCoordinates(viewSpaceTriangle, meshCenter, meshHalfSize)
		if getIsNormalizedTriangleVisible(normalizedVertices) then
			local screenTriangle = {}
			for _, normalizedVert in normalizedVertices do
				local screenVert = normalizedSpaceToScreenSpace(normalizedVert, rasterSize)
				table.insert(screenTriangle, screenVert)
			end
			rasterTarget:DrawTriangle(screenTriangle[1], screenTriangle[2], screenTriangle[3], Color3.new(1, 1, 1), 0)
			tryYield(validationContext)
		end
	end

	return rasterTarget
end

local function createBodyAssetMasks(
	inst: Instance,
	views: { [string]: CFrame },
	validationContext: ValidationContext
): (boolean, { string } | { [string]: BodyAssetMaskEntry })
	local assetTypeEnum = validationContext.assetTypeEnum :: Enum.AssetType

	local meshParts = {}
	if inst:IsA("MeshPart") and validationContext.assetTypeEnum == Enum.AssetType.DynamicHead then
		table.insert(meshParts, inst :: MeshPart)
	else
		for _, child in inst:GetChildren() do
			if child:IsA("MeshPart") then
				table.insert(meshParts, child :: MeshPart)
			end
		end
	end

	local validationSpaceTransforms = getAssetMeshesValidationSpaceTransforms(inst, validationContext)

	local combinedMeshTris = {}
	for _, meshPart in meshParts do
		local success, srcMeshOpt = getEditableMeshFromContext(meshPart, "MeshId", validationContext)
		if not success then
			local errorMsg = string.format(
				"Failed to load mesh for MeshPart '%s'. Make sure mesh exists and try again.",
				meshPart.Name
			)
			if validationContext.isServer then
				error(errorMsg)
			else
				return false, { errorMsg }
			end
		end
		local srcMesh = srcMeshOpt :: EditableMesh
		srcMesh:Triangulate()

		local meshPartTransform = validationSpaceTransforms[meshPart.Name]
		pushTransformedMesh(srcMesh, meshPartTransform, validationContext, combinedMeshTris)
	end

	if #combinedMeshTris == 0 then
		return false, { string.format("Mesh for %s has no triangles.", assetTypeEnum.Name) }
	end

	local bodyAssetMasks = {}
	for viewKey, view in views do
		local viewSpaceMesh, viewSpaceBounds = getViewSpaceMesh(combinedMeshTris, view)
		local maskImageHeightSize = getFIntUGCValidationBodyAssetMaskHeightPixels()
		local meshMaskImage = rasterMesh(viewSpaceMesh, viewSpaceBounds, maskImageHeightSize, validationContext)
		local bodyAssetMaskEntry =
			{ mask = meshMaskImage, view = view, viewSpaceBounds = viewSpaceBounds } :: BodyAssetMaskEntry
		bodyAssetMasks[viewKey :: string] = bodyAssetMaskEntry
	end

	return true, bodyAssetMasks
end

function BodyAssetMasksRenderer.new(
	inst: Instance,
	viewIds: { string }?, -- this is an optional parameter. will default to rendering all views if this is nil
	validationContext: ValidationContext
): (boolean, { string } | BodyAssetMasksRenderer)
	local new = setmetatable({} :: BodyAssetMasksMembers, BodyAssetMasksRenderer)
	local viewsToRender = populateViewsToRender(viewIds)
	local success, result = createBodyAssetMasks(inst, viewsToRender, validationContext)
	if not success then
		return false, result :: { string }
	end
	new.bodyAssetMasks = result :: { [string]: BodyAssetMaskEntry }
	return true, new
end

function BodyAssetMasksRenderer:destroyBodyAssetMasks()
	for _, bodyAssetMask in self.bodyAssetMasks do
		if bodyAssetMask.mask then
			bodyAssetMask.mask:Destroy()
			bodyAssetMask.mask = nil
		end
	end
end

return BodyAssetMasksRenderer
