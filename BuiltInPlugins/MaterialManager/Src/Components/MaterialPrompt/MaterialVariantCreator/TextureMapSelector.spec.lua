local Plugin = script.Parent.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local mockContext = require(Plugin.Src.Util.mockContext)

local TextureMapSelector = require(script.Parent.TextureMapSelector)

return function()
	local previewTitle = ""
	local mapType = "ColorMap"
	local text = ""
	local labelColumnWidth = UDim.new(0, 100)

	local function createTestElement(props: TextureMapSelector.Props?)
		props = props or {
			PreviewTitle = previewTitle,
			MapType = mapType,
			Text = text,
			LabelColumnWidth = labelColumnWidth,
		}

		return mockContext({
			TextureMapSelector = Roact.createElement(TextureMapSelector, props)
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestElement()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")
		local element = createTestElement({
			PreviewTitle = previewTitle,
			MapType = mapType,
			Text = text,
			LabelColumnWidth = labelColumnWidth,
		})
		local instance = Roact.mount(element, container)

		local main = container:FindFirstChildOfClass("Frame")
		expect(main).to.be.ok()
		Roact.unmount(instance)
	end)
end
