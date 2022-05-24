--!strict
return function()
	local Plugin = script:FindFirstAncestor("Toolbox")
	local Packages = Plugin.Packages
	local Roact = require(Packages.Roact)

	local MockWrapper = require(Plugin.Core.Util.MockWrapper)
	local AssetSwimlane = require(script.Parent.AssetSwimlane)
	local Category = require(Plugin.Core.Types.Category)

	local noopt = function() end

	it("AssetSwimlane should render properly", function()
		local element = Roact.createElement(MockWrapper, {}, {
			Swimlane = Roact.createElement(AssetSwimlane, {
				CategoryName = "FreeModels",
				OnClickSeeAll = noopt,
				CanInsertAsset = noopt,
				InitialPageSize = 15,
				LayoutOrder = 1,
				SectionName = "trending",
				OnClickSeeAllAssets = noopt,
				TryInsert = noopt,
				TryOpenAssetConfig = noopt,
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
