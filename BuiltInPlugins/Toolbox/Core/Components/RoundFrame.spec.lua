return function()
	local Plugin = script.Parent.Parent.Parent

	local Packages = Plugin.Packages
	local Roact = require(Packages.Roact)

	local RoundFrame = require(Plugin.Core.Components.RoundFrame)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(RoundFrame)
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
