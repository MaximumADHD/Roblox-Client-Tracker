return function()
	local Plugin = script.Parent.Parent.Parent

	local Packages = Plugin.Packages
	local Roact = require(Packages.Roact)

	local PluginProvider = require(Plugin.Core.Providers.PluginProvider)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(PluginProvider)
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
