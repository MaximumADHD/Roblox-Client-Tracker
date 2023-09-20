local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect

local createStore = require(ExperienceChat.createStore)
local PlayerAdded = require(ExperienceChat.Actions.PlayerAdded)
local getPlayersFromString = require(script.Parent.getPlayersFromString)

return function()
	describe("getPlayersFromString WITH only one player", function()
		local store = createStore()
		store:dispatch(PlayerAdded(1, "Player1", "Player"))

		local players = store:getState().Players

		it("SHOULD return a empty dictionary when name is nil", function()
			local result = getPlayersFromString(players, nil)
			expect(result).toEqual({})
		end)

		it("SHOULD return a empty dictionary when name gets no matches", function()
			local result = getPlayersFromString(players, "random")
			expect(result).toEqual({})
		end)

		it("SHOULD return a single player when filtering by displayname", function()
			local result = getPlayersFromString(players, "Player")
			expect(result).toEqual({
				{ username = "Player1", displayName = "Player", userId = "1", nameToDisplay = "Player" },
			})
		end)

		it("SHOULD return a single player when filtering by username", function()
			local result = getPlayersFromString(players, "@Player1")
			expect(result).toEqual({
				{ username = "Player1", displayName = "Player", userId = "1", nameToDisplay = "@Player1" },
			})
		end)
	end)

	describe("getPlayersFromString WITH two players", function()
		local store = createStore()
		store:dispatch(PlayerAdded(1, "Player1", "Player"))
		store:dispatch(PlayerAdded(2, "Player2", "Player"))

		local players = store:getState().Players

		it("SHOULD return two player when filtering by displayname", function()
			local result = getPlayersFromString(players, "Player")
			expect(result).toEqual({
				{ username = "Player1", displayName = "Player", userId = "1", nameToDisplay = "Player" },
				{ username = "Player2", displayName = "Player", userId = "2", nameToDisplay = "Player" },
			})
		end)

		it("SHOULD return a single player when filtering by username", function()
			local result = getPlayersFromString(players, "@Player2")
			expect(result).toEqual({
				{ username = "Player2", displayName = "Player", userId = "2", nameToDisplay = "@Player2" },
			})
		end)

		it("SHOULD be case insenstive when filtering", function()
			local result = getPlayersFromString(players, "pLayEr")
			expect(result).toEqual({
				{ username = "Player1", displayName = "Player", userId = "1", nameToDisplay = "Player" },
				{ username = "Player2", displayName = "Player", userId = "2", nameToDisplay = "Player" },
			})

			result = getPlayersFromString(players, "@pLAYEr1")
			expect(result).toEqual({
				{ username = "Player1", displayName = "Player", userId = "1", nameToDisplay = "@Player1" },
			})
		end)
	end)
end
