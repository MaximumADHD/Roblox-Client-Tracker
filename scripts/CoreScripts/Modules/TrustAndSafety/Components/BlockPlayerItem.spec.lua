return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)
	local RoactRodux = require(CorePackages.RoactRodux)
	local Rodux = require(CorePackages.Rodux)
	local UIBlox = require(CorePackages.UIBlox)

	local BlockPlayerItem = require(script.Parent.BlockPlayerItem)


	it("should create and destroy without errors", function()
		local element = Roact.createElement(UIBlox.Core.Style.Provider, {}, {
			BlockPlayerItem = Roact.createElement(BlockPlayerItem, {
				size = UDim2.new(0, 492, 0, 56),
				text = "test",
				icon = "fakeicon",
				iconSize = UDim2.new(0, 24, 0, 24),
				description = "test description",
				isCheckBoxSelected = true,
				onCheckBoxActivated = function(selected) end,
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
