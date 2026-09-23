--[[
transformTriangleToWorld:
	takes in triangle verts and transforms them to world space
]]

local TransparencyUtil = {}

function TransparencyUtil.transformTriangleToWorld(
	p1_local: Vector3,
	p2_local: Vector3,
	p3_local: Vector3,
	origin: CFrame,
	scale: Vector3
): (Vector3, Vector3, Vector3, Vector3)
	local p1_world = origin * (p1_local * scale)
	local p2_world = origin * (p2_local * scale)
	local p3_world = origin * (p3_local * scale)

	local edge1 = p2_world - p1_world
	local edge2 = p3_world - p1_world
	local normal = edge1:Cross(edge2).Unit

	return p1_world, p2_world, p3_world, normal
end

return TransparencyUtil
