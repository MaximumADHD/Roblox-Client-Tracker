local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)

local getSupportedMaterials = require(Plugin.Src.Resources.Constants.getSupportedMaterials)
local MainReducer = require(Plugin.Src.Reducers.MainReducer)
local MaterialServiceController = require(Plugin.Src.Controllers.MaterialServiceController)

return function()
	local store

	beforeEach(function()
		store = Rodux.Store.new(MainReducer, nil, {
			Rodux.thunkMiddleware,
		}, nil)
	end)

	afterEach(function()
		store = Rodux.Store.new(MainReducer, nil, {
			Rodux.thunkMiddleware,
		}, nil)
	end)

	it("Basic setup", function()
		local materialServiceController = MaterialServiceController.mock(store)

		for material, _ in getSupportedMaterials() do
			local materials = store:getState().MaterialBrowserReducer.Materials
			expect(materials[material]).to.be.ok()
		end

		materialServiceController:destroy()
	end)

	it("Add MaterialVariant", function()
		local materialServiceController = MaterialServiceController.mock(store)

		local materialVariant = Instance.new("MaterialVariant")
		materialVariant.Parent = materialServiceController._materialServiceWrapper:asInstance()

		local materials = store:getState().MaterialBrowserReducer.Materials

		local found = false
		for material, materialWrapper in materials do
			if material == materialVariant then
				found = true
				expect(materialWrapper.MaterialVariant).to.equal(materialVariant)
				expect(materialWrapper.Material).to.equal(Enum.Material.Plastic)
			end
		end

		expect(found).to.equal(true)

		materialVariant:Destroy()
		materialServiceController:destroy()
	end)

	it("Remove MaterialVariant", function()
		local materialServiceController = MaterialServiceController.mock(store)

		local materialVariant = Instance.new("MaterialVariant")
		materialVariant.Parent = materialServiceController._materialServiceWrapper:asInstance()
		materialVariant:Destroy()

		local materials = store:getState().MaterialBrowserReducer.Materials

		local found = false
		for material, materialWrapper in materials do
			if material == materialVariant then
				found = true
			end
		end

		expect(found).to.equal(false)
		materialServiceController:destroy()
	end)

	it("Unparent MaterialVariant", function()
		local materialServiceController = MaterialServiceController.mock(store)

		local materialVariant = Instance.new("MaterialVariant")
		materialVariant.Parent = materialServiceController._materialServiceWrapper:asInstance()
		materialVariant.Parent = nil

		local materials = store:getState().MaterialBrowserReducer.Materials

		local found = false
		for material, materialWrapper in materials do
			if material == materialVariant then
				found = true
			end
		end

		expect(found).to.equal(false)
		materialVariant:Destroy()
		materialServiceController:destroy()
	end)

	it("Move MaterialVariant", function()
		local materialServiceController = MaterialServiceController.mock(store)

		local materialVariant = Instance.new("MaterialVariant")
		materialVariant.Parent = materialServiceController._materialServiceWrapper:asInstance()
		materialVariant.BaseMaterial = Enum.Material.Grass

		local materials = store:getState().MaterialBrowserReducer.Materials

		local found = false
		for material, materialWrapper in materials do
			if material == materialVariant then
				expect(materialWrapper.Material).to.equal(Enum.Material.Grass)
				expect(materialWrapper.MaterialType).to.equal("Base")
				found = true
			end
		end

		expect(found).to.equal(true)
		materialVariant:Destroy()
		materialServiceController:destroy()
	end)

	it("Set Path", function()
		local materialServiceController = MaterialServiceController.mock(store)
		materialServiceController:setPath({"Materials", "Plastic"})

		local materials = store:getState().MaterialBrowserReducer.MaterialList

		local foundPlastic = false
		local foundSmoothPlastic = false
		expect(#materials).to.equal(2)

		for _, material in materials do
			foundPlastic = foundPlastic or material.Material == Enum.Material.Plastic
			foundSmoothPlastic = foundSmoothPlastic or material.Material == Enum.Material.SmoothPlastic
		end
		expect(foundPlastic and foundSmoothPlastic).to.equal(true)
		materialServiceController:destroy()
	end)

	it("Set Variant then Set Path", function()
		local materialServiceController = MaterialServiceController.mock(store)

		local materialVariant = Instance.new("MaterialVariant")
		materialVariant.Parent = materialServiceController._materialServiceWrapper:asInstance()
		materialServiceController:setPath({"Materials", "Plastic"})

		local materials = store:getState().MaterialBrowserReducer.MaterialList

		local foundPlastic = false
		local foundSmoothPlastic = false
		local foundVariant = false
		expect(#materials).to.equal(3)

		for _, material in materials do
			foundPlastic = foundPlastic or material.Material == Enum.Material.Plastic
			foundSmoothPlastic = foundSmoothPlastic or material.Material == Enum.Material.SmoothPlastic
			foundVariant = foundVariant or material.MaterialVariant == materialVariant
		end
		expect(foundPlastic and foundSmoothPlastic and foundVariant).to.equal(true)
		materialVariant:Destroy()
		materialServiceController:destroy()
	end)

	it("Set Path then Set Variant", function()
		local materialServiceController = MaterialServiceController.mock(store)

		materialServiceController:setPath({"Materials", "Plastic"})
		local materialVariant = Instance.new("MaterialVariant")
		materialVariant.Parent = materialServiceController._materialServiceWrapper:asInstance()

		local materials = store:getState().MaterialBrowserReducer.MaterialList

		local foundPlastic = false
		local foundSmoothPlastic = false
		local foundVariant = false
		expect(#materials).to.equal(3)

		for _, material in materials do
			foundPlastic = foundPlastic or material.Material == Enum.Material.Plastic
			foundSmoothPlastic = foundSmoothPlastic or material.Material == Enum.Material.SmoothPlastic
			foundVariant = foundVariant or material.MaterialVariant == materialVariant
		end
		expect(foundPlastic and foundSmoothPlastic and foundVariant).to.equal(true)
		materialVariant:Destroy()
		materialServiceController:destroy()
	end)

	it("Set Search", function()
		local materialServiceController = MaterialServiceController.mock(store)
		materialServiceController:setSearch("Brick")

		local materials = store:getState().MaterialBrowserReducer.MaterialList

		local foundBrick = false
		expect(#materials).to.equal(1)

		for _, material in materials do
			foundBrick = foundBrick or material.Material == Enum.Material.Brick
		end
		expect(foundBrick).to.equal(true)
		materialServiceController:destroy()
	end)

	it("Set Name then Set Variant then Set Search", function()
		local materialServiceController = MaterialServiceController.mock(store)

		local materialVariant = Instance.new("MaterialVariant")
		materialVariant.Name = "Brick"
		materialVariant.Parent = materialServiceController._materialServiceWrapper:asInstance()
		materialServiceController:setSearch("Brick")

		local materials = store:getState().MaterialBrowserReducer.MaterialList

		local foundBrick = false
		local foundVariant = false
		expect(#materials).to.equal(2)

		for _, material in materials do
			foundBrick = foundBrick or material.Material == Enum.Material.Brick
			foundVariant = foundVariant or material.MaterialVariant == materialVariant
		end
		expect(foundBrick and foundVariant).to.equal(true)
		materialVariant:Destroy()
		materialServiceController:destroy()
	end)

	it("Set Variant then Set Name then Set Search", function()
		local materialServiceController = MaterialServiceController.mock(store)

		local materialVariant = Instance.new("MaterialVariant")
		materialVariant.Parent = materialServiceController._materialServiceWrapper:asInstance()
		materialVariant.Name = "Brick"
		materialServiceController:setSearch("Brick")

		local materials = store:getState().MaterialBrowserReducer.MaterialList

		local foundBrick = false
		local foundVariant = false
		expect(#materials).to.equal(2)

		for _, material in materials do
			foundBrick = foundBrick or material.Material == Enum.Material.Brick
			foundVariant = foundVariant or material.MaterialVariant == materialVariant
		end
		expect(foundBrick and foundVariant).to.equal(true)
		materialVariant:Destroy()
		materialServiceController:destroy()
	end)

	it("Set Search then Set Variant then Set Name", function()
		local materialServiceController = MaterialServiceController.mock(store)

		local materialVariant = Instance.new("MaterialVariant")
		materialServiceController:setSearch("Brick")
		materialVariant.Parent = materialServiceController._materialServiceWrapper:asInstance()
		materialVariant.Name = "Brick"

		local materials = store:getState().MaterialBrowserReducer.MaterialList

		local foundBrick = false
		local foundVariant = false
		expect(#materials).to.equal(2)

		for _, material in materials do
			foundBrick = foundBrick or material.Material == Enum.Material.Brick
			foundVariant = foundVariant or material.MaterialVariant == materialVariant
		end
		expect(foundBrick and foundVariant).to.equal(true)
		materialVariant:Destroy()
		materialServiceController:destroy()
	end)

	it("Set Search then Set Name then Set Variant", function()
		local materialServiceController = MaterialServiceController.mock(store)

		local materialVariant = Instance.new("MaterialVariant")
		materialServiceController:setSearch("Brick")
		materialVariant.Name = "Brick"
		materialVariant.Parent = materialServiceController._materialServiceWrapper:asInstance()
		
		local materials = store:getState().MaterialBrowserReducer.MaterialList

		local foundBrick = false
		local foundVariant = false
		expect(#materials).to.equal(2)

		for _, material in materials do
			foundBrick = foundBrick or material.Material == Enum.Material.Brick
			foundVariant = foundVariant or material.MaterialVariant == materialVariant
		end
		expect(foundBrick and foundVariant).to.equal(true)
		materialVariant:Destroy()
		materialServiceController:destroy()
	end)

	it("Get Overrides", function()
		local materialServiceController = MaterialServiceController.mock(store)

		local materials = store:getState().MaterialBrowserReducer.MaterialOverrides[Enum.Material.Plastic]

		local foundNone = false
		local foundPlastic = false
		expect(#materials).to.equal(2)

		for _, material in materials do
			foundNone = foundNone or material == "None"
			foundPlastic = foundPlastic or material == "Plastic"
		end
		expect(foundNone and foundPlastic).to.equal(true)

		materialServiceController:destroy()
	end)

	it("Get Overrides with Variant", function()
		local materialServiceController = MaterialServiceController.mock(store)

		local materialVariant = Instance.new("MaterialVariant")
		materialVariant.Parent = materialServiceController._materialServiceWrapper:asInstance()
		local materials = store:getState().MaterialBrowserReducer.MaterialOverrides[Enum.Material.Plastic]

		local foundNone = false
		local foundPlastic = false
		local foundVariant = false
		expect(#materials).to.equal(3)

		for _, material in materials do
			foundNone = foundNone or material == "None"
			foundPlastic = foundPlastic or material == "Plastic"
			foundVariant = foundVariant or material == "MaterialVariant"
		end
		expect(foundNone and foundPlastic and foundVariant).to.equal(true)
		materialVariant:Destroy()
		materialServiceController:destroy()
	end)
end
