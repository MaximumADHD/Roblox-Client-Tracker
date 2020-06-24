return function()
	local Plugin = script.Parent.Parent.Parent

	local Libs = Plugin.Libs
	local Roact = require(Libs.Roact)

	local RoundFrame = require(Plugin.Core.Components.RoundFrame)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(RoundFrame)
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
