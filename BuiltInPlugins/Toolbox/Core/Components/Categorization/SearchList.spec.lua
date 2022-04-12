return function()
	local FFlagToolboxAssetCategorization = game:GetFastFlag("ToolboxAssetCategorization3")
	if not FFlagToolboxAssetCategorization then
		return
	end

	local Plugin = script:FindFirstAncestor("Toolbox")

	local Packages = Plugin.Packages
	local Roact = require(Packages.Roact)

	local MockWrapper = require(Plugin.Core.Util.MockWrapper)

	local SearchList = require(Plugin.Core.Components.Categorization.SearchList)

	describe("SearchList", function()
		it("should create and destroy without errors", function()
			local element = Roact.createElement(MockWrapper, {}, {
				SearchList = Roact.createElement(SearchList, {
					Items = {
						"charmander",
						"bulbasaur",
						"squirtle",
					},
				}),
			})
			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)
	end)
end
