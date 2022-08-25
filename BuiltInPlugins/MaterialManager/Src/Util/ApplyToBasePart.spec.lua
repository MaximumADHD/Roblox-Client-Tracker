local Plugin = script.Parent.Parent.Parent

local ApplyToBasePart = require(Plugin.Src.Util.ApplyToBasePart)

return function()
	it("apply material", function()
		local part1 = Instance.new("MeshPart")

		ApplyToBasePart(part1, Enum.Material.Brick)

		expect(part1.Material).to.equal(Enum.Material.Brick)
	end)

	it("apply material variant", function()
		local part1 = Instance.new("MeshPart")

		ApplyToBasePart(part1, Enum.Material.Brick, "BrickVariant")

		expect(part1.Material).to.equal(Enum.Material.Brick)
		expect(part1.MaterialVariant).to.equal("BrickVariant")
	end)

	it("dont apply to non-baseparts", function()
		local part1 = Instance.new("Model")

		ApplyToBasePart(part1, Enum.Material.Brick, "BrickVariant")
	end)
end
