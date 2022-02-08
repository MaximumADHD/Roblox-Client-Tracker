return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)
	local mockContext = require(Plugin.Src.Util.mockContext)

	local ExampleComponent = require(script.Parent.ExampleComponent)

	local function createTestElement(props: {}?)
		props = props or {}

		return mockContext({
			ExampleComponent = Roact.createElement(ExampleComponent, props)
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

	it("should render correctly with optional props", function ()
		-- TODO (rcary): Test each prop your component accepts.
		-- You can do this with one or many individual tests.
	end)
end
