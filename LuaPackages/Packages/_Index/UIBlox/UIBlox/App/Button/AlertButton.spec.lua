return function()
	local ButtonRoot = script.Parent
	local AppRoot = ButtonRoot.Parent
	local UIBloxRoot = AppRoot.Parent
	local Packages = UIBloxRoot.Parent

	local Roact = require(Packages.Roact)
	local AlertButton = require(ButtonRoot.AlertButton)
	local mockStyleComponent = require(UIBloxRoot.Utility.mockStyleComponent)
	local icon = "icons/robux"

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

	it("should create and destroy Alert Button with custom content without errors", function()
		local element = mockStyleComponent({
			button = Roact.createElement(AlertButton, {
				onActivated = function()end,
			}, {
				CustomFrame = Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 1, 0),
				}),
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end