local TestHelpers = script.Parent.Parent.Util.TestHelpers
local MeshWrapperObjectTestHelper = require(TestHelpers.MeshWrapperObjectTestHelper)
local MeshEditingContextTestHelper = require(TestHelpers.MeshEditingContextTestHelper)
local CubeVertexPositions = MeshWrapperObjectTestHelper.positions
local CubeMeshTriangles = MeshWrapperObjectTestHelper.triangles

return function()
	it("getVertexData", function()
		local cube1, context = MeshEditingContextTestHelper.createContextWithSingleWrapper()

		local vertexData = context:getVertexData()
		expect(vertexData["Cube1"]).to.be.ok()
		for index, position in ipairs(CubeVertexPositions) do
			expect(vertexData["Cube1"][index]:FuzzyEq(position)).to.equal(true)
		end

		cube1:Destroy()
	end)

	it("getTriangleIndexData", function()
		local cube1, context = MeshEditingContextTestHelper.createContextWithSingleWrapper()

		local triangleIndexData = context:getTriangleIndexData()
		expect(triangleIndexData["Cube1"]).to.be.ok()
		for index, triangle in ipairs(CubeMeshTriangles) do
			expect(triangleIndexData["Cube1"][index][1]).to.equal(triangle[1])
			expect(triangleIndexData["Cube1"][index][2]).to.equal(triangle[2])
			expect(triangleIndexData["Cube1"][index][3]).to.equal(triangle[3])
		end

		cube1:Destroy()
	end)

	it("getVertexTriangleIndexData", function()
		local cube1, context = MeshEditingContextTestHelper.createContextWithSingleWrapper()

		local triangleIndexData = context:getTriangleIndexData()
		expect(triangleIndexData["Cube1"]).to.be.ok()
		for index, triangle in ipairs(CubeMeshTriangles) do
			expect(triangleIndexData["Cube1"][index][1]).to.equal(triangle[1])
			expect(triangleIndexData["Cube1"][index][2]).to.equal(triangle[2])
			expect(triangleIndexData["Cube1"][index][3]).to.equal(triangle[3])
		end

		cube1:Destroy()
	end)

	it("getMeshOrigin", function()
		local cube1, context = MeshEditingContextTestHelper.createContextWithSingleWrapper()

		expect(context:getMeshOrigin("Cube1")).to.equal(CFrame.new())

		cube1:Destroy()
	end)

	it("getSeamData", function()
		local cube1, cube2, context = MeshEditingContextTestHelper.createContextWithTwoWrappers()

		local seamData = context:getSeamData()

		local expectedSeams = {
			["Cube1"] = {
				[2] = {
					MeshName = "Cube2",
					Index = 1,
				},
				[4] = {
					MeshName = "Cube2",
					Index = 3,
				},
				[6] = {
					MeshName = "Cube2",
					Index = 5,
				},
				[8] = {
					MeshName = "Cube2",
					Index = 7,
				},
			},
			["Cube2"] = {
				[1] = {
					MeshName = "Cube1",
					Index = 2,
				},
				[3] = {
					MeshName = "Cube1",
					Index = 4,
				},
				[5] = {
					MeshName = "Cube1",
					Index = 6,
				},
				[7] = {
					MeshName = "Cube1",
					Index = 8,
				},
			}
		}

		expect(seamData["Cube1"]).to.be.ok()
		expect(seamData["Cube2"]).to.be.ok()
		for meshName, seamDataForMesh in pairs(seamData) do
			for index, seam in pairs(seamDataForMesh) do
				expect(expectedSeams[meshName][index]).to.be.ok()
				expect(seam.MeshName).to.equal(expectedSeams[meshName][index].MeshName)
				expect(seam.Index).to.equal(expectedSeams[meshName][index].Index)
			end
		end

		cube1:Destroy()
		cube2:Destroy()
	end)

	it("updateVertexData", function()
		local cube1, context = MeshEditingContextTestHelper.createContextWithSingleWrapper()

		local oldVertexData = context:getVertexData()
		local verticesToChange = {
			["Cube1"] = {
				[2] = Vector3.new(2, 3, 4),
				[6] = Vector3.new(10, 5, 1),
			},
		}
		context:updateVertexData(verticesToChange)
		local vertexData = context:getVertexData()
		for meshName, vertexDataForMesh in pairs(vertexData) do
			for index, position in ipairs(vertexDataForMesh) do
				if index == 2 or index == 6 then
					expect(position).to.equal(verticesToChange[meshName][index])
				else
					expect(position).to.equal(oldVertexData[meshName][index])
				end
			end
		end

		cube1:Destroy()
	end)

	it("resetVertexData", function()
		local cube1, context = MeshEditingContextTestHelper.createContextWithSingleWrapper()

		local oldVertexData = context:getVertexData()
		local verticesToChange = {
			["Cube1"] = {
				[2] = Vector3.new(2, 3, 4),
				[6] = Vector3.new(10, 5, 1),
			},
		}
		context:updateVertexData(verticesToChange)
		context:resetVertexData()
		local vertexData = context:getVertexData()
		for meshName, vertexDataForMesh in pairs(vertexData) do
			for index, position in ipairs(vertexDataForMesh) do
				expect(position).to.equal(oldVertexData[meshName][index])
			end
		end

		cube1:Destroy()
	end)
end
