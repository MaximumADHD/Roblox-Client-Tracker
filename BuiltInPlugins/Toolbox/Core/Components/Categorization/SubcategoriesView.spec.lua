return function()
	local Plugin = script.Parent.Parent.Parent.Parent

	local Libs = Plugin.Packages
	local Roact = require(Libs.Roact)

	local MockWrapper = require(Plugin.Core.Util.MockWrapper)
	local FFlagDevFrameworkResponsiveGrid2 = game:GetFastFlag("DevFrameworkResponsiveGrid2")
	if not FFlagDevFrameworkResponsiveGrid2 then
		return {}
	end
	local SubcategoriesView = require(Plugin.Core.Components.Categorization.SubcategoriesView)

	describe("SubcategoriesView", function()
		it("should create and destroy without errors", function()
			local element = Roact.createElement(MockWrapper, {}, {
				IconTile = Roact.createElement(SubcategoriesView, {
					Size = UDim2.new(1, 0, 0, 200),
					SubcategoryList = {
						{
							displayName = "Category",
							children = {},
							childCount = 0,
							index = 1,
							name = "1",
							path = {},
							thumbnail = {
								assetId = 6002241241,
								backgroundColor = "#32a852"
							},
						},
						{
							displayName = "Vehicle",
							children = {},
							childCount = 0,
							index = 2,
							name = "2",
							path = {},
							thumbnail = {
								assetId = 6002241241,
								backgroundColor = "#32a852"
							},
						},
					},
				}),
			})
			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)
	end)
end
