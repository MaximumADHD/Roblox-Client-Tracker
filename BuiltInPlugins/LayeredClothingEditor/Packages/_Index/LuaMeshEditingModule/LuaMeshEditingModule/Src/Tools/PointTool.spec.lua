return function()
	local PointTool = require(script.Parent.PointTool)
	local MeshEditingContextTestHelper = require(script.Parent.Parent.Util.TestHelpers.MeshEditingContextTestHelper)

	local function fuzzyEq(num1, num2)
		local epsilon = 0.001
		return math.abs(num1 - num2) < epsilon
	end

	local falloff = 2
	local expectedWeights = {
		[1] = 1,
		[2] = 0.5,
		[3] = 0.5,
		[7] = 0.5,
		[4] = 1 - math.sqrt(2) / falloff,
		[5] = 1 - math.sqrt(2) / falloff,
		[6] = 0,
		[8] = 0,
	}
	local expectedPositions = {
		Vector3.new(0, 0, 1),
		Vector3.new(0, 1, 1),
		Vector3.new(0, 0, 0),
		Vector3.new(0, 1, 0),
		Vector3.new(1, 0, 0),
		Vector3.new(1, 1, 0),
		Vector3.new(1, 0, 1),
		Vector3.new(1, 1, 1),
	}

	it("should create and destroy without errors", function()
		local pointTool = PointTool.new()
		expect(pointTool).to.be.ok()
		pointTool:cleanup()
	end)

	it("should render correctly", function()
		local pointTool = PointTool.new()
		expect(pointTool).to.be.ok()

		local cube1, context = MeshEditingContextTestHelper.createContextWithSingleWrapper()

		pointTool:addContext(context)
		pointTool:setCurrentContext(context)

		pointTool:setFalloff(falloff)

		pointTool:setSelected({ { MeshName = "Cube1", Index = 1 } })

		local vertexWeights = pointTool:getVertexWeights()

		for index, weight in pairs(vertexWeights["Cube1"]) do
			expect(fuzzyEq(expectedWeights[index], weight)).to.equal(true)
		end

		cube1:Destroy()
		pointTool:cleanup()
	end)

	it("reset current context", function()
		local cube1, context = MeshEditingContextTestHelper.createContextWithSingleWrapper()

		local pointTool = PointTool.new()
		pointTool:addContext(context)
		pointTool:setCurrentContext(context)

		pointTool:setFalloff(falloff)
		pointTool:setSelected({ { MeshName = "Cube1", Index = 1 } })

		pointTool:scaleSelected(CFrame.new(0, 0, 0), Vector3.new(2, 2, 2))
		local vertexData = context:getVertexData()

		for index, pos in pairs(expectedPositions) do
			local scaledPos = pos * (1 + expectedWeights[index])
			expect(vertexData["Cube1"][index]:FuzzyEq(scaledPos)).to.equal(true)
		end

		pointTool:resetCurrentContext()
		vertexData = context:getVertexData()
		for index, pos in pairs(expectedPositions) do
			expect(vertexData["Cube1"][index]).to.equal(pos)
		end

		cube1:Destroy()
		pointTool:cleanup()
	end)
end
