return function()
	local Plugin = script.Parent.Parent.Parent

	local Packages = Plugin.Packages
	local Roact = require(Packages.Roact)

	local PluginContext = require(Plugin.Src.ContextServices.PluginContext).Provider

	it("should create and destroy without errors", function()
		local element = Roact.createElement(PluginContext)
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
