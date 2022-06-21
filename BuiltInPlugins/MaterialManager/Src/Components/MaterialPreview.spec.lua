local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local mockContext = require(Plugin.Src.Util.mockContext)

local join = Framework.Dash.join

local MaterialPreview = require(script.Parent.MaterialPreview)

return function()
	local function createTestElement(props: {}?)
		local materialPreviewProps: MaterialPreview.Props = join({
			Material = Enum.Material.Plastic,
		}, props or {})

		return mockContext({
			MaterialPreview = Roact.createElement(MaterialPreview, materialPreviewProps)
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestElement()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")
		local element = createTestElement()
		local instance = Roact.mount(element, container)

		local main = container:FindFirstChildOfClass("Frame")
		expect(main).to.be.ok()
		Roact.unmount(instance)
	end)

	it("should render correctly with MaterialVariant", function()
		local container = Instance.new("Folder")
		local element = createTestElement({
			MaterialVariant = "PlasticVariant"
		})
		local instance = Roact.mount(element, container)

		local main = container:FindFirstChildOfClass("Frame")
		expect(main).to.be.ok()
		Roact.unmount(instance)
	end)

	it("should render correctly in Static mode", function()
		local container = Instance.new("Folder")
		local element = createTestElement({
			Static = true
		})
		local instance = Roact.mount(element, container)

		local main = container:FindFirstChildOfClass("Frame")
		expect(main).to.be.ok()
		Roact.unmount(instance)
	end)

	it("should render correctly in DisableZoom mode", function()
		local container = Instance.new("Folder")
		local element = createTestElement({
			DisableZoom = true
		})
		local instance = Roact.mount(element, container)

		local main = container:FindFirstChildOfClass("Frame")
		expect(main).to.be.ok()
		Roact.unmount(instance)
	end)
end
