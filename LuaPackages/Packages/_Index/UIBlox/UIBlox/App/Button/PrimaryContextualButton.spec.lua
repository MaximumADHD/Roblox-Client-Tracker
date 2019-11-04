return function()
	local ButtonRoot = script.Parent
	local AppRoot = ButtonRoot.Parent
	local UIBloxRoot = AppRoot.Parent
	local Packages = UIBloxRoot.Parent

	local Roact = require(Packages.Roact)
	local PrimaryContextualButton = require(ButtonRoot.PrimaryContextualButton)
	local mockStyleComponent = require(UIBloxRoot.Utility.mockStyleComponent)
	local icon = "icons/robux"

	it("should create and destroy Primary Contextual Button with text without errors", function()
		local element = mockStyleComponent({
			button = Roact.createElement(PrimaryContextualButton, {
				text = "Button",
				onActivated = function()end,
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy Primary Contextual Button with text icon only without errors", function()
		local element = mockStyleComponent({
			button = Roact.createElement(PrimaryContextualButton, {
				icon = icon,
				onActivated = function()end,
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy Primary Contextual Button with text and text without errors", function()
		local element = mockStyleComponent({
			button = Roact.createElement(PrimaryContextualButton, {
				text = "Button",
				icon = icon,
				onActivated = function()end,
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy a blank Primary Contextual Button without errors", function()
		local element = mockStyleComponent({
			button = Roact.createElement(PrimaryContextualButton, {
				onActivated = function()end,
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end