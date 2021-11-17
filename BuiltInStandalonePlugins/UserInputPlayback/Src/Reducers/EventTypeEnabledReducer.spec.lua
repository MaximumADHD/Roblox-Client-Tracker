return function()
	local Plugin = script.Parent.Parent.Parent
	local EventTypeEnabledReducer = require(Plugin.Src.Reducers.EventTypeEnabledReducer)

	local context = "TestContext"
	local reducer = EventTypeEnabledReducer.makeReducerForName(context)

	local SetGamepadEnabled = require(Plugin.Src.Actions.EventTypeEnabled.SetGamepadEnabled)
	local SetKeyboardEnabled = require(Plugin.Src.Actions.EventTypeEnabled.SetKeyboardEnabled)
	local SetMouseClickEnabled = require(Plugin.Src.Actions.EventTypeEnabled.SetMouseClickEnabled)
	local SetMouseMoveEnabled = require(Plugin.Src.Actions.EventTypeEnabled.SetMouseMoveEnabled)
	local SetTouchEnabled = require(Plugin.Src.Actions.EventTypeEnabled.SetTouchEnabled)

	it("should return a table with enabled settings", function()
		local state = reducer(nil, {})
		expect(state).to.be.ok()
		expect(type(state)).to.equal("table")
		expect(state.mouseMove).to.be.ok()
		expect(state.mouseClick).to.be.ok()
		expect(state.keyboard).to.be.ok()
		expect(state.gamepad).to.be.ok()
		expect(state.touch).to.be.ok()
	end)

	it("Only state with correct context should be updated", function()
		local reducer1 = EventTypeEnabledReducer.makeReducerForName("Context 1")

		local state = reducer1(nil, {})
		state = reducer1(state, SetGamepadEnabled(false, "Context 1"))
		state = reducer1(state, SetGamepadEnabled(true, "Context 2"))

		expect(state.gamepad).to.equal(false)
	end)

	describe("Actions", function()
		it("SetGamepadEnabled action should update the gamepad enabled setting", function()
			local state = reducer(nil, {})
			state = reducer(state, SetGamepadEnabled(true, context))

			expect(state.gamepad).to.equal(true)
		end)

		it("SetKeyboardEnabled action should update the keyboard enabled setting", function()
			local state = reducer(nil, {})
			state = reducer(state, SetKeyboardEnabled(true, context))

			expect(state.keyboard).to.equal(true)
		end)

		it("SetMouseClickEnabled action should update the keyboard enabled setting", function()
			local state = reducer(nil, {})
			state = reducer(state, SetMouseClickEnabled(true, context))

			expect(state.mouseClick).to.equal(true)
		end)

		it("SetMouseMoveEnabled action should update the keyboard enabled setting", function()
			local state = reducer(nil, {})
			state = reducer(state, SetMouseMoveEnabled(true, context))

			expect(state.mouseMove).to.equal(true)
		end)

		it("SetTouchEnabled action should update the keyboard enabled setting", function()
			local state = reducer(nil, {})
			state = reducer(state, SetTouchEnabled(true, context))

			expect(state.touch).to.equal(true)
		end)
	end)
end
