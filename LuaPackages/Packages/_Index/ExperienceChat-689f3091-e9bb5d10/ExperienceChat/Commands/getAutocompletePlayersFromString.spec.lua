local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect
local Dictionary = require(Packages.llama).Dictionary

local createStore = require(ExperienceChat.createStore)
local PlayerAdded = require(ExperienceChat.Actions.PlayerAdded)

local getAutocompletePlayersFromString = require(script.Parent.getAutocompletePlayersFromString)

return function()
	describe("WITH only one player", function()
		local store = createStore()
		store:dispatch(PlayerAdded(1, "Player1", "Player"))

		local players = store:getState().Players

		it("SHOULD return a single player when given an empty string", function()
			local result = getAutocompletePlayersFromString(players, "")
			expect(result).toEqual({
				{ username = "Player1", displayName = "Player", userId = "1" },
			})
		end)
	end)

	describe("WITH only one player after filtering another", function()
		local store = createStore()
		store:dispatch(PlayerAdded(-1, "Player1", "Player"))
		store:dispatch(PlayerAdded(-2, "Player2", "Player"))

		local players = store:getState().Players

		describe("WHEN filtering -1", function()
			local filteredPlayers = Dictionary.join(players, {
				byUserId = Dictionary.removeKey(players.byUserId, tostring(-1)),
			})

			it("SHOULD return a single player when given a single letter", function()
				local result = getAutocompletePlayersFromString(filteredPlayers, "P")
				expect(result).toEqual({
					{ username = "Player2", displayName = "Player", userId = "-2" },
				})
			end)
		end)

		describe("WHEN filtering -2", function()
			local filteredPlayers = Dictionary.join(players, {
				byUserId = Dictionary.removeKey(players.byUserId, tostring(-2)),
			})

			it("SHOULD return a single player when given a single letter", function()
				local result = getAutocompletePlayersFromString(filteredPlayers, "P")
				expect(result).toEqual({
					{ username = "Player1", displayName = "Player", userId = "-1" },
				})
			end)
		end)
	end)

	describe("WITH the given players", function()
		local store = createStore()
		store:dispatch(PlayerAdded(1, "Player1", "DisplayName"))
		store:dispatch(PlayerAdded(2, "Player2", "DisplayName"))
		store:dispatch(PlayerAdded(3, "Player3", "Myself"))
		store:dispatch(PlayerAdded(4, "Player4", "Player4_DN"))

		local players = store:getState().Players

		it("SHOULD return a single unique player by username when @ is prefixed", function()
			local result = getAutocompletePlayersFromString(players, "@Player1")
			expect(result).toEqual({
				{ username = "Player1", displayName = "DisplayName", userId = "1" },
			})
		end)

		it("SHOULD return a single unique player by display name with a unique display name", function()
			local result = getAutocompletePlayersFromString(players, "Player4_DN")
			expect(result).toEqual({
				{ username = "Player4", displayName = "Player4_DN", userId = "4" },
			})
		end)

		it("SHOULD return all players with the same display name", function()
			local result = getAutocompletePlayersFromString(players, "DisplayName")
			expect(result).toContainEqual({ username = "Player1", displayName = "DisplayName", userId = "1" })
			expect(result).toContainEqual({ username = "Player2", displayName = "DisplayName", userId = "2" })
			expect(result).toHaveLength(2)
		end)

		it("SHOULD return all players when given empty string", function()
			local result = getAutocompletePlayersFromString(players, "")
			expect(result).toHaveLength(4)
		end)

		it("SHOULD be case insenstive when matching players", function()
			local result = getAutocompletePlayersFromString(players, "@playER1")
			expect(result).toEqual({
				{ username = "Player1", displayName = "DisplayName", userId = "1" },
			})

			result = getAutocompletePlayersFromString(players, "player4_dN")
			expect(result).toEqual({
				{ username = "Player4", displayName = "Player4_DN", userId = "4" },
			})
		end)
	end)

	it("SHOULD only look similarity in the beginning of the argument", function()
		local store = createStore()
		store:dispatch(PlayerAdded(-1, "abcd", "abcd"))
		store:dispatch(PlayerAdded(-2, "zabcd", "zabcd"))

		local players = store:getState().Players

		local result = getAutocompletePlayersFromString(players, "a")
		expect(result).toEqual({
			{ username = "abcd", displayName = "abcd", userId = "-1" },
		})

		result = getAutocompletePlayersFromString(players, "@a")
		expect(result).toEqual({
			{ username = "abcd", displayName = "abcd", userId = "-1" },
		})
	end)
end
