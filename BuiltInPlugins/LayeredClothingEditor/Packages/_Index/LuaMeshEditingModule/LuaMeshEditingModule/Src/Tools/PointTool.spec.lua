return function()
	local PointTool = require(script.Parent.PointTool)
	local MeshEditingContextBase = require(script.Parent.Parent.MeshEditingContexts.MeshEditingContextBase)
	local MeshWrapperObjectTestHelper = require(script.Parent.Parent.Util.TestHelpers.MeshWrapperObjectTestHelper)

	it("should create and destroy without errors", function()
		local pointTool = PointTool.new()
		expect(pointTool).to.be.ok()
		pointTool:cleanup()
	end)

	it("should render correctly", function()
		local pointTool = PointTool.new()
		expect(pointTool).to.be.ok()

		local context = MeshEditingContextBase.new()
		context:init(MeshWrapperObjectTestHelper.getWrappers())

		pointTool:addContext(context)
		pointTool:setCurrentContext(context)

		local falloff = 2
		pointTool:setFalloff(falloff)

		pointTool:setSelected({ { MeshName = "Cube1", Index = 1 } })

		local vertexWeights = pointTool:getVertexWeights()

		local function fuzzyEq(num1, num2)
			local epsilon = 0.001
			return math.abs(num1 - num2) < epsilon
		end

		local expectedWeights = {
			[1] = 1,
			[2] = 0.5,
			[3] = 0.5,
			[7] = 0.5,
			[4] = 1 - math.sqrt(2) / falloff,
			[5] = 1 - math.sqrt(2) / falloff,
		}

		for index, weight in pairs(expectedWeights) do
			expect(fuzzyEq(vertexWeights["Cube1"][index], weight)).to.equal(true)
		end

		pointTool:cleanup()
	end)
end
