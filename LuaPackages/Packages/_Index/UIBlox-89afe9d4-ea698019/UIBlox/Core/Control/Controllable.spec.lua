--Skipping these tests until Roact 1.x. and spawn setstate is removed.
--https://jira.rbx.com/browse/UIBLOX-56
return function()
	local ControlRoot = script.Parent
	local CoreRoot = ControlRoot.Parent
	local UIBloxRoot = CoreRoot.Parent
	local Packages = UIBloxRoot.Parent

	local Roact = require(Packages.Roact)

	local Controllable = require(ControlRoot.Controllable)
	local ControlState = require(ControlRoot.Enum.ControlState)

	it("should create and destroy without errors", function()
		-- luacheck: ignore unused argument oldState
		local buttonState = nil
		local element = Roact.createElement(Controllable, {
			controlComponent = {
				component = "TextButton",
				props = {},
			},
			onStateChanged = function(oldState, newState)
				buttonState = newState
			end
		})

		local instance = Roact.mount(element)
		expect(buttonState).to.equal(ControlState.Default)
		Roact.unmount(instance)
	end)

	it("should start isDisabled", function()
		-- luacheck: ignore unused argument oldState
		local buttonState = nil
		local element = Roact.createElement(Controllable, {
			controlComponent = {
				component = "TextButton",
				props = {},
			},
			onStateChanged = function(oldState, newState)
				buttonState = newState
			end,
			isDisabled = true,
		})

		local instance = Roact.mount(element)
		delay(0, function() expect(buttonState).to.equal(ControlState.Disabled) end)
		Roact.unmount(instance)
	end)

	it("should change from default to disabled", function()
		-- luacheck: ignore unused argument oldState
		local buttonState = nil
		local element = Roact.createElement(Controllable, {
			controlComponent = {
				component = "TextButton",
				props = {},
			},
			onStateChanged = function(oldState, newState)
				buttonState = newState
			end,
		})

		local instance = Roact.mount(element)
		expect(buttonState).to.equal(ControlState.Default)

		Roact.update(instance, Roact.createElement(Controllable, {
			controlComponent = {
				component = "TextButton",
				props = {},
			},
			onStateChanged = function(oldState, newState)
				buttonState = newState
			end,
			isDisabled = true,
		}))
		expect(buttonState).to.equal(ControlState.Disabled)

		Roact.unmount(instance)
	end)

	it("should change from isDisabled to default", function()
		-- luacheck: ignore unused argument oldState
		local buttonState = nil
		local element = Roact.createElement(Controllable, {
			controlComponent = {
				component = "TextButton",
				props = {},
			},
			onStateChanged = function(oldState, newState)
				buttonState = newState
			end,

			isDisabled = true,
		})

		local instance = Roact.mount(element)
		expect(buttonState).to.equal(ControlState.Disabled)

		Roact.update(instance, Roact.createElement(Controllable, {
			controlComponent = {
				component = "TextButton",
				props = {},
			},
			onStateChanged = function(oldState, newState)
				buttonState = newState
			end,
		}))
		expect(buttonState).to.equal(ControlState.Default)

		Roact.unmount(instance)
	end)
end
