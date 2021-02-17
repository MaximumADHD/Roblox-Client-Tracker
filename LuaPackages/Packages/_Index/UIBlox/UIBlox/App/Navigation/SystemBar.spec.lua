return function()
	local Navigation = script.Parent
	local App = Navigation.Parent
	local UIBloxRoot = App.Parent
	local Roact = require(UIBloxRoot.Parent.Roact)
	local mockStyleComponent = require(UIBloxRoot.Utility.mockStyleComponent)
	local Images = require(App.ImageSet.Images)

	local SystemBar = require(script.Parent.SystemBar)
	local Placement = require(script.Parent.Enum.Placement)

	it("should create and destroy with minimum props without errors", function()
		local element = mockStyleComponent({
			Roact.createElement(SystemBar, {
				itemList = {},
			}),
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy with all props without errors", function()
		local element = mockStyleComponent({
			Roact.createElement(SystemBar, {
				itemList = {{
					iconOn = Images["icons/actions/favoriteOn"],
					iconOff = Images["icons/actions/favoriteOff"],
					onActivated = function() end,
					badgeValue = 1,
				}},
				selection = 1,
				placement = Placement.Left,
				hidden = false,
				onSafeAreaChanged = function() end,
				size = UDim2.new(),
				position = UDim2.new(),
				layoutOrder = 1,
			}, {
				Contents = Roact.createElement("Frame", {}, {})
			}),
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
