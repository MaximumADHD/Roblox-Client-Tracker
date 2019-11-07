return function()
	local ButtonRoot = script.Parent
	local AppRoot = ButtonRoot.Parent
	local UIBloxRoot = AppRoot.Parent
	local Packages = UIBloxRoot.Parent

	local Roact = require(Packages.Roact)
	local SecondaryButton = require(ButtonRoot.SecondaryButton)
	local mockStyleComponent = require(UIBloxRoot.Utility.mockStyleComponent)
	local icon = "icons/robux"

	it("should create and destroy Secondary Button with text without errors", function()
		local element = mockStyleComponent({
			button = Roact.createElement(SecondaryButton, {
				text = "Button",
				onActivated = function()end,
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy Secondary Button with text icon only without errors", function()
		local element = mockStyleComponent({
			button = Roact.createElement(SecondaryButton, {
				icon = icon,
				onActivated = function()end,
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy Secondary Button with text and text without errors", function()
		local element = mockStyleComponent({
			button = Roact.createElement(SecondaryButton, {
				text = "Button",
				icon = icon,
				onActivated = function()end,
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy a blank Secondary Button without errors", function()
		local element = mockStyleComponent({
			button = Roact.createElement(SecondaryButton, {
				onActivated = function()end,
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end