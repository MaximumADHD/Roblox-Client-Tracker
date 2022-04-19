return function()
	local FFlagToolboxAssetCategorization = game:GetFastFlag("ToolboxAssetCategorization4")
	if not FFlagToolboxAssetCategorization then
		return
	end

	local Plugin = script:FindFirstAncestor("Toolbox")

	local Packages = Plugin.Packages
	local Roact = require(Packages.Roact)

	local MockWrapper = require(Plugin.Core.Util.MockWrapper)

	local SearchPill = require(Plugin.Core.Components.Categorization.SearchPill)

	describe("SearchPill", function()
		it("should create and destroy without errors", function()
			local element = Roact.createElement(MockWrapper, {}, {
				SearchPill = Roact.createElement(SearchPill, {
					Text = "Pokemon",
				}),
			})
			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)
	end)
end
