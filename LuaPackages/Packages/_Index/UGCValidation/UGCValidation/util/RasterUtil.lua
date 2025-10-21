--[[
rasterMesh:
	orthographically projects input mesh data and then rasterizes it to an EditableImage for output
]]

local AssetService = game:GetService("AssetService")

local root = script.Parent.Parent

local Types = require(root.util.Types)
local tryYield = require(root.util.tryYield)

local RasterUtil = {}

export type View = {
	axis1: Vector3,
	axis2: Vector3,
	normal: Vector3,
	viewId: string,
}

export type MeshData = {
	{
		normal: Vector3,
		orderedVerts: { Vector3 },
	}
}

local function orthoProjectCoordinate(axis1: Vector3, axis2: Vector3, position: Vector3)
	local u = axis1:Dot(position)
	local v = axis2:Dot(position)

	return Vector2.new(u, v)
end

local function shouldRenderTriangle(normal: Vector3, planeNormal: Vector3): boolean
	return normal:Dot(planeNormal) < 0
end

function RasterUtil.shouldRenderTriangle_UNIT_TEST(normal: Vector3, planeNormal: Vector3): boolean
	return shouldRenderTriangle(normal, planeNormal)
end

local function getScreenCoordinatesForTriangle(
	triangleVerts: { Vector3 },
	rasterSize: Vector2,
	view: View,
	meshCenter: Vector3,
	meshSize: Vector3
)
	local p1_world = triangleVerts[1]
	local p2_world = triangleVerts[2]
	local p3_world = triangleVerts[3]

	local p1_local = (CFrame.new(meshCenter):Inverse() * p1_world)
	local p2_local = (CFrame.new(meshCenter):Inverse() * p2_world)
	local p3_local = (CFrame.new(meshCenter):Inverse() * p3_world)

	local meshHalfSize = meshSize / 2
	local p1_normalized = (p1_local + meshHalfSize) / meshSize
	local p2_normalized = (p2_local + meshHalfSize) / meshSize
	local p3_normalized = (p3_local + meshHalfSize) / meshSize

	local ortho1 = orthoProjectCoordinate(view.axis1, view.axis2, p1_normalized) * (rasterSize - Vector2.new(1, 1))
	local ortho2 = orthoProjectCoordinate(view.axis1, view.axis2, p2_normalized) * (rasterSize - Vector2.new(1, 1))
	local ortho3 = orthoProjectCoordinate(view.axis1, view.axis2, p3_normalized) * (rasterSize - Vector2.new(1, 1))

	return ortho1, ortho2, ortho3
end

function RasterUtil.rasterMesh(
	meshData: MeshData,
	rasterSize: Vector2,
	view: View,
	meshCenter: Vector3,
	meshSize: Vector3,
	validationContext: Types.ValidationContext
)
	local rasterTarget = (AssetService :: any):CreateEditableImage({
		Size = rasterSize,
	})

	for _, triangle in meshData do
		if not shouldRenderTriangle(triangle.normal, view.normal) then
			continue
		end

		local ortho1, ortho2, ortho3 =
			getScreenCoordinatesForTriangle(triangle.orderedVerts, rasterTarget.Size, view, meshCenter, meshSize)
		rasterTarget:DrawTriangle(ortho1, ortho2, ortho3, Color3.new(1, 1, 1), 0)
		tryYield(validationContext)
	end

	return rasterTarget
end

return RasterUtil
