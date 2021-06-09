return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)
	local mockContext = require(Plugin.Src.Util.mockContext)

	local RIDE4799 = require(script.Parent.RIDE4799)

	it("should create and destroy without errors", function()
		local element = mockContext({
			RIDE4799 = Roact.createElement(RIDE4799)
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
