local cube = {}
function cube:getVertices()
	return {
		Vector3.new(0, 0, 1),
		Vector3.new(0, 1, 1),
		Vector3.new(0, 0, 0),
		Vector3.new(0, 1, 0),
		Vector3.new(1, 0, 0),
		Vector3.new(1, 1, 0),
		Vector3.new(1, 0, 1),
		Vector3.new(1, 1, 1),
	}
end
cube.instance = Instance.new("Part")
function cube:getTriangleIndexData()
	return {
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
end
function cube:getMeshOrigin()
	return CFrame.new()
end


return function()
	local WireframeMeshView = require(script.Parent.WireframeMeshView)
	local MeshEditingContextBase = require(script.Parent.Parent.MeshEditingContexts.MeshEditingContextBase)
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

		local context = MeshEditingContextBase.new()
		context:init({ cube })

		local toolAdornees = ToolAdornees.new(context)
		toolAdornees:render()

		wireframe:render({
			Context = context,
			Transparency = 0,
			WireColor = Color3.new(0, 0, 0),
			ToolAdornees = toolAdornees,
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

		wireframe:cleanup()
	end)
end
