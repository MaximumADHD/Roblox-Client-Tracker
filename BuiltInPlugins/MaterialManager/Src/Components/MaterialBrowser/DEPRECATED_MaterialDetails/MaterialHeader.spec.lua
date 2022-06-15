return function()
	local Plugin = script.Parent.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)
	local mockContext = require(Plugin.Src.Util.mockContext)

	local MaterialHeader = require(script.Parent.MaterialHeader)

	local function createTestElement(props: MaterialHeader.Props?)
		props = props or {}

		return mockContext({
			MaterialHeader = Roact.createElement(MaterialHeader, props)
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestElement()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render builtin material correctly", function()
		local TestBuiltinMaterial = {
			IsBuiltin = true,
			Material = Enum.Material.Plastic,
			MaterialPath = { "Plastic" },
			MaterialType = "Base",
			MaterialVariant = Instance.new("MaterialVariant")
		}

		local container = Instance.new("Folder")
		local element = createTestElement({
			MockMaterial = TestBuiltinMaterial
		})
		local instance = Roact.mount(element, container)

		local main = container:FindFirstChildOfClass("Frame")
		expect(main).to.be.ok()
		Roact.unmount(instance)

		TestBuiltinMaterial.MaterialVariant:Destroy()
	end)

	it("should render variant material correctly", function()
		local TestVariantMaterial = {
			IsBuiltin = false,
			Material = Enum.Material.Plastic,
			MaterialPath = { "Plastic" },
			MaterialType = "Base",
			MaterialVariant = Instance.new("MaterialVariant")
		}

		local container = Instance.new("Folder")
		local element = createTestElement({
			MockMaterial = TestVariantMaterial
		})
		local instance = Roact.mount(element, container)

		local main = container:FindFirstChildOfClass("Frame")
		expect(main).to.be.ok()
		Roact.unmount(instance)

		TestVariantMaterial.MaterialVariant:Destroy()
	end)
end
