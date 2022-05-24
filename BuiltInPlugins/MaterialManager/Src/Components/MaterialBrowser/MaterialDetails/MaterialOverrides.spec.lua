return function()
	local Plugin = script.Parent.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)
	local mockContext = require(Plugin.Src.Util.mockContext)

	local MaterialOverrides = require(script.Parent.MaterialOverrides)

	local function createTestElement(props: MaterialOverrides.Props?)
		props = props or {
			OpenPrompt = function() end,
		}

		return mockContext({
			MaterialOverrides = Roact.createElement(MaterialOverrides, props)
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestElement()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render base material correctly", function()
		local TestBuiltinMaterial = {
			IsBuiltin = true,
			MaterialPath = { "Grass" },
			MaterialType = "Base",
			MaterialVariant = Instance.new("MaterialVariant")
		}

		local container = Instance.new("Folder")
		local element = createTestElement({
			OpenPrompt = function() end,
			MockMaterial = TestBuiltinMaterial,
		})
		local instance = Roact.mount(element, container)

		local main = container:FindFirstChildOfClass("Frame")
		expect(main).to.be.ok()
		Roact.unmount(instance)

		TestBuiltinMaterial.MaterialVariant:Destroy()
	end)

	it("should render part material correctly", function()
		local TestVariantMaterial = {
			IsBuiltin = false,
			MaterialPath = { "Plastic" },
			MaterialType = "Part",
			MaterialVariant = Instance.new("MaterialVariant")
		}

		local container = Instance.new("Folder")
		local element = createTestElement({
			OpenPrompt = function() end,
			MockMaterial = TestVariantMaterial,
		})
		local instance = Roact.mount(element, container)

		local main = container:FindFirstChildOfClass("Frame")
		expect(main).to.be.ok()
		Roact.unmount(instance)

		TestVariantMaterial.MaterialVariant:Destroy()
	end)

	it("should render terrain material correctly", function()
		local TestVariantMaterial = {
			IsBuiltin = false,
			MaterialPath = { "LeafyGrass" },
			MaterialType = "Terrain",
			MaterialVariant = Instance.new("MaterialVariant")
		}

		local container = Instance.new("Folder")
		local element = createTestElement({
			OpenPrompt = function() end,
			MockMaterial = TestVariantMaterial,
		})
		local instance = Roact.mount(element, container)

		local main = container:FindFirstChildOfClass("Frame")
		expect(main).to.be.ok()
		Roact.unmount(instance)

		TestVariantMaterial.MaterialVariant:Destroy()
	end)
end
