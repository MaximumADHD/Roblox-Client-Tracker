return function()
	local CharacterUtility = require(script.Parent.CharacterUtility)

	describe("CalculateModelExtents", function()
		it("SHOULD return a function", function()
			expect(CharacterUtility.CalculateModelExtents).to.be.a("function")
		end)

		it("SHOULD properly calculate extents on a tree of parts/mesh parts", function()
			local model = Instance.new("Model")

			local rootPart = Instance.new("Part")
			rootPart.Parent = model
			rootPart.Size = Vector3.new(1, 2, 3)

			local childPart = Instance.new("MeshPart")
			childPart.Parent = rootPart
			childPart.Size = Vector3.new(2, 2, 2)
			childPart.Position = Vector3.new(0.5, 1, 1.5)

			local grandchildPart = Instance.new("MeshPart")
			grandchildPart.Parent = childPart
			grandchildPart.Size = Vector3.new(2, 2, 2)
			grandchildPart.Position = Vector3.new(-0.5, 1, -1.5)

			local minExtent, maxExtent = CharacterUtility.CalculateModelExtents(model, CFrame.new())
			expect(minExtent.X).to.equal(-1.5)
			expect(minExtent.Y).to.equal(-1)
			expect(minExtent.Z).to.equal(-2.5)
			expect(maxExtent.X).to.equal(1.5)
			expect(maxExtent.Y).to.equal(2)
			expect(maxExtent.Z).to.equal(2.5)
		end)
	end)
end
