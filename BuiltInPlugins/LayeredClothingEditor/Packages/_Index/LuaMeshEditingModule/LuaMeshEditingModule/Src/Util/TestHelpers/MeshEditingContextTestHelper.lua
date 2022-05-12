local Workspace = game.Workspace
local MeshEditingContextTestHelper = {}

local MeshWrapperObjectTestHelper = require(script.Parent.MeshWrapperObjectTestHelper)
local MeshEditingContextBase = require(script.Parent.Parent.Parent.MeshEditingContexts.MeshEditingContextBase)

function MeshWrapperObjectTestHelper.createContextWithSingleWrapper()
	local wrappers = MeshWrapperObjectTestHelper.getWrappers()
	local cubeMeshWrapper1 = wrappers[1]
	local context = MeshEditingContextBase.new()
	local cube1 = Workspace:FindFirstChild("Cube1")
	local cube2 = Workspace:FindFirstChild("Cube2")
	cube2:Destroy()

	context:init({
		cubeMeshWrapper1,
	})

	return cube1, context
end

function MeshWrapperObjectTestHelper.createContextWithTwoWrappers()
	local wrappers = MeshWrapperObjectTestHelper.getWrappers()
	local cubeMeshWrapper1 = wrappers[1]
	local cubeMeshWrapper2 = wrappers[2]
	local context = MeshEditingContextBase.new()
	local cube1 = Workspace:FindFirstChild("Cube1")
	cube1.Name = "Cube1"
	local wrapLayer = Instance.new("WrapLayer")
	wrapLayer.Name = "Cube1"
	wrapLayer.Parent = cube1
	local cube2 = Workspace:FindFirstChild("Cube2")
	local motor = Instance.new("Motor6D")
	motor.Part0 = cube1
	motor.Part1 = cube2
	cube2.Name = "Cube2"
	motor.Parent = cube2

	context:init({
		cubeMeshWrapper1,
		cubeMeshWrapper2,
	})

	return cube1, cube2, context
end

return MeshWrapperObjectTestHelper
