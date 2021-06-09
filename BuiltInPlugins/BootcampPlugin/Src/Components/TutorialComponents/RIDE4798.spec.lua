return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)
	local mockContext = require(Plugin.Src.Util.mockContext)

	local RIDE4798 = require(script.Parent.RIDE4798)

	it("should create and destroy without errors", function()
		local element = mockContext({
			RIDE4798 = Roact.createElement(RIDE4798)
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end