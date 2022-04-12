--!strict
return function()
	local FFlagToolboxAssetCategorization3 = game:GetFastFlag("ToolboxAssetCategorization3")
	if not FFlagToolboxAssetCategorization3 then
		return
	end

	local Plugin = script:FindFirstAncestor("Toolbox")
	local Packages = Plugin.Packages
	local Roact = require(Packages.Roact)

	local MockWrapper = require(Plugin.Core.Util.MockWrapper)
	local HomeView = require(script.Parent.HomeView)
	local Category = require(Plugin.Core.Types.Category)

	it("HomeView should render properly", function()
		local element = Roact.createElement(MockWrapper, {}, {
			HomeView = Roact.createElement(HomeView, {
				AssetSections = {},
				SubcategoryDict = {},
				Size = UDim2.new(1, 0, 0, 0),
				CategoryName = Category.FREE_MODELS.name,
			}),
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
