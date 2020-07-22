return function()
	local Indicator = script.Parent
	local App = Indicator.Parent
	local UIBlox = App.Parent
	local Packages = UIBlox.Parent
	local Roact = require(Packages.Roact)
	local EmptyState = require(script.Parent.EmptyState)
	local mockStyleComponent = require(Packages.UIBlox.Utility.mockStyleComponent)
	local Images = require(UIBlox.App.ImageSet.Images)

	describe("lifecycle", function()
		local frame = Instance.new("Frame")
		it("should mount and unmount with only the required props", function()
			local element = mockStyleComponent({
				emptyState = Roact.createElement(EmptyState, {
					text = "No [Items]",
				})
			})
			local instance = Roact.mount(element, frame, "EmptyState")
			Roact.unmount(instance)
		end)

		it("should mount and unmount with all the props", function()
			local element = mockStyleComponent({
				emptyState = Roact.createElement(EmptyState, {
					text = "No [Items]",
					icon = Images['icons/status/oof_xlarge'],
					buttonIcon = Images['icons/common/refresh'],
					size = UDim2.fromScale(1, 1),
					position = UDim2.fromScale(0.5, 0.5),
					anchorPoint = Vector2.new(0.5, 0.5),
					onActivated = (function() print("callback") end),
				})
			})
			local instance = Roact.mount(element, frame, "EmptyState")
			Roact.unmount(instance)
		end)
	end)
end
