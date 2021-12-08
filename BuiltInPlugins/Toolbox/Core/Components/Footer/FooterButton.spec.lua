return function()
	local Plugin = script.Parent.Parent.Parent.Parent

	local FFlagToolboxDeduplicatePackages = game:GetFastFlag("ToolboxDeduplicatePackages")
	local Libs
	if FFlagToolboxDeduplicatePackages then
		Libs = Plugin.Packages
	else
		Libs = Plugin.Libs
	end
	local Roact = require(Libs.Roact)

	local MockWrapper = require(Plugin.Core.Util.MockWrapper)

	local FooterButton = require(Plugin.Core.Components.Footer.FooterButton)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(MockWrapper, {}, {
			FooterButton = Roact.createElement(FooterButton),
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
