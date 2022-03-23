return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local _Types = require(Plugin.Src.Types)
	local Roact = require(Plugin.Packages.Roact)
	local mockContext = require(Plugin.Src.Util.mockContext)

	local MaterialInformation = require(script.Parent.MaterialInformation)

	local function createTestElement(props: MaterialInformation.Props?)
		props = props or {
			OpenPrompt = function(type: _Types.MaterialPromptType) end
		}

		return mockContext({
			MaterialInformation = Roact.createElement(MaterialInformation, props)
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
			MaterialPath = { "Plastic" },
			MaterialType = "Base",
			MaterialVariant = Instance.new("MaterialVariant")
		}

		local container = Instance.new("Folder")
		local element = createTestElement({
			MockMaterial = TestBuiltinMaterial,
			OpenPrompt = function(type: _Types.MaterialPromptType) end,
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
			MaterialPath = { "Plastic" },
			MaterialType = "Base",
			MaterialVariant = Instance.new("MaterialVariant")
		}

		local container = Instance.new("Folder")
		local element = createTestElement({
			MockMaterial = TestVariantMaterial,
			OpenPrompt = function(type: _Types.MaterialPromptType) end,
		})
		local instance = Roact.mount(element, container)

		local main = container:FindFirstChildOfClass("Frame")
		expect(main).to.be.ok()
		Roact.unmount(instance)

		TestVariantMaterial.MaterialVariant:Destroy()
	end)
end
