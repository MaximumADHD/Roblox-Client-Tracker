local CoreGui = game:GetService("CoreGui")

local ExperienceChat = CoreGui:FindFirstChild("ExperienceChat", true)
local globals = require(ExperienceChat.Dev.Jest).Globals
local expect = globals.expect

local processCommands = require(script.Parent)

return function()
	beforeAll(function(rootContext)
		local mockReducer = function(state, action)
			state = state or {}

			if action.type == "SendChatMessage" then
				state.message = action.Text
			end

			return state
		end

		rootContext.buildMockStore = function(initialState)
			return rootContext.Rodux.Store.new(mockReducer, initialState)
		end
	end)

	it("SHOULD appropriately handle mute command", function(c)
		local mockStore = c.buildMockStore({
			PlayersList = {
				byDisplayName = {
					playersListByDisplayName = {},
				},
			},
			ChatCommands = {
				byUserId = {
					mutedUserIds = {},
				},
			},
		})
		local outgoingString = "/mute Player1"

		processCommands(mockStore, outgoingString)
		expect(type(mockStore:getState().message)).toEqual("string")
	end)
end
