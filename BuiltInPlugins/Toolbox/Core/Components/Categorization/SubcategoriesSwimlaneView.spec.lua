--!strict
return function()
	local Plugin = script:FindFirstAncestor("Toolbox")
	local Packages = Plugin.Packages
	local Roact = require(Packages.Roact)

	local MockWrapper = require(Plugin.Core.Util.MockWrapper)
	local SubcategoriesSwimlaneView = require(script.Parent.SubcategoriesSwimlaneView)
	local Category = require(Plugin.Core.Types.Category)

	it("SubcategoriesSwimlaneView should render properly", function()
		local element = Roact.createElement(MockWrapper, {}, {
			SubcategoriesSwimlaneView = Roact.createElement(SubcategoriesSwimlaneView, {
				CategoryName = Category.FREE_MODELS.name,
				OnClickBack = function() end,
				OnClickSeeAllAssets = function() end,
				Size = UDim2.new(1, 0, 1, 0),
				SortName = nil,
				SubcategoryDict = {},
				SubcategoryPath = {},
				TryOpenAssetConfig = function() end,
			}),
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
