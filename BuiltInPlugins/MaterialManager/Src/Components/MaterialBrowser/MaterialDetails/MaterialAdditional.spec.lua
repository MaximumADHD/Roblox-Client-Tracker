return function()
	local Plugin = script.Parent.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)
	local mockContext = require(Plugin.Src.Util.mockContext)

	local MaterialAdditional = require(script.Parent.MaterialAdditional)

	local studsPerTile = 1
	local materialPattern = "Organic"

	local function createTestElement(props: MaterialAdditional.Props?)
		props = props or {}

		return mockContext({
			MaterialAdditional = Roact.createElement(MaterialAdditional, props)
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestElement()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render material with studs per tile correctly", function()
		local TestMaterial = {
			IsBuiltin = true,
			MaterialPath = { "Plastic" },
			MaterialType = "Base",
			MaterialVariant = Instance.new("MaterialVariant")
		}

		TestMaterial.MaterialVariant.StudsPerTile = studsPerTile

		local container = Instance.new("Folder")
		local element = createTestElement({
			MockMaterial = TestMaterial
		})
		local instance = Roact.mount(element, container)

		local main = container:FindFirstChildOfClass("Frame")
		expect(main).to.be.ok()
		Roact.unmount(instance)

		TestMaterial.MaterialVariant:Destroy()
	end)

	it("should render material with material pattern correctly", function()
		local TestMaterial = {
			IsBuiltin = true,
			MaterialPath = { "Plastic" },
			MaterialType = "Base",
			MaterialVariant = Instance.new("MaterialVariant")
		}

		TestMaterial.MaterialVariant.MaterialPattern = materialPattern

		local container = Instance.new("Folder")
		local element = createTestElement({
			MockMaterial = TestMaterial
		})
		local instance = Roact.mount(element, container)

		local main = container:FindFirstChildOfClass("Frame")
		expect(main).to.be.ok()
		Roact.unmount(instance)

		TestMaterial.MaterialVariant:Destroy()
	end)
end
