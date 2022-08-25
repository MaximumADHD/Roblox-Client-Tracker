local Plugin = script.Parent.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local mockContext = require(Plugin.Src.Util.mockContext)

local TextureSettings = require(script.Parent.TextureSettings)

return function()
	local colorMap = "rbxassetid://6505035810"
	local metalnessMap = "rbxassetid://6505037219"
	local normalMap = "rbxassetid://6505043762"
	local roughnessMap = "rbxassetid://6505049142"
	local TestMaterialVariant

	local function createTestElement(props: TextureSettings.Props?)
		props = props or {
			MaterialVariant = TestMaterialVariant,
		}

		return mockContext({
			TextureSettings = Roact.createElement(TextureSettings, props)
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

	it("should render material with color map correctly", function()
		TestMaterialVariant.ColorMap = colorMap

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

	it("should render material with all maps correctly", function()
		TestMaterialVariant.ColorMap = colorMap
		TestMaterialVariant.MetalnessMap = metalnessMap
		TestMaterialVariant.NormalMap = normalMap
		TestMaterialVariant.RoughnessMap = roughnessMap

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
