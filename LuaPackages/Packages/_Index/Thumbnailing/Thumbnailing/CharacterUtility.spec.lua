local CharacterUtility = require(script.Parent.CharacterUtility)

local FFlagCharacterUtilityClampsHeadExtentAtChin = game:GetFastFlag("CharacterUtilityClampsHeadExtentAtChin")

local function addHat(yOffset, hatSize, model, head)
	local hatAccoutrement = Instance.new("Accoutrement")
	hatAccoutrement.Name = "TestHat"
	hatAccoutrement.Parent = model

	local hatPart = Instance.new("Part")
	hatPart.Size = Vector3.new(hatSize, hatSize, hatSize)
	hatPart.Name = "Handle"
	hatPart.CFrame = head.CFrame * CFrame.new(0, yOffset, 0)
	hatPart.Parent = hatAccoutrement

	local hatAttachment = Instance.new("Attachment")
	hatAttachment.Name = "HatAttachment"
	hatAttachment.Parent = hatPart

	local headHatAttachment = Instance.new("Attachment")
	headHatAttachment.Name = "HatAttachment"
	headHatAttachment.Parent = head
end

return function()
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

	describe("CalculateHeadExtents", function()
		it("SHOULD return a function", function()
			expect(CharacterUtility.CalculateHeadExtents).to.be.a("function")
		end)

		it("SHOULD properly calculate extents on a character with a head", function()
			local model = Instance.new("Model")

			local headPart = Instance.new("Part")
			headPart.Parent = model
			headPart.Size = Vector3.new(1, 2, 3)
			headPart.Name = "Head"

			local minExtent, maxExtent = CharacterUtility.CalculateModelExtents(model, CFrame.new())

			expect(minExtent.X).to.equal(-0.5)
			expect(minExtent.Y).to.equal(-1)
			expect(minExtent.Z).to.equal(-1.5)
			expect(maxExtent.X).to.equal(0.5)
			expect(maxExtent.Y).to.equal(1)
			expect(maxExtent.Z).to.equal(1.5)
		end)

		it("SHOULD properly calculate extents on a character with a head and hat that goes up", function()
			local model = Instance.new("Model")

			local headPart = Instance.new("Part")
			headPart.Parent = model
			headPart.Size = Vector3.new(1, 2, 3)
			headPart.Name = "Head"

			addHat(3, 5, model, headPart)

			local minExtent, maxExtent = CharacterUtility.CalculateHeadExtents(model, CFrame.new())

			expect(minExtent.X).to.equal(-2.5)
			expect(minExtent.Y).to.equal(-1)
			expect(minExtent.Z).to.equal(-2.5)
			expect(maxExtent.X).to.equal(2.5)
			expect(maxExtent.Y).to.equal(5.5)
			expect(maxExtent.Z).to.equal(2.5)
		end)

		it("SHOULD properly calculate extents on a character with a head and hat that goes down", function()
			local model = Instance.new("Model")

			local headPart = Instance.new("Part")
			headPart.Parent = model
			headPart.Size = Vector3.new(1, 2, 3)
			headPart.Name = "Head"

			addHat(-1, 5, model, headPart)

			local minExtent, maxExtent = CharacterUtility.CalculateHeadExtents(model, CFrame.new())

			if FFlagCharacterUtilityClampsHeadExtentAtChin then
				expect(minExtent.X).to.equal(-2.5)
				expect(minExtent.Y).to.equal(-1)
				expect(minExtent.Z).to.equal(-2.5)
				expect(maxExtent.X).to.equal(2.5)
				expect(maxExtent.Y).to.equal(1.5)
				expect(maxExtent.Z).to.equal(2.5)
			else
				expect(minExtent.X).to.equal(-2.5)
				expect(minExtent.Y).to.equal(-3.5)
				expect(minExtent.Z).to.equal(-2.5)
				expect(maxExtent.X).to.equal(2.5)
				expect(maxExtent.Y).to.equal(1.5)
				expect(maxExtent.Z).to.equal(2.5)
			end
		end)

		it("SHOULD properly calculate extents on a character with a head and hat that goes down even if head is rotated.", function()
			local model = Instance.new("Model")

			local headPart = Instance.new("Part")
			headPart.Parent = model
			headPart.Size = Vector3.new(1, 2, 3)
			headPart.Name = "Head"

			-- Turn the head upside down.
			headPart.CFrame = CFrame.fromEulerAnglesYXZ(math.rad(180), 0, 0) * headPart.CFrame

			addHat(-1, 5, model, headPart)

			local minExtent, maxExtent = CharacterUtility.CalculateHeadExtents(model, CFrame.new())

			if FFlagCharacterUtilityClampsHeadExtentAtChin then
				expect(minExtent.X).to.be.near(-2.5, 0.0001)
				expect(minExtent.Y).to.be.near(-1.5, 0.0001)
				expect(minExtent.Z).to.be.near(-2.5, 0.0001)
				expect(maxExtent.X).to.be.near(2.5, 0.0001)
				expect(maxExtent.Y).to.be.near(1.0, 0.0001)
				expect(maxExtent.Z).to.be.near(2.5, 0.0001)
			else
				expect(minExtent.X).to.be.near(-2.5, 0.0001)
				expect(minExtent.Y).to.be.near(-1.5, 0.0001)
				expect(minExtent.Z).to.be.near(-2.5, 0.0001)
				expect(maxExtent.X).to.be.near(2.5, 0.0001)
				expect(maxExtent.Y).to.be.near(3.5, 0.0001)
				expect(maxExtent.Z).to.be.near(2.5, 0.0001)
			end
		end)
	end)
end
