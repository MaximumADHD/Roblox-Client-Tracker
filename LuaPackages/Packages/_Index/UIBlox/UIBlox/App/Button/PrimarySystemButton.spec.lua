return function()
	local ButtonRoot = script.Parent
	local AppRoot = ButtonRoot.Parent
	local UIBloxRoot = AppRoot.Parent
	local Packages = UIBloxRoot.Parent

	local Roact = require(Packages.Roact)
	local PrimarySystemButton = require(ButtonRoot.PrimarySystemButton)
	local mockStyleComponent = require(UIBloxRoot.Utility.mockStyleComponent)
	local icon = "icons/robux"

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