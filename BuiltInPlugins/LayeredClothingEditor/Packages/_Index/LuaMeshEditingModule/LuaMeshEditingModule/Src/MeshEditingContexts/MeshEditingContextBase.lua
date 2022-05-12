--[[
	Base implementation of a context item for the mesh editing module. Must be init
	with an array of MeshWrapperObjects, which provide a thin wrapper around whatever
	API you want to use to fetch vertex and triangle data from an instance.

	Also manages what tool (point/lattice/etc) you are currently using.
]]

local LuaMeshEditingModule = script.Parent.Parent.Parent
local Packages = LuaMeshEditingModule.Packages

local Dash = require(Packages.Dash)
local join = Dash.join

local Util = LuaMeshEditingModule.Src.Util
local Signal = require(Util.Signal)
local buildSeamData = require(Util.buildSeamData)
local deepCopy = require(Util.deepCopy)

local MeshEditingContextBase = {}
MeshEditingContextBase.__index = MeshEditingContextBase

function MeshEditingContextBase.new()
	local meshEditingContextBaseObject = setmetatable({}, MeshEditingContextBase)

	-- private variables
	local _meshesData
	local _seamData
	local _meshDataChanged = Signal.new()
	local _meshesDataBackup

	-- private functions
	local function _makeVertexTriangleIndexData(meshName, vertexData, triangleIndexData)
		local vertexTriangleIndexData = {}

		for triangleIndex, triangle in ipairs(triangleIndexData) do
			for _, vertexIndex in ipairs(triangle) do
				if not vertexTriangleIndexData[vertexIndex] then
					vertexTriangleIndexData[vertexIndex] = {}
				end
				table.insert(vertexTriangleIndexData[vertexIndex], triangleIndex)
			end
		end

		--verify
		for index, vertex in ipairs(vertexData) do
			if not vertexTriangleIndexData[index] then
				error("Vertex index: " .. index .. " is not a part of any triangle in mesh: " .. meshName)
			end
		end

		return vertexTriangleIndexData
	end

	-- public functions
	function meshEditingContextBaseObject:init(meshWrapperObjects)
		if not meshWrapperObjects then
			return
		end

		_meshesData = {}
		for _, meshWrapperObject in ipairs(meshWrapperObjects) do
			assert(meshWrapperObject.instance, "MeshWrapperObject missing variable: Instance")
			assert(meshWrapperObject.getVertices, "MeshWrapperObject missing function: GetVertices")
			assert(meshWrapperObject.getTriangleIndexData, "MeshWrapperObject missing function: GetTriangleIndexData")
			assert(meshWrapperObject.getMeshOrigin, "MeshWrapperObject missing function: GetMeshOrigin")

			local meshName = meshWrapperObject.instance.Name
			assert(
				_meshesData[meshName] == nil,
				"Instance: "
					.. meshName
					.. " shares a name with another Instance in MeshWrapperObjects, please make sure your instances are uniquely named."
			)
			_meshesData[meshName] = {}
			local currentMeshData = _meshesData[meshName]
			currentMeshData.VertexData = meshWrapperObject:getVertices()
			currentMeshData.TriangleIndexData = meshWrapperObject:getTriangleIndexData()
			currentMeshData.VertexTriangleIndexData = _makeVertexTriangleIndexData(
				meshName,
				currentMeshData.VertexData,
				currentMeshData.TriangleIndexData
			)
			currentMeshData.MeshOrigin = meshWrapperObject:getMeshOrigin()
		end
		_meshesDataBackup = deepCopy(_meshesData)

		_seamData = buildSeamData(self, meshWrapperObjects)
	end

	function meshEditingContextBaseObject:getVertexData()
		if not _meshesData then
			return {}
		end

		local vertexData = {}
		for meshName, data in pairs(_meshesData) do
			vertexData[meshName] = join(data.VertexData)
		end
		return vertexData
	end

	function meshEditingContextBaseObject:getTriangleIndexData()
		if not _meshesData then
			return {}
		end

		local triangleIndexData = {}
		for meshName, data in pairs(_meshesData) do
			triangleIndexData[meshName] = deepCopy(data.TriangleIndexData)
		end
		return triangleIndexData
	end

	function meshEditingContextBaseObject:getVertexTriangleIndexData()
		if not _meshesData then
			return {}
		end

		local vertexTriangleIndexData = {}
		for meshName, data in pairs(_meshesData) do
			vertexTriangleIndexData[meshName] = deepCopy(data.VertexTriangleIndexData)
		end
		return vertexTriangleIndexData
	end

	function meshEditingContextBaseObject:getSeamData()
		return deepCopy(_seamData)
	end

	function meshEditingContextBaseObject:getTriangleNormals()
		-- todo AVBURST-7426
	end

	function meshEditingContextBaseObject:getVertexNormals()
		-- todo AVBURST-7426
	end

	function meshEditingContextBaseObject:getMeshOrigin(meshName)
		if not _meshesData or not _meshesData[meshName] then
			return
		end

		return _meshesData[meshName].MeshOrigin
	end

	function meshEditingContextBaseObject:updateVertexData(changedVertices)
		if not _meshesData then
			return
		end

		local changedVerticesCopy = deepCopy(changedVertices)
		for meshName, changedVerticesPerMesh in pairs(changedVertices) do
			local seamDataForMesh = _seamData[meshName] or {}
			for index, position in pairs(changedVerticesPerMesh) do
				local seamVertices = seamDataForMesh[index] or {}
				for _, seamVertex in ipairs(seamVertices) do
					if not changedVerticesCopy[seamVertex.MeshName] then
						changedVerticesCopy[seamVertex.MeshName] = {}
					end

					changedVerticesCopy[seamVertex.MeshName][seamVertex.Index] = position
				end
			end
		end

		for meshName, changedVerticesPerMesh in pairs(changedVerticesCopy) do
			local vertexDataForMesh = _meshesData[meshName].VertexData
			if not vertexDataForMesh then
				error("No vertex data found for mesh: " .. meshName)
				continue
			end
			for index, position in pairs(changedVerticesPerMesh) do
				assert(index <= #vertexDataForMesh, "Vertex Index out of range.")
				vertexDataForMesh[index] = position
			end
		end

		_meshDataChanged:Fire()
	end

	function meshEditingContextBaseObject:resetVertexData()
		_meshesData = deepCopy(_meshesDataBackup)
		_meshDataChanged:Fire()
	end

	return meshEditingContextBaseObject
end

return MeshEditingContextBase
