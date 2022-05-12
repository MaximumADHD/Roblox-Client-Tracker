local TestHelpers = script.Parent.Parent.Util.TestHelpers
local MeshEditingContextTestHelper = require(TestHelpers.MeshEditingContextTestHelper)

return function()
	local WireframeMeshView = require(script.Parent.WireframeMeshView)
	local ToolAdornees = require(script.Parent.ToolAdornees)

	it("should create and destroy without errors", function()
		local wireframe = WireframeMeshView.new()
		expect(wireframe).to.be.ok()
		wireframe:cleanup()
		expect(wireframe.adorns).to.equal(nil)
		expect(wireframe.folder).to.equal(nil)
	end)

	it("should render correctly", function()
		local wireframe = WireframeMeshView.new()
		expect(wireframe).to.be.ok()

		local cube1, context = MeshEditingContextTestHelper.createContextWithSingleWrapper()

		local toolAdornees = ToolAdornees.new(context)
		toolAdornees:render()

		wireframe:render({
			Context = context,
			Transparency = 0,
			WireColor = Color3.new(0, 0, 0),
			ToolAdornees = toolAdornees,
			Visible = true,
		})

		expect(wireframe.adorns).to.be.ok()

		local count = 0
		for _, lowerPointIndices in pairs(wireframe.adorns) do
			for _, higherPointIndices in pairs(lowerPointIndices) do
				for _, _ in pairs(higherPointIndices) do
					count += 1
				end
			end
		end
		expect(count).to.equal(18)

		expect(wireframe.folder).to.be.ok()

		cube1:Destroy()
		wireframe:cleanup()
		toolAdornees:cleanup()
	end)
end
