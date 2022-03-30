return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)
	local mockContext = require(Plugin.Src.Util.mockContext)

	local Toolbar = require(script.Parent.Toolbar)

	local function createTestElement(props: {}?)
		props = props or {}

		return mockContext({
			Toolbar = Roact.createElement(Toolbar, props)
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestElement()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
