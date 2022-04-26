--[[
	Helper function to identify seams across a group of meshes. Some meshes contain duplicate
	vertices within a single mesh, which we also try to keep track of.

	The algorithm works by sorting each vertex into buckets after being multiplied up by a 
	certain precision amount, then attempts to index with vertex positions of the other mesh
	to find matches.

	Returns a table of duplicate/seam vertices for each vertex across all provided meshes.
]]


-- Unfortunately, this is the highest precision we can go before we start missing duplicate vertices.
local MULTIPLIER = 100

local function findSeams(context, meshName, otherMeshName, seamData)
	local roundedValues = {}
	local sameSet = meshName == otherMeshName

	local vertexData = context.GetVertexData()
	local verticesForMesh = vertexData[meshName]
	local partCFrame = context.GetMeshOrigin(meshName)
	for index, vertex in pairs(verticesForMesh) do
		local position = partCFrame * vertex
		local x = math.floor(position.X * MULTIPLIER)
		local y = math.floor(position.Y * MULTIPLIER)
		local z = math.floor(position.Z * MULTIPLIER)

		if not roundedValues[x] then roundedValues[x] = {} end
		if not roundedValues[x][y] then roundedValues[x][y] = {} end
		if not roundedValues[x][y][z] then roundedValues[x][y][z] = {} end

		table.insert(roundedValues[x][y][z], index)
	end

	local verticesForOtherMesh = vertexData[otherMeshName]
	local otherPartCFrame = context.GetMeshOrigin(otherMeshName)
	for otherIndex, otherVertex in pairs(verticesForOtherMesh) do
		local position = otherPartCFrame * otherVertex
		local x = math.floor(position.X * MULTIPLIER)
		local y = math.floor(position.Y * MULTIPLIER)
		local z = math.floor(position.Z * MULTIPLIER)

		local matches = roundedValues[x] and roundedValues[x][y] and roundedValues[x][y][z]
		if matches then
			for _, index in ipairs(matches) do
				if not sameSet or (sameSet and index ~= otherIndex) then
					if not seamData[meshName] then
						seamData[meshName] = {}
					end
					seamData[meshName][index] = {
						Index = otherIndex,
						MeshName = otherMeshName,
					}

					if not seamData[otherMeshName] then
						seamData[otherMeshName] = {}
					end
					seamData[otherMeshName][otherIndex] = {
						Index = index,
						MeshName = meshName,
					}
				end
			end
		end
	end
end

return function(context, meshWrapperObjects)
	local seamData = {}
	for _, meshWrapperObject in ipairs(meshWrapperObjects) do
		local instance = meshWrapperObject.instance
		local part = if instance:IsA("MeshPart") then instance else instance:FindFirstAncestorOfClass("MeshPart")
		if not part then
			continue
		end

		findSeams(context, instance.Name, instance.Name, seamData)
		
		local motor = part:FindFirstChildOfClass("Motor6D")
		if not motor then
			continue
		end
		local connectedPart = motor.Part0
		if not connectedPart then
			continue
		end

		local wrapFromConnectedPart = connectedPart:FindFirstChildWhichIsA("BaseWrap")
		if wrapFromConnectedPart then
			findSeams(context, instance.Name, wrapFromConnectedPart.Name, seamData)
		end
	end

	return seamData
end