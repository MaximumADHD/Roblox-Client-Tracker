return function()
	local OverviewStoryItem = require(script.Parent.OverviewStoryItem)
	local Packages = script.Parent.Parent.Parent
	local Roact = require(Packages.Roact)
	local mockStyleComponent = require(script.Parent.Parent.Utility.mockStyleComponent)

	it("should create and destroy OverviewStoryItem without errors", function()
		local element = mockStyleComponent({
			item = Roact.createElement(OverviewStoryItem, {
				size = UDim2.new(0, 300, 0, 128),
				layoutOrder = 1,
				label = "test story item",
				componentName = "test",
			}, {
				TestComponent = Roact.createElement("Frame", {
					Size = UDim2.new(0, 144, 0, 48),
				}),
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end