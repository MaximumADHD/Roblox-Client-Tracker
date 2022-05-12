local Workspace = game.Workspace

local deepCopy = require(script.Parent.Parent.deepCopy)

local MeshWrapperObjectTestHelper = {}

MeshWrapperObjectTestHelper.positions = {
	Vector3.new(0, 0, 1),
	Vector3.new(0, 1, 1),
	Vector3.new(0, 0, 0),
	Vector3.new(0, 1, 0),
	Vector3.new(1, 0, 0),
	Vector3.new(1, 1, 0),
	Vector3.new(1, 0, 1),
	Vector3.new(1, 1, 1),
}

MeshWrapperObjectTestHelper.triangles = {
	{ 1, 2, 4 },
	{ 1, 3, 4 },
	{ 3, 4, 6 },
	{ 3, 5, 6 },
	{ 1, 3, 5 },
	{ 1, 5, 7 },
	{ 2, 4, 8 },
	{ 4, 6, 8 },
	{ 5, 6, 8 },
	{ 5, 7, 8 },
	{ 2, 7, 8 },
	{ 1, 2, 7 },
}

local SimpleCubeWrapper1 = {}
SimpleCubeWrapper1.__index = SimpleCubeWrapper1

function SimpleCubeWrapper1.new(meshPart)
	local simpleCubeWrapper1Object = setmetatable({}, SimpleCubeWrapper1)
	simpleCubeWrapper1Object.instance = meshPart
	function simpleCubeWrapper1Object:getVertices()
		return deepCopy(MeshWrapperObjectTestHelper.positions)
	end
	function simpleCubeWrapper1Object:getTriangleIndexData()
		return deepCopy(MeshWrapperObjectTestHelper.triangles)
	end
	function simpleCubeWrapper1Object:getMeshOrigin()
		return CFrame.new(0, 0, 0)
	end

	return simpleCubeWrapper1Object
end

local SimpleCubeWrapper2 = {}
SimpleCubeWrapper2.__index = SimpleCubeWrapper2

function SimpleCubeWrapper2.new(meshPart)
	local simpleCubeWrapper2Object = setmetatable({}, SimpleCubeWrapper2)
	simpleCubeWrapper2Object.instance = meshPart
	function simpleCubeWrapper2Object:getVertices()
		return deepCopy(MeshWrapperObjectTestHelper.positions)
	end
	function simpleCubeWrapper2Object:getTriangleIndexData()
		return deepCopy(MeshWrapperObjectTestHelper.triangles)
	end
	function simpleCubeWrapper2Object:getMeshOrigin()
		return CFrame.new(0, 1, 0)
	end

	return simpleCubeWrapper2Object
end

MeshWrapperObjectTestHelper.getWrappers = function()
	local meshPart1 = Instance.new("MeshPart")
	meshPart1.Name = "Cube1"
	meshPart1.Parent = Workspace

	local meshPart2 = Instance.new("MeshPart")
	meshPart2.Name = "Cube2"
	meshPart2.Parent = Workspace

	return {
		SimpleCubeWrapper1.new(meshPart1),
		SimpleCubeWrapper2.new(meshPart2),
	}
end

return MeshWrapperObjectTestHelper
