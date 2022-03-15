return function()
	local Plugin = script.Parent.Parent.Parent

	local MaterialController = require(Plugin.Src.Util.MaterialController)
	local getBuiltInMaterialVariants = require(Plugin.Src.Util.getBuiltInMaterialVariants)
	local MockMaterialService = require(Plugin.Src.TestHelpers.MockMaterialService)
	local MaterialServiceWrapper = require(Plugin.Src.Util.MaterialServiceWrapper)

	local builtInMaterialVariants = getBuiltInMaterialVariants()
	local humanMade = 15
	local synthetic = 2

	local materialServiceWrapper

	beforeEach(function()
		materialServiceWrapper = MaterialServiceWrapper.new(MockMaterialService.new())
	end)

	afterEach(function()
		materialServiceWrapper:destroy()
		materialServiceWrapper = nil
	end)

	it("should create and destroy without errors", function()
		local materialController = MaterialController.new({}, materialServiceWrapper)
		local categories = materialController:GetCategories()
		expect(#categories.Categories).to.equal(0)
		expect(#categories.Materials).to.equal(0)
		expect(#categories.Name).to.equal("All")
		materialController:destroy()
	end)

	it("should populate with builtin materials correctly", function()
		local materialController = MaterialController.new(builtInMaterialVariants, materialServiceWrapper)
		local categories = materialController:GetCategories()
		expect(#categories.Categories).to.equal(3)
		expect(#categories.Materials).to.equal(0)
		expect(#categories.Name).to.equal("All")
		materialController:destroy()
	end)

	it("should properly get materials", function()
		local materialController = MaterialController.new(builtInMaterialVariants, materialServiceWrapper)
		expect(#materialController:GetMaterials({})).to.equal(#builtInMaterialVariants)
		expect(#materialController:GetMaterials({"HumanMade"})).to.equal(humanMade)
		expect(#materialController:GetMaterials({"HumanMade", "Synthetic"})).to.equal(2)
		materialController:destroy()
	end)

	it("should properly add and remove materials", function()
		local materialController = MaterialController.new(builtInMaterialVariants, materialServiceWrapper)
		local materialVariant = Instance.new("MaterialVariant")
		expect(#materialController:GetMaterials({})).to.equal(#builtInMaterialVariants)
		expect(#materialController:GetMaterials({"HumanMade"})).to.equal(humanMade)
		expect(#materialController:GetMaterials({"HumanMade", "Synthetic"})).to.equal(synthetic)
		materialVariant.Parent = materialServiceWrapper:asInstance()
		expect(#materialController:GetMaterials({})).to.equal(#builtInMaterialVariants + 1)
		expect(#materialController:GetMaterials({"HumanMade"})).to.equal(humanMade + 1)
		expect(#materialController:GetMaterials({"HumanMade", "Synthetic"})).to.equal(synthetic + 1)
		materialVariant:Destroy()
		expect(#materialController:GetMaterials({})).to.equal(#builtInMaterialVariants)
		expect(#materialController:GetMaterials({"HumanMade"})).to.equal(humanMade)
		expect(#materialController:GetMaterials({"HumanMade", "Synthetic"})).to.equal(synthetic)
		materialController:destroy()
	end)
end
