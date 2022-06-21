local Plugin = script.Parent.Parent.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local mockContext = require(Plugin.Src.Util.mockContext)

local join = Framework.Dash.join

local MaterialItem = require(script.Parent.MaterialItem)

return function()
	local TestMaterial: _Types.Material = {
		Material = Enum.Material.Plastic,
		MaterialPath = { "Materials", "Plastic" },
		MaterialType = "Base",
	}

	local function createTestElement(props: {}?)
		local materialItemProps: MaterialItem.Props = join({
			MaterialItem = TestMaterial,
			OnClick = function() end,
		}, props or {})

		return mockContext({
			LabeledTexture = Roact.createElement(MaterialItem, materialItemProps)
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
		local element = createTestElement({
			MockMaterial = TestMaterial
		})
		local instance = Roact.mount(element, container)

		local main = container:FindFirstChildOfClass("Frame")
		expect(main).to.be.ok()
		Roact.unmount(instance)

		if TestMaterial.MaterialVariant then
			TestMaterial.MaterialVariant:Destroy()
			TestMaterial.MaterialVariant = nil
		end
	end)
end
