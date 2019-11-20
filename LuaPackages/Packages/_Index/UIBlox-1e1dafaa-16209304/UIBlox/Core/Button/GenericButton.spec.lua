return function()
	local ButtonRoot = script.Parent
	local CoreRoot = ButtonRoot.Parent
	local UIBloxRoot = CoreRoot.Parent
	local Packages = UIBloxRoot.Parent

	local Roact = require(Packages.Roact)
	local GenericButton = require(ButtonRoot.GenericButton)
	local mockStyleComponent = require(UIBloxRoot.Utility.mockStyleComponent)
	local ControlState = require(UIBloxRoot.Core.Control.Enum.ControlState)

	local IMAGE = "buttons/buttonFill"

	local text = "Button"
	local icon = "icons/robux"

	local BUTTON_STATE_COLOR = {
		[ControlState.Default] = "SystemPrimaryDefault",
	}

	local CONTENT_STATE_COLOR = {
		[ControlState.Default] = "SystemPrimaryContent",
	}

	it("should create and destroy a button without errors", function()
		local element = mockStyleComponent({
			button = Roact.createElement(GenericButton, {
				text = text,
				icon = icon,
				buttonImage = IMAGE,
				buttonStateColorMap = BUTTON_STATE_COLOR,
				contentStateColorMap = CONTENT_STATE_COLOR,
				onActivated = function()end,
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy a button that is disabled without errors", function()
		local element = mockStyleComponent({
			button = Roact.createElement(GenericButton, {
				text = text,
				icon = icon,
				buttonImage = IMAGE,
				buttonStateColorMap = BUTTON_STATE_COLOR,
				contentStateColorMap = CONTENT_STATE_COLOR,
				onActivated = function()end,
				isDisabled = true,
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy a button that is loading without errors", function()
		local element = mockStyleComponent({
			button = Roact.createElement(GenericButton, {
				text = text,
				icon = icon,
				buttonImage = IMAGE,
				buttonStateColorMap = BUTTON_STATE_COLOR,
				contentStateColorMap = CONTENT_STATE_COLOR,
				onActivated = function()end,
				isLoading = true,
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy a button overriding text color without errors", function()
		local element = mockStyleComponent({
			button = Roact.createElement(GenericButton, {
				text = text,
				icon = icon,
				buttonImage = IMAGE,
				buttonStateColorMap = BUTTON_STATE_COLOR,
				contentStateColorMap = CONTENT_STATE_COLOR,
				textStateColorMap = CONTENT_STATE_COLOR,
				onActivated = function()end,
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy a button overriding icon color without errors", function()
		local element = mockStyleComponent({
			button = Roact.createElement(GenericButton, {
				text = text,
				icon = icon,
				buttonImage = IMAGE,
				buttonStateColorMap = BUTTON_STATE_COLOR,
				contentStateColorMap = CONTENT_STATE_COLOR,
				iconStateColorMap = CONTENT_STATE_COLOR,
				onActivated = function()end,
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy a button overriding text and icon color without errors", function()
		local element = mockStyleComponent({
			button = Roact.createElement(GenericButton, {
				text = text,
				icon = icon,
				buttonImage = IMAGE,
				buttonStateColorMap = BUTTON_STATE_COLOR,
				textStateColorMap = CONTENT_STATE_COLOR,
				iconStateColorMap = CONTENT_STATE_COLOR,
				onActivated = function()end,
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy a button without text and icon color without errors", function()
		local element = mockStyleComponent({
			button = Roact.createElement(GenericButton, {
				buttonImage = IMAGE,
				buttonStateColorMap = BUTTON_STATE_COLOR,
				onActivated = function()end,
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
