local Plugin = script.Parent.Parent.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local mockContext = require(Plugin.Src.Util.mockContext)

local join = Framework.Dash.join

local MaterialTileItem = require(script.Parent.MaterialTileItem)

return function()
	local TestMaterial: _Types.Material = {
		Material = Enum.Material.Plastic,
		MaterialPath = { "Materials", "Plastic" },
		MaterialType = "Base",
	}

	local function createTestElement(props: {}?)
		local materialTileItemProps: MaterialTileItem.Props = join({
			ApplyToSelection = function() end,
			Material = TestMaterial,
			MaterialDescription = "This is a Test Material",
			MaterialName = "This is a localized material name",
			MaterialTileSize = 200,
			OnClick = function(material: _Types.Material) end,
		}, props or {})

		return mockContext({
			LabeledTexture = Roact.createElement(MaterialTileItem, materialTileItemProps)
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestElement()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render material with MaterialVariant", function()
		TestMaterial.MaterialVariant = Instance.new("MaterialVariant")

		local container = Instance.new("Folder")
		local element = createTestElement()
		local instance = Roact.mount(element, container)

		local main = container:FindFirstChildOfClass("Frame")
		expect(main).to.be.ok()
		Roact.unmount(instance)

		if TestMaterial.MaterialVariant then
			TestMaterial.MaterialVariant:Destroy()
			TestMaterial.MaterialVariant = nil
		end
	end)

	it("should render material with hover", function()
		local props = {
			Hover = true,
			MaterialTileSize = 200,
		}

		local container = Instance.new("Folder")
		local element = createTestElement(props)
		local instance = Roact.mount(element, container)

		local main = container:FindFirstChildOfClass("Frame")
		expect(main).to.be.ok()
		Roact.unmount(instance)
	end)
end
