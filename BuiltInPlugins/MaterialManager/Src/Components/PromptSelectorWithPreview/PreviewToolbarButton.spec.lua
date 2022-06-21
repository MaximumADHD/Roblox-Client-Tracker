local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local mockContext = require(Plugin.Src.Util.mockContext)

local PreviewToolbarButton = require(script.Parent.PreviewToolbarButton)

return function()
	local size = UDim2.new(0, 1, 0, 1)
	local backgroundTransparency = 0.5
	local borderSizePixel = 1

	local image = ""
	local icon = ""

	local function createTestElement(props: PreviewToolbarButton.Props?)
		return mockContext({
			PreviewToolbarButton = Roact.createElement(PreviewToolbarButton, props)
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
			Size = size,
			BackgroundTransparency = backgroundTransparency,
			BorderSizePixel = borderSizePixel,
			Image = image,
			Icon = icon,
		})
		local instance = Roact.mount(element, container)

		local main = container:FindFirstChildOfClass("Frame")
		expect(main).to.be.ok()
		Roact.unmount(instance)
	end)
end
