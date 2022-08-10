local Plugin = script.Parent.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local mockContext = require(Plugin.Src.Util.mockContext)

local TextureMapSelector = require(script.Parent.TextureMapSelector)

return function()
	local labelColumnWidth = UDim.new(0, 100)
	local mapType = "ColorMap"
	local previewTitle = ""
	local text = ""
	local TestMaterialVariant

	local function createTestElement(props: TextureMapSelector.Props?)
		props = props or {
			LabelColumnWidth = labelColumnWidth,
			MapType = mapType,
			MaterialVariant = TestMaterialVariant,
			PreviewTitle = previewTitle,
			Text = text,
		}

		return mockContext({
			TextureMapSelector = Roact.createElement(TextureMapSelector, props)
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

	it("should render correctly", function()
		local container = Instance.new("Folder")
		local element = createTestElement({
			LabelColumnWidth = labelColumnWidth,
			MapType = mapType,
			MaterialVariant = TestMaterialVariant,
			PreviewTitle = previewTitle,
			Text = text,
		})
		local instance = Roact.mount(element, container)

		local main = container:FindFirstChildOfClass("Frame")
		expect(main).to.be.ok()
		Roact.unmount(instance)
	end)
end
