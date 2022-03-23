--!strict
return function()
	local FFlagToolboxAssetCategorization = game:GetFastFlag("ToolboxAssetCategorization")
	if not FFlagToolboxAssetCategorization then
		return
	end

	local Plugin = script.Parent.Parent.Parent.Parent
	local Packages = Plugin.Packages
	local Roact = require(Packages.Roact)

	local Swimlane = require(script.Parent.Swimlane)
	local MockWrapper = require(Plugin.Core.Util.MockWrapper)

	it("should render properly", function()
		local element = Roact.createElement(MockWrapper, {}, {
			Swimlane = Roact.createElement(Swimlane, {
				Data = { 1, 2, 3, 4 },
				Total = 123,
				OnClickSeeAll = function() end,
				OnRenderItem = function(index, data)
					return Roact.createElement("TextLabel", {
						LayoutOrder = index,
						Text = tostring(data),
					})
				end,
			}),
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
