--!strict
return function()
	local FFlagToolboxAssetCategorization = game:GetFastFlag("ToolboxAssetCategorization")
	if not FFlagToolboxAssetCategorization then
		return
	end

	local Plugin = script.Parent.Parent.Parent.Parent
	local Packages = Plugin.Packages
	local Roact = require(Packages.Roact)

	local NavigationLink = require(script.Parent.NavigationLink)
	local MockWrapper = require(Plugin.Core.Util.MockWrapper)

	it("should render properly", function()
		local ref = Roact.createRef()
		local element = Roact.createElement(MockWrapper,{}, {
			Link = Roact.createElement(NavigationLink, {
				OnClickSeeAll = function() end,
				Text = "See All",
				[Roact.Ref] = ref,
			}),
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
