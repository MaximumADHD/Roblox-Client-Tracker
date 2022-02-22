return function()
	local Plugin = script.Parent.Parent.Parent

	local Packages = Plugin.Packages
	local Roact = require(Packages.Roact)

	local Toast = require(Plugin.Core.Components.Toast)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(Toast)
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
