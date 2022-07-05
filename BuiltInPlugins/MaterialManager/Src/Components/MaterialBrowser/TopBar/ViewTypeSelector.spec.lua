local Plugin = script.Parent.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local mockContext = require(Plugin.Src.Util.mockContext)

local ViewTypeSelector = require(script.Parent.ViewTypeSelector)

return function()
	local function createTestElement(props: ViewTypeSelector.Props?)
		props = props or {}

		return mockContext({
			ViewTypeSelector = Roact.createElement(ViewTypeSelector, props)
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestElement()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
