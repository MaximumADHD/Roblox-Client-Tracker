return function()
	local SetIsControllerMode = require(script.Parent.Parent.Actions.SetIsControllerMode)
    local ControllerModeReducer = require(script.Parent.ControllerMode)

	describe("ControllerMode", function()
		it("should false by default", function()
			local state = ControllerModeReducer(nil, {} :: any)

			expect(state).to.equal(false)
		end)

		it("should not be modified by other actions", function()
			local oldState = ControllerModeReducer(nil, {} :: any)
			local newState = ControllerModeReducer(oldState, { type = "not a real action" })

			expect(newState).to.equal(oldState)
		end)

		it("should be changed using SetIsControllerMode", function()
			local state = ControllerModeReducer(nil, {} :: any)

			state = ControllerModeReducer(state, SetIsControllerMode(true))
			expect(state).to.equal(true)

			state = ControllerModeReducer(state, SetIsControllerMode(false))
			expect(state).to.equal(false)
		end)
	end)
end
