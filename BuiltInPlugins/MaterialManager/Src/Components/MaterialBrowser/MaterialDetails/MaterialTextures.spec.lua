return function()
	local Plugin = script.Parent.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)
	local mockContext = require(Plugin.Src.Util.mockContext)

	local MaterialTextures = require(script.Parent.MaterialTextures)

	local colorMap = "rbxassetid://6505035810"
	local metalnessMap = "rbxassetid://6505037219"
	local normalMap = "rbxassetid://6505043762"
	local roughnessMap = "rbxassetid://6505049142"

	local function createTestElement(props: MaterialTextures.Props?)
		props = props or {}

		return mockContext({
			MaterialTextures = Roact.createElement(MaterialTextures, props)
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestElement()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render material with color map correctly", function()
		local TestMaterial = {
			IsBuiltin = true,
			MaterialPath = { "Plastic" },
			MaterialType = "Base",
			MaterialVariant = Instance.new("MaterialVariant")
		}

		TestMaterial.MaterialVariant.ColorMap = colorMap

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

	it("should render material with all maps correctly", function()
		local TestMaterial = {
			IsBuiltin = true,
			MaterialPath = { "Plastic" },
			MaterialType = "Base",
			MaterialVariant = Instance.new("MaterialVariant")
		}

		TestMaterial.MaterialVariant.ColorMap = colorMap
		TestMaterial.MaterialVariant.MetalnessMap = metalnessMap
		TestMaterial.MaterialVariant.NormalMap = normalMap
		TestMaterial.MaterialVariant.RoughnessMap = roughnessMap

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
