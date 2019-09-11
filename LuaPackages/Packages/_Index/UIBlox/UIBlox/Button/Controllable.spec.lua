return function()
	local Controllable = require(script.Parent.Controllable)
	local Packages = script.Parent.Parent.Parent
	local Roact = require(Packages.Roact)
	local ControlState = require(script.Parent.ControlState)

	it("should create and destroy without errors", function()
		-- luacheck: ignore unused argument oldState
		local buttonState = nil
		local element = Roact.createElement(Controllable, {
			controlComponent = {
				component = "TextButton",
				props = {},
			},
			stateChanged = function(oldState, newState)
				buttonState = newState
			end
		})

		local instance = Roact.mount(element)
		expect(buttonState).to.equal(ControlState.Default)
		Roact.unmount(instance)
	end)

	it("should start disabled", function()
		-- luacheck: ignore unused argument oldState
		local buttonState = nil
		local element = Roact.createElement(Controllable, {
			controlComponent = {
				component = "TextButton",
				props = {},
			},
			stateChanged = function(oldState, newState)
				buttonState = newState
			end,
			disabled = true,
		})

		local instance = Roact.mount(element)
		expect(buttonState).to.equal(ControlState.Disabled)
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
			stateChanged = function(oldState, newState)
				buttonState = newState
			end,
		})

		local instance = Roact.mount(element)
		expect(buttonState).to.equal(ControlState.Default)

		Roact.reconcile(instance, Roact.createElement(Controllable, {
			controlComponent = {
				component = "TextButton",
				props = {},
			},
			stateChanged = function(oldState, newState)
				buttonState = newState
			end,
			disabled = true,
		}))
		expect(buttonState).to.equal(ControlState.Disabled)

		Roact.unmount(instance)
	end)

	it("should change from disabled to default", function()
		-- luacheck: ignore unused argument oldState
		local buttonState = nil
		local element = Roact.createElement(Controllable, {
			controlComponent = {
				component = "TextButton",
				props = {},
			},
			stateChanged = function(oldState, newState)
				buttonState = newState
			end,

			disabled = true,
		})

		local instance = Roact.mount(element)
		expect(buttonState).to.equal(ControlState.Disabled)

		Roact.reconcile(instance, Roact.createElement(Controllable, {
			controlComponent = {
				component = "TextButton",
				props = {},
			},
			stateChanged = function(oldState, newState)
				buttonState = newState
			end,
		}))
		expect(buttonState).to.equal(ControlState.Default)

		Roact.unmount(instance)
	end)
end
