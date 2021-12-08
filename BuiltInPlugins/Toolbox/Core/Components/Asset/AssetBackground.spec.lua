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

	local AssetBackground = require(Plugin.Core.Components.Asset.AssetBackground)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(MockWrapper, {}, {
			AssetBackground = Roact.createElement(AssetBackground),
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
