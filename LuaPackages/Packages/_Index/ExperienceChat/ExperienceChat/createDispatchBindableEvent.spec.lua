local CoreGui = game:GetService("CoreGui")
local ExperienceChat = CoreGui:FindFirstChild("ExperienceChat", true)
local globals = require(ExperienceChat.Dev.Jest).Globals
local expect = globals.expect

return function()
	beforeAll(function(rootContext)
		local mockReducer = function(state, action)
			state = state or {}

			if action.type == "testAction" then
				state.Test = true
			end

			return state
		end
		local mockStore = rootContext.Rodux.Store.new(mockReducer, {})
		rootContext.mockStore = mockStore
		rootContext.dispatchBindableEvent = require(script.Parent.createDispatchBindableEvent)(mockStore)
	end)

	it("SHOULD return a bindableEvent", function(c)
		local bindableEvent = c.dispatchBindableEvent
		expect(bindableEvent:IsA("BindableEvent")).toEqual(true)
	end)

	it("SHOULD change state when bindableEvent is fired", function(c)
		local bindableEvent = c.dispatchBindableEvent
		local mockAction = {
			type = "testAction",
		}
		bindableEvent:Fire(mockAction)

		expect(c.mockStore:getState().Test).toEqual(true)
	end)
end
