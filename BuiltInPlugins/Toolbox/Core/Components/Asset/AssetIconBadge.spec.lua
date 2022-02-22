return function()
	local Plugin = script.Parent.Parent.Parent.Parent

	local Packages = Plugin.Packages
	local Roact = require(Packages.Roact)

	local MockWrapper = require(Plugin.Core.Util.MockWrapper)

	local AssetIconBadge = require(Plugin.Core.Components.Asset.AssetIconBadge)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(MockWrapper, {}, {
			AssetIconBadge = Roact.createElement(AssetIconBadge),
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
