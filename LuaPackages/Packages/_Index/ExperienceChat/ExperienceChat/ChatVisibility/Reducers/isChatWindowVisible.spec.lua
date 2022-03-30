local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect

local ChatVisibility = ExperienceChat.ChatVisibility

return function()
	local ChatWindowConfigurationEnabled = require(ChatVisibility.Actions.ChatWindowConfigurationEnabled)
	local isChatWindowVisible = require(ChatVisibility.Reducers.isChatWindowVisible)

	describe("isChatWindowVisible", function()
		it("should be not nil by default", function()
			local defaultState = isChatWindowVisible(nil, {})

			expect(defaultState).never.toBeNil()
		end)

		it("should be unmodified by other actions", function()
			local oldState = isChatWindowVisible(nil, {})
			local newState = isChatWindowVisible(oldState, { type = "not a real action" })

			expect(oldState).toEqual(newState)
		end)

		it("should be changed using ChatWindowConfigurationEnabled", function()
			local state = isChatWindowVisible(nil, {})

			state = isChatWindowVisible(state, ChatWindowConfigurationEnabled(true))
			expect(state).toEqual(true)

			state = isChatWindowVisible(state, ChatWindowConfigurationEnabled(false))
			expect(state).toEqual(false)
		end)
	end)
end
