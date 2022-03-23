--!strict
return function()
	local FFlagToolboxAssetCategorization = game:GetFastFlag("ToolboxAssetCategorization")
	if not FFlagToolboxAssetCategorization then
		return
	end

	local Plugin = script.Parent.Parent.Parent.Parent
	local Packages = Plugin.Packages
	local Roact = require(Packages.Roact)

	local NavigationContainer = require(script.Parent.NavigationContainer)
	local MockWrapper = require(Plugin.Core.Util.MockWrapper)
	local Category = require(Plugin.Core.Types.Category)

	it("NavigationContainer should render properly", function()
		local element = Roact.createElement(MockWrapper, {}, {
			Navigation = Roact.createElement(
				NavigationContainer,
				{ AssetSections = {}, CategoryName = Category.FREE_MODELS.name }
			),
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
