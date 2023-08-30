return function()
	local CorePackages = game:GetService("CorePackages")

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	local SetIsControllerMode = require(script.Parent.Parent.Actions.SetIsControllerMode)
    local ControllerModeReducer = require(script.Parent.ControllerMode)

	describe("ControllerMode", function()
		it("should false by default", function()
			local state = ControllerModeReducer(nil, {} :: any)

			expect(state).toBe(false)
		end)

		it("should not be modified by other actions", function()
			local oldState = ControllerModeReducer(nil, {} :: any)
			local newState = ControllerModeReducer(oldState, { type = "not a real action" })

			expect(newState).toBe(oldState)
		end)

		it("should be changed using SetIsControllerMode", function()
			local state = ControllerModeReducer(nil, {} :: any)

			state = ControllerModeReducer(state, SetIsControllerMode(true))
			expect(state).toBe(true)

			state = ControllerModeReducer(state, SetIsControllerMode(false))
			expect(state).toBe(false)
		end)
	end)
end
