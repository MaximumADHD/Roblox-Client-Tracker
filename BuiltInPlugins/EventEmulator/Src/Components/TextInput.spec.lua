return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)
	local mockContext = require(Plugin.Src.Util.mockContext)

	local Component = require(script.Parent.TextInput)

	local function createTestElement(props)
		props = props or {
			Label = "Test"
		}

		return mockContext({
			Component = Roact.createElement(Component, props)
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestElement()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	itSKIP("should render correctly", function()
		local container = Instance.new("Folder")
		local element = createTestElement()
		local instance = Roact.mount(element, container, "TestInstance")
		local main = container:FindFirstChild("TestInstance")
		expect(main).to.be.ok()
		Roact.unmount(instance)
	end)
end
