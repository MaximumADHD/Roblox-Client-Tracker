local CoreGui = game:GetService("CoreGui")
local Util = script.Parent.Parent.Util
local TestHelpers = Util.TestHelpers
local Constants = require(Util.Constants)
local MeshWrapperObjectTestHelper = require(TestHelpers.MeshWrapperObjectTestHelper)
local MeshEditingContextTestHelper = require(TestHelpers.MeshEditingContextTestHelper)
local CubeVertexPositions = MeshWrapperObjectTestHelper.positions
local ControlPointViews = require(script.Parent.ControlPointViews)
local ToolAdornees = require(script.Parent.ToolAdornees)

local positions1 = {
	["Cube1"] = CubeVertexPositions,
	["Cube2"] = {Vector3.new(0, 0, 0)},
}

local positions2 = {
	["Cube1"] = CubeVertexPositions,
}

return function()
	it("should create and destroy without errors", function()
		local controlPointViews = ControlPointViews.new()
		expect(controlPointViews).to.be.ok()
		controlPointViews:cleanup()
	end)

	it("should render correctly", function()
		local cube1, context = MeshEditingContextTestHelper.createContextWithSingleWrapper()

		local toolAdornees = ToolAdornees.new(context)
		toolAdornees:render()

		local controlPointViews = ControlPointViews.new(context)
		controlPointViews:render({
			Adornees = toolAdornees,
			ControlPointPositions = positions2,
			Transparency = 0,
			IsSelected = function()
				return false
			end,
			IsHovered = function()
				return false
			end,
			SelectedMesh = nil,
		})

		local controlPointViewsFolder = CoreGui:FindFirstChild("ControlPointViews")
		expect(controlPointViewsFolder).to.be.ok()

		local sphereHandles = controlPointViewsFolder:GetChildren()
		expect(#sphereHandles).to.equal(8)

		local controlPointViewsPartsFolder = game.Workspace:FindFirstChild("ControlPoints")
		expect(controlPointViewsPartsFolder).to.be.ok()
		local controlPointParts = controlPointViewsPartsFolder:GetChildren()
		expect(#controlPointParts).to.equal(8)

		cube1:Destroy()
		controlPointViews:cleanup()
		toolAdornees:cleanup()
	end)

	it("should render correctly after number of control points changes", function()
		local cube1, context = MeshEditingContextTestHelper.createContextWithSingleWrapper()

		local toolAdornees = ToolAdornees.new(context)
		toolAdornees:render()

		local controlPointViews = ControlPointViews.new(context)
		controlPointViews:render({
			Adornees = toolAdornees,
			ControlPointPositions = positions2,
			Transparency = 0,
			IsSelected = function()
				return false
			end,
			IsHovered = function()
				return false
			end,
			SelectedMesh = nil,
		})

		controlPointViews:render({
			Adornees = toolAdornees,
			ControlPointPositions = {
				["Cube1"] = {
					Vector3.new(0, 0, 0),
				},
			},
			Transparency = 0,
			IsSelected = function()
				return false
			end,
			IsHovered = function()
				return false
			end,
			SelectedMesh = nil,
		})

		local controlPointViewsFolder = CoreGui:FindFirstChild("ControlPointViews")
		expect(controlPointViewsFolder).to.be.ok()

		local sphereHandles = controlPointViewsFolder:GetChildren()
		expect(#sphereHandles).to.equal(1)

		local controlPointViewsPartsFolder = game.Workspace:FindFirstChild("ControlPoints")
		expect(controlPointViewsPartsFolder).to.be.ok()
		local controlPointParts = controlPointViewsPartsFolder:GetChildren()
		expect(#controlPointParts).to.equal(1)

		cube1:Destroy()
		controlPointViews:cleanup()
		toolAdornees:cleanup()
	end)

	it("should render correctly with SelectedMesh set", function()
		local cube1, cube2, context = MeshEditingContextTestHelper.createContextWithTwoWrappers()

		local toolAdornees = ToolAdornees.new(context)
		toolAdornees:render()

		local controlPointViews = ControlPointViews.new(context)
		controlPointViews:render({
			Adornees = toolAdornees,
			ControlPointPositions = positions1,
			Transparency = 0,
			IsSelected = function()
				return false
			end,
			IsHovered = function()
				return false
			end,
			SelectedMesh = "Cube2",
		})

		local controlPointViewsFolder = CoreGui:FindFirstChild("ControlPointViews")
		expect(controlPointViewsFolder).to.be.ok()

		local sphereHandles = controlPointViewsFolder:GetChildren()
		expect(#sphereHandles).to.equal(1)

		local controlPointViewsPartsFolder = game.Workspace:FindFirstChild("ControlPoints")
		expect(controlPointViewsPartsFolder).to.be.ok()
		local controlPointParts = controlPointViewsPartsFolder:GetChildren()
		expect(#controlPointParts).to.equal(1)

		cube1:Destroy()
		cube2:Destroy()
		controlPointViews:cleanup()
		toolAdornees:cleanup()
	end)

	it("should render correctly with rename", function()
		local cube1, context = MeshEditingContextTestHelper.createContextWithSingleWrapper()

		local toolAdornees = ToolAdornees.new(context)
		toolAdornees:render()

		local controlPointViews = ControlPointViews.new(context)
		controlPointViews:render({
			Adornees = toolAdornees,
			ControlPointPositions = positions2,
			Transparency = 0,
			IsSelected = function()
				return false
			end,
			IsHovered = function()
				return false
			end,
			SelectedMesh = nil,
		})

		local controlPointViewsFolder = CoreGui:FindFirstChild("ControlPointViews")
		expect(controlPointViewsFolder).to.be.ok()
		controlPointViewsFolder.Name = "test"
		expect(controlPointViewsFolder.Name).to.equal("ControlPointViews")

		local controlPointViewsPartsFolder = game.Workspace:FindFirstChild("ControlPoints")
		expect(controlPointViewsPartsFolder).to.be.ok()
		controlPointViewsPartsFolder.Name = "test"
		expect(controlPointViewsPartsFolder.Name).to.equal("ControlPoints")

		cube1:Destroy()
		controlPointViews:cleanup()
		toolAdornees:cleanup()
	end)
end
