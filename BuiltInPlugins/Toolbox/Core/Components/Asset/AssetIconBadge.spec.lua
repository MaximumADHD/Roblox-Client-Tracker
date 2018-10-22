return function()
	local Plugin = script.Parent.Parent.Parent.Parent

	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

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
