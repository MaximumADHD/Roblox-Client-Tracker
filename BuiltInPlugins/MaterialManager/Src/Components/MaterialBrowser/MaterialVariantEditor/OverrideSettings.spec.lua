local Plugin = script.Parent.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local mockContext = require(Plugin.Src.Util.mockContext)
local _Types = require(Plugin.Src.Types)

local OverrideSettings = require(script.Parent.OverrideSettings)

return function()
	local TestMaterial, TestMaterialVariant

	local function createTestElement(props: OverrideSettings.Props?)
		props = props or {
			MaterialVariant = TestMaterialVariant,
		}

		return mockContext({
			OverrideSettings = Roact.createElement(OverrideSettings, props)
		})
	end

	beforeEach(function()
		TestMaterial = {
			IsBuiltin = true,
			Material = Enum.Material.Plastic,
			MaterialPath = { "Plastic" },
			MaterialType = "Base",
			MaterialVariant = Instance.new("MaterialVariant")
		}
		TestMaterialVariant = Instance.new("MaterialVariant")
	end)

	afterEach(function()
		if TestMaterial.MaterialVariant then
			TestMaterial.MaterialVariant:Destroy()
		end
		TestMaterial = nil
		if TestMaterialVariant then
			TestMaterialVariant:Destroy()
		end
		TestMaterialVariant = nil
	end)

	expect(function()
		local element = createTestElement()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end).to.throw()

	it("should render builtin material variant correctly", function()
		local container = Instance.new("Folder")
		local element = createTestElement({
			MockMaterial = TestMaterial,
			MaterialVariant = TestMaterialVariant,
		})
		local instance = Roact.mount(element, container)

		local main = container:FindFirstChildOfClass("Frame")
		expect(main).to.be.ok()
		Roact.unmount(instance)
	end)
end
