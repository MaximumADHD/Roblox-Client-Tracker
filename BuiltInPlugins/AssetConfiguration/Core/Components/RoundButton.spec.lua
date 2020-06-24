return function()
	local Plugin = script.Parent.Parent.Parent

	local Libs = Plugin.Libs
	local Roact = require(Libs.Roact)

	local RoundButton = require(Plugin.Core.Components.RoundButton)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(RoundButton)
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
