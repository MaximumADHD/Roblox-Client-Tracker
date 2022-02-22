return function()
	local Plugin = script.Parent.Parent.Parent

	local Packages = Plugin.Packages
	local Roact = require(Packages.Roact)

	local RoundButton = require(Plugin.Core.Components.RoundButton)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(RoundButton)
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
