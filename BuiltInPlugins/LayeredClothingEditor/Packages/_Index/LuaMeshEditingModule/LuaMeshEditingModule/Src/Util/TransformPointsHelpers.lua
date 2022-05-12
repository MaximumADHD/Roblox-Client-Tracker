--[[
	Helper functions for translating/rotating/scaling vertices and control points.
	getTransformPoints, transfromControlPoints, and transformVertices take a
	transformFunc param, which will likely be translatePoint, scalePoint, or rotatePoint.
]]

local TransformPointsHelpers = {}

local function getTransformedPoints(context, points, weights, transformFunc)
	local changed = {}
	for meshName, pointWeightsForMesh in pairs(weights) do
		local meshOrigin = context:getMeshOrigin(meshName)
		if not changed[meshName] then
			changed[meshName] = {}
		end
		for index, weight in pairs(pointWeightsForMesh) do
			local position = points[meshName][index]
			local result = transformFunc(meshOrigin, position, weight)
			changed[meshName][index] = result
		end
	end
	return changed
end

function TransformPointsHelpers.transformControlPoints(context, controlPointPositions, pointWeights, transformFunc)
	local changed = getTransformedPoints(context, controlPointPositions, pointWeights, transformFunc)
	for meshName, changedPerMesh in pairs(changed) do
		local controlPointPositionsForMesh = controlPointPositions[meshName]
		for index, position in pairs(changedPerMesh) do
			assert(index <= #controlPointPositionsForMesh, "Vertex Index out of range.")
			controlPointPositionsForMesh[index] = position
		end
	end
end

function TransformPointsHelpers.transformVertices(context, pointWeights, transformFunc)
	local vertexData = context:getVertexData()
	local changed = getTransformedPoints(context, vertexData, pointWeights, transformFunc)
	context:updateVertexData(changed)
end

function TransformPointsHelpers.translatePoint(position, transform, meshOrigin, weight)
	local weightedTransform = (transform - transform.p) + (transform.p * weight)
	return meshOrigin:inverse() * (weightedTransform * (meshOrigin * position))
end

function TransformPointsHelpers.scalePoint(position, scale, pivot, meshOrigin, weight)
	local weightedScale = Vector3.new(
		(1 - scale.X) * (1 - weight) + scale.X,
		(1 - scale.Y) * (1 - weight) + scale.Y,
		(1 - scale.Z) * (1 - weight) + scale.Z)

	local relativeToScaleCenter = pivot:inverse() * (meshOrigin * position)
	return meshOrigin:inverse() * pivot * (weightedScale * relativeToScaleCenter)
end

function TransformPointsHelpers.rotatePoint(position, axis, angle, pivot, meshOrigin, weight)
	angle = angle * weight
	local weighted = CFrame.fromAxisAngle(axis, angle)
	local relativeToRotCenter = (meshOrigin * position) - pivot

	return meshOrigin:inverse() * ((weighted * relativeToRotCenter) + pivot)
end

return TransformPointsHelpers