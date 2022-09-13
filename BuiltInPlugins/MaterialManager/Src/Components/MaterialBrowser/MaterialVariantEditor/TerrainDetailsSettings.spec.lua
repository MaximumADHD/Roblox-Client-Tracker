local Plugin = script.Parent.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local mockContext = require(Plugin.Src.Util.mockContext)
local Framework = require(Plugin.Packages.Framework)

local join = Framework.Dash.join

local TerrainDetailsSettings = require(script.Parent.TerrainDetailsSettings)

return function()
	local top, bottom, side
	local TestMaterial, TestMaterialVariant

	local function createTestElement(props: TerrainDetailsSettings.Props?)
		props = join({
			MaterialVariant = TestMaterialVariant,
			MockMaterial = TestMaterial,
		}, props or {})

		return mockContext({
			TerrainDetailsSettings = Roact.createElement(TerrainDetailsSettings, props)
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

	it("should create and destroy without errors", function()
		local element = createTestElement()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render materialVariant with terrainDetail", function()
		top = Instance.new("TerrainDetail", TestMaterialVariant)
		top.Face = Enum.TerrainFace.Top
		TestMaterial.MaterialVariant = TestMaterialVariant

		local container = Instance.new("Folder")
		local element = createTestElement({
			LayoutOrder = 1,
			MaterialVariant = TestMaterialVariant,
		})
		local instance = Roact.mount(element, container)

		local main = container:FindFirstChildOfClass("Frame")
		expect(main).to.be.ok()
		top:Destroy()
		top = nil
		Roact.unmount(instance)
	end)

	it("should render materialVariant with terrainDetails", function()
		top = Instance.new("TerrainDetail", TestMaterialVariant)
		top.Face = Enum.TerrainFace.Top
		bottom = Instance.new("TerrainDetail", TestMaterialVariant)
		bottom.Face = Enum.TerrainFace.Bottom
		side = Instance.new("TerrainDetail", TestMaterialVariant)
		side.Face = Enum.TerrainFace.Side
		TestMaterial.MaterialVariant = TestMaterialVariant

		local container = Instance.new("Folder")
		local element = createTestElement({
			LayoutOrder = 1,
			MaterialVariant = TestMaterialVariant,
		})
		local instance = Roact.mount(element, container)

		local main = container:FindFirstChildOfClass("Frame")
		expect(main).to.be.ok()
		top:Destroy()
		top = nil
		bottom:Destroy()
		bottom = nil
		side:Destroy()
		side = nil
		Roact.unmount(instance)
	end)
end
