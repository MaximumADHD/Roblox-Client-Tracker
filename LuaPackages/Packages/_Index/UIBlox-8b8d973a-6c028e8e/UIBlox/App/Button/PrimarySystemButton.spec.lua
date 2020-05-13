return function()
	local Button = script.Parent
	local App = Button.Parent
	local UIBlox = App.Parent
	local Packages = UIBlox.Parent

	local Roact = require(Packages.Roact)
	local Images = require(App.ImageSet.Images)

	local icon = Images["icons/common/robux_small"]
	local mockStyleComponent = require(UIBlox.Utility.mockStyleComponent)

	local PrimarySystemButton = require(Button.PrimarySystemButton)

	it("should create and destroy Primary System Button with text without errors", function()
		local element = mockStyleComponent({
			button = Roact.createElement(PrimarySystemButton, {
				text = "Button",
				onActivated = function()end,
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy Primary System Button with text icon only without errors", function()
		local element = mockStyleComponent({
			button = Roact.createElement(PrimarySystemButton, {
				icon = icon,
				onActivated = function()end,
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy Primary System Button with text and text without errors", function()
		local element = mockStyleComponent({
			button = Roact.createElement(PrimarySystemButton, {
				text = "Button",
				icon = icon,
				onActivated = function()end,
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy a blank Primary System Button without errors", function()
		local element = mockStyleComponent({
			button = Roact.createElement(PrimarySystemButton, {
				onActivated = function()end,
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end