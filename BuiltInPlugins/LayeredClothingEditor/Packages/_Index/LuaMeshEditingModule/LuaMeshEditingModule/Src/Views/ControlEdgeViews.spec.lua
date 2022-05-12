local CoreGui = game:GetService("CoreGui")
local TestHelpers = script.Parent.Parent.Util.TestHelpers
local MeshWrapperObjectTestHelper = require(TestHelpers.MeshWrapperObjectTestHelper)
local MeshEditingContextTestHelper = require(TestHelpers.MeshEditingContextTestHelper)
local CubeVertexPositions = MeshWrapperObjectTestHelper.positions
local ControlEdgeViews = require(script.Parent.ControlEdgeViews)
local ToolAdornees = require(script.Parent.ToolAdornees)

local edges1 = {
	["Cube1"] = {
		[1] = {
			Start = 1,
			End = 2,
		},
		[2] = {
			Start = 2,
			End = 4,
		},
		[3] = {
			Start = 1,
			End = 3,
		},
	},
}

local positions1 = {
	["Cube1"] = CubeVertexPositions,
}

local edges2 = {
	["Cube1"] = {
		[1] = {
			Start = 3,
			End = 4,
		},
		[2] = {
			Start = 5,
			End = 7,
		},
	},
}

local edges3 = {
	["Cube1"] = {
		[1] = {
			Start = 1,
			End = 2,
		},
		[2] = {
			Start = 2,
			End = 4,
		},
		[3] = {
			Start = 1,
			End = 3,
		},
	},
	["Cube2"] = {
		[1] = {
			Start = 3,
			End = 4,
		},
		[2] = {
			Start = 5,
			End = 7,
		},
	},
}

local positions2 = {
	["Cube1"] = CubeVertexPositions,
	["Cube2"] = CubeVertexPositions,
}

return function()
	it("should create and destroy without errors", function()
		local controlEdgeViews = ControlEdgeViews.new()
		expect(controlEdgeViews).to.be.ok()
		controlEdgeViews:cleanup()
	end)

	it("should render correctly", function()
		local cube1, context = MeshEditingContextTestHelper.createContextWithSingleWrapper()

		local toolAdornees = ToolAdornees.new(context)
		toolAdornees:render()

		local controlEdgeViews = ControlEdgeViews.new(context)
		controlEdgeViews:render({
			Adornees = toolAdornees,
			ControlPointPositions = positions1,
			ControlPointEdges = edges1,
			Transparency = 0,
			SelectedMesh = nil,
		})

		local controlEdgeViewsFolder = CoreGui:FindFirstChild("ControlEdgeViews")
		expect(controlEdgeViewsFolder).to.be.ok()

		local lineHandles = controlEdgeViewsFolder:GetChildren()
		expect(#lineHandles).to.equal(3)

		cube1:Destroy()
		controlEdgeViews:cleanup()
		toolAdornees:cleanup()
	end)

	it("should render correctly after number of control edges changes", function()
		local cube1, context = MeshEditingContextTestHelper.createContextWithSingleWrapper()

		local toolAdornees = ToolAdornees.new(context)
		toolAdornees:render()

		local controlEdgeViews = ControlEdgeViews.new(context)
		controlEdgeViews:render({
			Adornees = toolAdornees,
			ControlPointPositions = positions1,
			ControlPointEdges = edges1,
			Transparency = 0,
			SelectedMesh = nil,
		})

		controlEdgeViews:render({
			Adornees = toolAdornees,
			ControlPointPositions = positions1,
			ControlPointEdges = edges2,
			Transparency = 0,
			SelectedMesh = nil,
		})

		local controlEdgeViewsFolder = CoreGui:FindFirstChild("ControlEdgeViews")
		expect(controlEdgeViewsFolder).to.be.ok()

		local lineHandles = controlEdgeViewsFolder:GetChildren()
		expect(#lineHandles).to.equal(2)

		cube1:Destroy()
		controlEdgeViews:cleanup()
		toolAdornees:cleanup()
	end)

	it("should render correctly with SelectedMesh set", function()
		local cube1, cube2, context = MeshEditingContextTestHelper.createContextWithTwoWrappers()

		local toolAdornees = ToolAdornees.new(context)
		toolAdornees:render()

		local controlEdgeViews = ControlEdgeViews.new(context)
		controlEdgeViews:render({
			Adornees = toolAdornees,
			ControlPointPositions = positions2,
			ControlPointEdges = edges3,
			Transparency = 0,
			SelectedMesh = "Cube2",
		})

		local controlEdgeViewsFolder = CoreGui:FindFirstChild("ControlEdgeViews")
		expect(controlEdgeViewsFolder).to.be.ok()

		local lineHandles = controlEdgeViewsFolder:GetChildren()
		expect(#lineHandles).to.equal(2)

		cube1:Destroy()
		cube2:Destroy()
		controlEdgeViews:cleanup()
		toolAdornees:cleanup()
	end)

	it("should render correctly with rename", function()
		local cube1, context = MeshEditingContextTestHelper.createContextWithSingleWrapper()

		local toolAdornees = ToolAdornees.new(context)
		toolAdornees:render()

		local controlEdgeViews = ControlEdgeViews.new(context)
		controlEdgeViews:render({
			Adornees = toolAdornees,
			ControlPointPositions = positions1,
			ControlPointEdges = edges1,
			Transparency = 0,
			SelectedMesh = nil,
		})

		local controlEdgeViewsFolder = CoreGui:FindFirstChild("ControlEdgeViews")
		expect(controlEdgeViewsFolder).to.be.ok()
		controlEdgeViewsFolder.Name = "test"
		expect(controlEdgeViewsFolder.Name).to.equal("ControlEdgeViews")

		cube1:Destroy()
		controlEdgeViews:cleanup()
		toolAdornees:cleanup()
	end)
end
