--!strict
return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Packages = Plugin.Packages
	local Roact = require(Packages.Roact)

	local MockWrapper = require(Plugin.Core.Util.MockWrapper)
	local HorizontalList = require(script.Parent.HorizontalList)

	it("should render properly", function()
		local element = Roact.createElement(MockWrapper, {}, {
			HorizontalList = Roact.createElement(HorizontalList, {
				Data = { 1, 2, 3, 4 },
				DisplayCount = 10,
				OnRenderItem = function(index, data)
					return Roact.createElement("TextLabel", {
						Text = tostring(data),
						LayoutOrder = index,
					})
				end,
			}),
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
