return function()
	local Plugin = script.Parent.Parent.Parent

	local FFlagToolboxDeduplicatePackages = game:GetFastFlag("ToolboxDeduplicatePackages")
	local Libs
	if FFlagToolboxDeduplicatePackages then
		Libs = Plugin.Packages
	else
		Libs = Plugin.Libs
	end
	local Roact = require(Libs.Roact)

	local Toast = require(Plugin.Core.Components.Toast)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(Toast)
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
