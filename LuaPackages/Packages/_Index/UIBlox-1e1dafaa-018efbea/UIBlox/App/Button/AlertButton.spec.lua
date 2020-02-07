return function()
	local Button = script.Parent
	local App = Button.Parent
	local UIBlox = App.Parent
	local Packages = UIBlox.Parent

	local Roact = require(Packages.Roact)
	local Images = require(App.ImageSet.Images)

	local icon = Images["icons/common/robux_small"]
	local mockStyleComponent = require(UIBlox.Utility.mockStyleComponent)

	local AlertButton = require(Button.AlertButton)

	it("should create and destroy Alert Button with text without errors", function()
		local element = mockStyleComponent({
			button = Roact.createElement(AlertButton, {
				text = "Button",
				onActivated = function()end,
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy Alert Button with text icon only without errors", function()
		local element = mockStyleComponent({
			button = Roact.createElement(AlertButton, {
				icon = icon,
				onActivated = function()end,
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy Alert Button with text and text without errors", function()
		local element = mockStyleComponent({
			button = Roact.createElement(AlertButton, {
				text = "Button",
				icon = icon,
				onActivated = function()end,
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy a blank Alert Button without errors", function()
		local element = mockStyleComponent({
			button = Roact.createElement(AlertButton, {
				onActivated = function()end,
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end