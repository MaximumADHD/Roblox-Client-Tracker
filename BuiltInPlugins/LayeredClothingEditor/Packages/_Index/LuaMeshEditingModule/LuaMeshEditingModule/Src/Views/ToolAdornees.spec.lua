local Util = script.Parent.Parent.Util
local TestHelpers = Util.TestHelpers
local Constants = require(Util.Constants)
local MeshEditingContextTestHelper = require(TestHelpers.MeshEditingContextTestHelper)

return function()
	local MeshEditingContextBase = require(script.Parent.Parent.MeshEditingContexts.MeshEditingContextBase)
	local ToolAdornees = require(script.Parent.ToolAdornees)

	it("should create and destroy without errors", function()
		local context = MeshEditingContextBase.new()
		local toolAdornees = ToolAdornees.new(context)
		expect(toolAdornees).to.be.ok()
		toolAdornees:cleanup()
		expect(#toolAdornees.meshNames).to.equal(0)
		expect(#toolAdornees.controlPointAdornees).to.equal(0)
	end)

	it("should render correctly", function()
		local cube1, context = MeshEditingContextTestHelper.createContextWithSingleWrapper()

		local toolAdornees = ToolAdornees.new(context)
		toolAdornees:render()

		expect(#toolAdornees.meshNames).to.equal(1)
		expect(toolAdornees.meshNames[1]).to.equal("Cube1")

		local controlPointsFolder = game.Workspace:FindFirstChild(Constants.ControlPointsFolderName)
		expect(controlPointsFolder).to.be.ok()

		local adorneeInstance = controlPointsFolder:FindFirstChild("Cube1")
		expect(adorneeInstance).to.be.ok()
		expect(#controlPointsFolder:GetChildren()).to.equal(1)

		local controlPointsFolderTable = toolAdornees.controlPointAdornees.ControlPoints
		expect(controlPointsFolderTable).to.be.ok()
		expect(controlPointsFolderTable.Instance).to.equal(controlPointsFolder)
		expect(controlPointsFolderTable.Children).to.be.ok()
		expect(controlPointsFolderTable.Children["Cube1"]).to.be.ok()
		expect(controlPointsFolderTable.Children["Cube1"].Instance).to.equal(adorneeInstance)

		toolAdornees:cleanup()
		expect(#toolAdornees.meshNames).to.equal(0)
		expect(#toolAdornees.controlPointAdornees).to.equal(0)

		cube1:Destroy()
	end)

	it("should render correctly with rename", function()
		local cube1, context = MeshEditingContextTestHelper.createContextWithSingleWrapper()

		local toolAdornees = ToolAdornees.new(context)
		toolAdornees:render()

		local controlPointsFolder = toolAdornees.controlPointAdornees.ControlPoints.Instance
		controlPointsFolder.Name = "test"
		expect(controlPointsFolder.Name).to.equal(Constants.ControlPointsFolderName)

		cube1:Destroy()
		toolAdornees:cleanup()
	end)
end
