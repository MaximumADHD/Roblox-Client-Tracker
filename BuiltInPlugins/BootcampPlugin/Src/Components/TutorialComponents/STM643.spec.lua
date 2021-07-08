return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)
	local mockContext = require(Plugin.Src.Util.mockContext)

	local STM643 = require(script.Parent.STM643)

	it("should create and destroy without errors", function()
		local element = mockContext({
			STM643 = Roact.createElement(STM643)
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
