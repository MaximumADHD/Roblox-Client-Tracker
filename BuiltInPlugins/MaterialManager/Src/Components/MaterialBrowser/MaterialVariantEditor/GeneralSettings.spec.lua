local Plugin = script.Parent.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local mockContext = require(Plugin.Src.Util.mockContext)

local GeneralSettings = require(script.Parent.GeneralSettings)

return function()
	local TestMaterialVariant
	
	local function createTestElement(props: GeneralSettings.Props?)
		props = props or {
			MaterialVariant = TestMaterialVariant,
		}

		return mockContext({
			GeneralSettings = Roact.createElement(GeneralSettings, props)
		})
	end

	beforeEach(function()
		TestMaterialVariant = Instance.new("MaterialVariant")
	end)

	afterEach(function()
		if TestMaterialVariant then
			TestMaterialVariant:Destroy()
		end
		TestMaterialVariant = nil
	end)

	it("should create and destroy without errors", function()
		local element = createTestElement()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render materialVariant with Name correctly", function()
		TestMaterialVariant.Name = "MaterialVariant"

		local container = Instance.new("Folder")
		local element = createTestElement({
			LayoutOrder = 1,
			MaterialVariant = TestMaterialVariant,
		})
		local instance = Roact.mount(element, container)

		local main = container:FindFirstChildOfClass("Frame")
		expect(main).to.be.ok()
		Roact.unmount(instance)
	end)

	it("should render materialVariant with BaseMaterial correctly", function()
		TestMaterialVariant.BaseMaterial = Enum.Material.Grass

		local container = Instance.new("Folder")
		local element = createTestElement({
			LayoutOrder = 1,
			MaterialVariant = TestMaterialVariant,
		})
		local instance = Roact.mount(element, container)

		local main = container:FindFirstChildOfClass("Frame")
		expect(main).to.be.ok()
		Roact.unmount(instance)
	end)
end
