--[[
	Soft-Selection algorithm based on a falloff. From the current vertex, a bfs
	is used to travel along its neighbors until a distance threshold is reached,
	with points being weighted along the way. If a seam vertex is hit, we search for
	the corresponding vertex on the other mesh in order to continue traveling.
]]


local Util = script.Parent
local deepCopy = require(Util.deepCopy)

local function weightPreSelectedPoints(selectedPoints)
	local pointWeights = {}
	for _, clickedPoint in ipairs(selectedPoints) do
		if not pointWeights[clickedPoint.MeshName] then
			pointWeights[clickedPoint.MeshName] = {}
		end
		pointWeights[clickedPoint.MeshName][clickedPoint.Index] = 1
	end
	return pointWeights
end

local function shouldWeightPoint(pointWeights, meshName, index)
	return not pointWeights[meshName] or pointWeights[meshName][index] == nil or pointWeights[meshName][index] < 1
end

local function setPointWeight(pointWeights, meshName, index, distance, falloff)
	local weight = 1 - (distance / falloff)
	if not pointWeights[meshName] then
		pointWeights[meshName] = {}
	end
	if not pointWeights[meshName][index] then
		pointWeights[meshName][index] = 0
	end
	local selectedPointWeight = pointWeights[meshName][index]
	pointWeights[meshName][index] = math.max(selectedPointWeight, math.clamp(weight, 0, 1))
end

local function addNeighborsToQueue(context, queue, pointWeights, falloff, current)
	local vertexData = context.VertexData
	local triangleIndexData = context.TriangleIndexData
	local vertexTriangleIndexData = context.VertexTriangleIndexData

	local position = vertexData[current.MeshName][current.Index]
	local faces = vertexTriangleIndexData[current.MeshName][current.Index]
	for _, faceIndex in ipairs(faces) do
		local face = triangleIndexData[current.MeshName][faceIndex]
		for _, vi in ipairs(face) do
			if vi ~= current.Index then
				local nextPosition = vertexData[current.MeshName][vi]
				local distance = (nextPosition - position).Magnitude
				if current.Distance + distance < falloff and shouldWeightPoint(pointWeights, current.MeshName, vi) then
					table.insert(queue, {
						Index = vi,
						MeshName = current.MeshName,
						Distance = current.Distance + distance,
					})
				end
			end
		end
	end
end

local function checkSeams(context, queue, pointWeights, falloff, current)
	local seamData = context.SeamData

	local linkPoints = seamData[current.MeshName] and seamData[current.MeshName][current.Index]
	if linkPoints then
		for _, linkPoint in ipairs(linkPoints) do
			if current.Distance < falloff and shouldWeightPoint(pointWeights, linkPoint.MeshName, linkPoint.Index) then
				table.insert(queue, {
					Index = linkPoint.Index,
					MeshName = linkPoint.MeshName,
					Distance = current.Distance,
				})
			end
		end
	end
end

local function makeStartingQueue(context, pointWeights, selectedPoints, falloff)
	local queue = {}

	for _, clickedPoint in ipairs(selectedPoints) do
		local current = {
			MeshName = clickedPoint.MeshName,
			Index = clickedPoint.Index,
			Distance = 0,
		}
		addNeighborsToQueue(context, queue, pointWeights, falloff, current)
		checkSeams(context, queue, pointWeights, falloff, current)
	end

	return queue
end

local function softSelect(context, pointWeights, selectedPoints, falloff)
	if falloff == 0 then
		return
	end

	local visited = deepCopy(pointWeights)

	local queue = makeStartingQueue(context, pointWeights, selectedPoints, falloff)

	-- bfs of mesh using vertex indices from faces to see how points are connected
	while #queue > 0 do
		local current = queue[1]

		if shouldWeightPoint(pointWeights, current.MeshName, current.Index) then
			local distance = current.Distance
			if distance < falloff then
				setPointWeight(pointWeights, current.MeshName, current.Index, distance, falloff)
			end
		else
			current.Distance = 0
		end

		if not visited[current.MeshName] then
			visited[current.MeshName] = {}
		end

		if visited[current.MeshName][current.Index] == nil then
			visited[current.MeshName][current.Index] = true
			addNeighborsToQueue(context, queue, pointWeights, falloff, current)
			checkSeams(context, queue, pointWeights, falloff, current)
		end

		table.remove(queue, 1)
	end
end

return function(context, selectedPoints, falloff)
	-- Cache the context data we need into a table before we start looping.
	-- This avoids a bunch of unnecessary deepCopy calls.
	local contextInfo = {
		VertexData = context:getVertexData(),
		SeamData = context:getSeamData(),
		VertexTriangleIndexData = context:getVertexTriangleIndexData(),
		TriangleIndexData = context:getTriangleIndexData(),
	}
	local pointWeights = weightPreSelectedPoints(selectedPoints)
	softSelect(contextInfo, pointWeights, selectedPoints, falloff)
	return pointWeights
end