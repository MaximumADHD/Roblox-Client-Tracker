return function()
	local Button = script.Parent
	local Core = Button.Parent
	local UIBlox = Core.Parent
	local Packages = UIBlox.Parent

	local App = UIBlox.App
	local Images = require(App.ImageSet.Images)

	local Roact = require(Packages.Roact)
	local GenericButton = require(Button.GenericButton)
	local mockStyleComponent = require(UIBlox.Utility.mockStyleComponent)
	local ControlState = require(Core.Control.Enum.ControlState)

	local IMAGE = Images["component_assets/circle_17"]

	local text = "Button"
	local icon = Images["icons/common/robux_small"]

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

	it("should be created as a disabled button", function()
		-- luacheck: ignore unused argument oldState
		local buttonState = nil
		local element = mockStyleComponent({
			button = Roact.createElement(GenericButton, {
				buttonImage = IMAGE,
				buttonStateColorMap = BUTTON_STATE_COLOR,
				onActivated = function()end,
				onStateChanged = function(oldState, newState)
					buttonState = newState
				end,
				isDisabled = true,
			}),
		})

		local instance = Roact.mount(element)
		expect(buttonState).to.equal(ControlState.Disabled)
		Roact.unmount(instance)
	end)
end
