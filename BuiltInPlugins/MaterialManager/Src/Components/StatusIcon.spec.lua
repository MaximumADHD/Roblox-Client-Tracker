return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)
	local mockContext = require(Plugin.Src.Util.mockContext)

	local StatusIcon = require(script.Parent.StatusIcon)

	local function createTestElement(props: StatusIcon.Props?)
		props = props or {
			Material = Enum.Material.Plastic,
		}

		return mockContext({
			StatusIcon = Roact.createElement(StatusIcon, props)
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
			LayoutOrder = 1,
			Material = Enum.Material.Plastic,
			Size = UDim2.fromScale(1, 1),
		})
		local instance = Roact.mount(element, container)

		local main = container:FindFirstChildOfClass("Frame")
		expect(main).to.be.ok()
		Roact.unmount(instance)
	end)
end
