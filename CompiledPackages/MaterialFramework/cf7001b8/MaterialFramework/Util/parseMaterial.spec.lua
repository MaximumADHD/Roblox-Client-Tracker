local main = script:FindFirstAncestor("MaterialFramework")
local Packages = main.Parent

local JestGlobals = require(Packages.Dev.JestGlobals)

local it = JestGlobals.it
local expect = JestGlobals.expect

local parseMaterial = require(script.Parent.parseMaterial)

it("should return base material", function()
	local material = Enum.Material.Concrete
	local baseMaterial, materialVariant = parseMaterial(material)
	expect(baseMaterial).toBe(material)
	expect(materialVariant).toBeNil()
end)

it("should return base material and MaterialVariant", function()
	local function createMaterialVariant()
		local instance = Instance.new("MaterialVariant")
		instance.BaseMaterial = Enum.Material.Sand
		return instance
	end

	local baseMaterial, materialVariant = parseMaterial(createMaterialVariant())
	expect(materialVariant).toBe(materialVariant)
	expect(materialVariant.BaseMaterial).toBe(baseMaterial)
end)
