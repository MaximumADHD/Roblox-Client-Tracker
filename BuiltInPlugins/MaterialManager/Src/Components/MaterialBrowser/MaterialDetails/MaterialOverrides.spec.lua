local Plugin = script.Parent.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local mockContext = require(Plugin.Src.Util.mockContext)
local _Types = require(Plugin.Src.Types)

local join = Framework.Dash.join

local MaterialOverrides = require(script.Parent.MaterialOverrides)

local getFFlagMaterialManagerEnableTests = require(Plugin.Src.Flags.getFFlagMaterialManagerEnableTests)

if not getFFlagMaterialManagerEnableTests() then
	return function() end
end

return function()
	local TestMaterial

	local function createTestElement(props: {}?)
		local materialOverridesProps: MaterialOverrides.Props = join({
			OpenPrompt = function() end,
		}, props or {})

		return mockContext({
			MaterialOverrides = Roact.createElement(MaterialOverrides, materialOverridesProps)
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
	end)

	afterEach(function()
		if TestMaterial.MaterialVariant then
			TestMaterial.MaterialVariant:Destroy()
		end
		TestMaterial = nil
	end)

	it("should create and destroy without errors", function()
		local element = createTestElement()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render builtin material correctly", function()
		local container = Instance.new("Folder")
		local element = createTestElement({
			MockMaterial = TestMaterial,
		})
		local instance = Roact.mount(element, container)

		local main = container:FindFirstChildOfClass("Frame")
		expect(main).to.be.ok()
		Roact.unmount(instance)
	end)

	it("should render variant material correctly", function()
		TestMaterial.IsBuiltin = false
		TestMaterial.MaterialVariant:Destroy()
		TestMaterial.MaterialVariant = nil

		local container = Instance.new("Folder")
		local element = createTestElement({
			MockMaterial = TestMaterial,
		})
		local instance = Roact.mount(element, container)

		local main = container:FindFirstChildOfClass("Frame")
		expect(main).to.be.ok()
		Roact.unmount(instance)
	end)
end
