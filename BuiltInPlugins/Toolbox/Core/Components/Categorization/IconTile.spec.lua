return function()
	local FFlagToolboxAssetCategorization = game:GetFastFlag("ToolboxAssetCategorization")
	if not FFlagToolboxAssetCategorization then
		return
	end

	local Plugin = script.Parent.Parent.Parent.Parent

	local Packages = Plugin.Packages
	local Roact = require(Packages.Roact)

	local MockWrapper = require(Plugin.Core.Util.MockWrapper)

	local IconTile = require(Plugin.Core.Components.Categorization.IconTile)

	describe("IconTile", function()
		it("should create and destroy without errors", function()
			local element = Roact.createElement(MockWrapper, {}, {
				IconTile = Roact.createElement(IconTile, {
					BackgroundColor = Color3.new(1, 0, 0),
					Image = "rbxassetid://6002241241",
					OnClick = function() end,
					Size = UDim2.new(0, 100, 0, 100),
					Title = "HELLO WORLD",
				}),
			})
			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)
	end)
end
