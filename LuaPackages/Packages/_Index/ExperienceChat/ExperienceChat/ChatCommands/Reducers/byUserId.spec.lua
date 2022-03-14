local CoreGui = game:GetService("CoreGui")
local ExperienceChat = CoreGui:FindFirstChild("ExperienceChat", true)

local globals = require(ExperienceChat.Dev.Jest).Globals
local expect = globals.expect
local ChatCommands = ExperienceChat.ExperienceChat.ChatCommands
local Set = require(ExperienceChat.llama).Set

return function()
	local MuteUser = require(ChatCommands.Actions.MuteUser)
	local UnmuteUser = require(ChatCommands.Actions.UnmuteUser)
	local byUserId = require(ChatCommands.Reducers.byUserId)

	describe("byUserId", function()
		it("should be not nil by default", function()
			local defaultState = byUserId(nil, {})

			expect(defaultState).never.toBeNil()
		end)

		it("should be unmodified by other actions", function()
			local oldState = byUserId(nil, {})
			local newState = byUserId(oldState, { type = "not a real action" })

			expect(oldState).toEqual(newState)
		end)

		it("should be changed using MuteUser", function()
			local state = byUserId(nil, {})
			expect(state.mutedUserIds).toBeNil()

			-- muting a user with userId 1
			state = byUserId(state, MuteUser(1))
			expect(state.mutedUserIds[1]).toEqual(true)

			-- muting additional users should add to mutedUserId set
			state = byUserId(state, MuteUser(2))
			state = byUserId(state, MuteUser(3))
			for userId = 1, #Set.toList(state.mutedUserIds) do
				expect(state.mutedUserIds[userId]).toEqual(true)
			end

			-- calling MuteUser with a userId that's already in the set will not add the Id
			expect(#Set.toList(state.mutedUserIds)).toEqual(3)
			state = byUserId(state, MuteUser(1))
			state = byUserId(state, MuteUser(2))
			state = byUserId(state, MuteUser(3))
			expect(#Set.toList(state.mutedUserIds)).toEqual(3)

			-- muteUserId that has not been added should not be in the set
			expect(state.mutedUserIds[99]).toBeNil()
		end)

		it("should be changed using UnmuteUser", function()
			local state = byUserId(nil, {})
			expect(state.mutedUserIds).toBeNil()

			-- unmuting a user when there's no muted users
			state = byUserId(state, UnmuteUser(1))
			expect(state.mutedUserIds).toBeNil()

			-- muting then unmuting a user with userId 1
			state = byUserId(state, MuteUser(1))
			state = byUserId(state, UnmuteUser(1))
			expect(#Set.toList(state.mutedUserIds)).toEqual(0)

			--unmuting a user with userId 2 when they are not muted
			state = byUserId(state, MuteUser(2))
			state = byUserId(state, UnmuteUser(1))
			expect(#Set.toList(state.mutedUserIds)).toEqual(1)
		end)
	end)
end
