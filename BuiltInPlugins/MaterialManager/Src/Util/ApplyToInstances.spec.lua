local Plugin = script.Parent.Parent.Parent

local ApplyToInstances = require(Plugin.Src.Util.ApplyToInstances)

return function()
	it("apply material", function()
		local model = Instance.new("Model")
		local part1 = Instance.new("MeshPart")
		local part2 = Instance.new("MeshPart")
		local part3 = Instance.new("MeshPart")
		part1.Parent = model
		part2.Parent = model

		ApplyToInstances({
			model,
			part3
		}, Enum.Material.Brick)

		expect(part1.Material).to.equal(Enum.Material.Brick)
		expect(part2.Material).to.equal(Enum.Material.Brick)
		expect(part3.Material).to.equal(Enum.Material.Brick)
	end)

	it("apply material variant", function()
		local model = Instance.new("Model")
		local part1 = Instance.new("MeshPart")
		local part2 = Instance.new("MeshPart")
		local part3 = Instance.new("MeshPart")
		part1.Parent = model
		part2.Parent = model

		ApplyToInstances({
			model,
			part3
		}, Enum.Material.Brick, "BrickVariant")

		expect(part1.Material).to.equal(Enum.Material.Brick)
		expect(part2.Material).to.equal(Enum.Material.Brick)
		expect(part3.Material).to.equal(Enum.Material.Brick)
		expect(part1.MaterialVariant).to.equal("BrickVariant")
		expect(part2.MaterialVariant).to.equal("BrickVariant")
		expect(part3.MaterialVariant).to.equal("BrickVariant")
	end)
end
