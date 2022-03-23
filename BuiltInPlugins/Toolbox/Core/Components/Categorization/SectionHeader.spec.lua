--!strict
return function()
	local FFlagToolboxAssetCategorization = game:GetFastFlag("ToolboxAssetCategorization")
	if not FFlagToolboxAssetCategorization then
		return
	end

	local Plugin = script:FindFirstAncestor("Toolbox")
	local Packages = Plugin.Packages
	local Roact = require(Packages.Roact)

	local SectionHeader = require(script.Parent.SectionHeader)
	local MockWrapper = require(Plugin.Core.Util.MockWrapper)

	it("SectionHeader should render properly", function()
		local element = Roact.createElement(MockWrapper, {}, {
			Header = Roact.createElement(SectionHeader, {
				OnClickSeeAll = function() end,
				Position = UDim2.new(0, 0, 0, 0),
				SeeAllText = "See All",
				Title = "Header Title",
			}),
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
