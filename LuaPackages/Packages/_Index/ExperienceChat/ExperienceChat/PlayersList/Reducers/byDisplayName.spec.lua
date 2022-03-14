local CoreGui = game:GetService("CoreGui")
local ExperienceChat = CoreGui:FindFirstChild("ExperienceChat", true)

local globals = require(ExperienceChat.Dev.Jest).Globals
local expect = globals.expect
local PlayersList = ExperienceChat.ExperienceChat.PlayersList

return function()
	local PlayerAdded = require(PlayersList.Actions.PlayerAdded)
	local PlayerRemoved = require(PlayersList.Actions.PlayerRemoved)
	local byDisplayName = require(PlayersList.Reducers.byDisplayName)

	describe("byDisplayName", function()
		it("should be not nil by default", function()
			local defaultState = byDisplayName(nil, {})

			expect(defaultState).never.toBeNil()
		end)

		it("should be unmodified by other actions", function()
			local oldState = byDisplayName(nil, {})
			local newState = byDisplayName(oldState, { type = "not a real action" })

			expect(oldState).toEqual(newState)
		end)

		it("should be changed using PlayerAdded", function()
			local state = byDisplayName(nil, {})
			expect(state.mutedUserIds).toBeNil()

			-- player with displayName Player1 and userId 1 joins
			state = byDisplayName(nil, PlayerAdded("Player1", 1))
			expect(state.playersListByDisplayName).never.toBeNil()
			expect(state.playersListByDisplayName["Player1"][1]).never.toBeNil()
			expect(state.playersListByDisplayName["Player1"][1]).toEqual(true)
			expect(state.playersListByDisplayName["Player1"][2]).toBeNil()

			-- player with displayName Player2 and userId 2 joins
			state = byDisplayName(state, PlayerAdded("Player2", 2))
			expect(state.playersListByDisplayName).never.toBeNil()
			expect(state.playersListByDisplayName["Player2"][2]).never.toBeNil()
			expect(state.playersListByDisplayName["Player2"][2]).toEqual(true)

			-- player with displayName Player2 and userId 3 joins
			state = byDisplayName(state, PlayerAdded("Player2", 3))
			expect(state.playersListByDisplayName).never.toBeNil()
			expect(state.playersListByDisplayName["Player2"][2]).toEqual(true)
			expect(state.playersListByDisplayName["Player2"][3]).toEqual(true)
		end)

		it("should be changed using PlayerRemoved", function()
			local state = byDisplayName(nil, {})
			expect(state.mutedUserIds).toBeNil()

			-- Remove a player that has not joined on start
			state = byDisplayName(nil, PlayerRemoved("Player1", 1))
			expect(state.playersListByDisplayName).toBeNil()

			-- Remove a player that has a displayname that joined but not a userid that joined
			state = byDisplayName(state, PlayerAdded("Player1", 1))
			state = byDisplayName(state, PlayerRemoved("Player1", 2))
			expect(state.playersListByDisplayName["Player1"][1]).toEqual(true)
			expect(state.playersListByDisplayName["Player1"][2]).toEqual(nil)

			-- Remove a player that has a displayname and userId that joined
			state = byDisplayName(state, PlayerRemoved("Player1", 1))
			expect(state.playersListByDisplayName["Player1"][1]).toEqual(nil)

			-- Removing players in general
			state = byDisplayName(nil, PlayerAdded("Player1", 1))
			state = byDisplayName(state, PlayerAdded("Player2", 2))
			state = byDisplayName(state, PlayerAdded("Player3", 3))
			state = byDisplayName(state, PlayerRemoved("Player3", 3))
			expect(state.playersListByDisplayName["Player1"][1]).toEqual(true)
			expect(state.playersListByDisplayName["Player2"][2]).toEqual(true)
			expect(state.playersListByDisplayName["Player3"][3]).toEqual(nil)
		end)
	end)
end
