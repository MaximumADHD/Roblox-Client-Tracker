local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")

local ExperienceChat = CoreGui:FindFirstChild("ExperienceChat", true)
local ProjectRoot = script:FindFirstAncestor("ExperienceChat").Parent
local globals = require(ExperienceChat.Dev.Jest).Globals
local expect = globals.expect
local Set = require(ProjectRoot.llama).Set
local MuteUnmuteCommand = require(script.Parent.MuteUnmuteCommand)
local processCommands = script:FindFirstAncestor("processCommands")
local SystemMessages = require(processCommands.Utils.SystemMessages)

return function()
	beforeAll(function(rootContext)
		local mockReducer = function(state, action)
			state = state or {}

			if action.type == "MuteUser" then
				state.mutedUser = action.userId
			elseif action.type == "UnmuteUser" then
				state.unmutedUser = action.userId
			end

			return state
		end

		rootContext.createMockStore = function(initialState)
			return rootContext.Rodux.Store.new(mockReducer, initialState)
		end
	end)

	it("SHOULD return a system message string when calling MuteUnmuteCommand", function(c)
		local mockStore = c.createMockStore({})
		expect(type(MuteUnmuteCommand(mockStore, "mute", ""))).toEqual("string")
	end)

	describe("WHEN calling MuteUnmuteCommand with mute as command", function()
		beforeAll(function(c)
			c.checkForCorrectReturnMessage = function(systemMessage, mockPlayersList, mockMutedUserIds)
				local mockStore = c.createMockStore({
					PlayersList = {
						byDisplayName = {
							playersListByDisplayName = mockPlayersList,
						},
					},
					ChatCommands = {
						byUserId = {
							mutedUserIds = mockMutedUserIds or {},
						},
					},
				})

				local command = "/mute Player1"
				local expectedSystemString = string.format(systemMessage, "Player1")
				expect(MuteUnmuteCommand(mockStore, "mute", command)).toEqual(expectedSystemString)

				return mockStore
			end
		end)

		it("SHOULD return correct system message when the muted user does not exist", function(c)
			--Empty Players List means there are no users in the server, thus the muted user cannot exist.
			local mockPlayersList = {}

			c.checkForCorrectReturnMessage(SystemMessages.MuteUserDoesNotExist, mockPlayersList, nil)
		end)

		it("SHOULD return correct system message when multiple users have the same muted display name", function(c)
			-- Users with ID 1,2,3 all have the displayname "Player1"
			local Player1ids = Set.add({}, 1)
			Player1ids = Set.add(Player1ids, 2)
			local mockPlayersList = {
				Player1 = Player1ids,
			}

			c.checkForCorrectReturnMessage(SystemMessages.MuteUserDuplicate, mockPlayersList, nil)
		end)

		it("SHOULD return correct system message when user attempts to mute themselves", function(c)
			local Player1ids = Set.add({}, Players.LocalPlayer.UserId)
			local mockPlayersList = {
				Player1 = Player1ids,
			}

			c.checkForCorrectReturnMessage(SystemMessages.MuteUserIsYourself, mockPlayersList, nil)
		end)

		it("SHOULD return correct system message when user attempts to mute an already muted user", function(c)
			local Player1ids = Set.add({}, 1)
			local mockPlayersList = {
				Player1 = Player1ids,
			}
			local mockMutedUserIds = Set.add({}, 1)

			c.checkForCorrectReturnMessage(SystemMessages.MuteUserAlreadyMuted, mockPlayersList, mockMutedUserIds)
		end)

		it("SHOULD return correct system message when user successfully mutes", function(c)
			local Player1ids = Set.add({}, 1)
			local mockPlayersList = {
				Player1 = Player1ids,
			}

			local mockStore = c.checkForCorrectReturnMessage(SystemMessages.MuteUserSuccess, mockPlayersList, {})
			expect(mockStore:getState().mutedUser).toEqual(1)
		end)
	end)

	describe("WHEN calling MuteUnmuteCommand with unmute as command", function()
		beforeAll(function(c)
			c.checkForCorrectReturnMessage = function(systemMessage, mockPlayersList, mockMutedUserIds)
				local mockStore = c.createMockStore({
					PlayersList = {
						byDisplayName = {
							playersListByDisplayName = mockPlayersList,
						},
					},
					ChatCommands = {
						byUserId = {
							mutedUserIds = mockMutedUserIds or {},
						},
					},
				})

				local command = "/unmute Player1"
				local expectedSystemString = string.format(systemMessage, "Player1")
				expect(MuteUnmuteCommand(mockStore, "unmute", command)).toEqual(expectedSystemString)

				return mockStore
			end
		end)

		it("SHOULD return correct system message when unmuting an already unmuted user", function(c)
			local Player1ids = Set.add({}, 1)
			local mockPlayersList = {
				Player1 = Player1ids,
			}

			c.checkForCorrectReturnMessage(SystemMessages.UnmuteUserSuccess, mockPlayersList, {})
		end)

		it("SHOULD return correct system message when user successfully mutes", function(c)
			local Player1ids = Set.add({}, 1)
			local mockPlayersList = {
				Player1 = Player1ids,
			}
			local mockMutedUserIds = Set.add({}, 1)
			local mockStore = c.checkForCorrectReturnMessage(
				SystemMessages.UnmuteUserSuccess,
				mockPlayersList,
				mockMutedUserIds
			)
			expect(mockStore:getState().unmutedUser).toEqual(1)
		end)
	end)
end
