return function()
	local ControlEdgeView = require(script.Parent.ControlEdgeView)

	it("should create and destroy without errors", function()
		local edge = ControlEdgeView.new()
		expect(edge).to.be.ok()
		edge:cleanup()
		expect(edge.edge).to.equal(nil)
	end)

	it("should render correctly", function()
		local edge = ControlEdgeView.new()
		local parent = Instance.new("Part")
		edge:render({
			StartPoint = Vector3.new(0, 0, 0),
			EndPoint = Vector3.new(1, 0, 0),
			Adornee = nil,
			Parent = parent,
			Transparency = 0.7,
			Color = Color3.new(1, 1, 0),
			Thickness = 0.2,
		})
		expect(edge.edge).to.be.ok()
		expect(edge.edge.Length).to.equal(1)
		local child = parent:FindFirstChild("LineHandleAdornment")
		expect(edge.edge).to.equal(child)
		edge:cleanup()
	end)
end
