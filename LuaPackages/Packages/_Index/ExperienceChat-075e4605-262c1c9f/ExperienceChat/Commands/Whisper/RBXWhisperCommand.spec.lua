local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect

local createStore = require(ExperienceChat.createStore)
local PlayerAdded = require(ExperienceChat.Actions.PlayerAdded)
local RBXWhisperCommand = require(script.Parent.RBXWhisperCommand)

return function()
	beforeAll(function(c)
		c.textSource = {
			UserId = 1,
		}

		c.runRBXWhisperCommand = RBXWhisperCommand.clientRun
	end)

	describe("SHOULD handle RBXWhisperCommand correctly", function()
		it("SHOULD return error unknown when players dictionary is nil", function(c)
			local store = createStore()
			local result = c.runRBXWhisperCommand(store, c.textSource.UserId, "text")
			expect(result).toHaveProperty("metadata", "Roblox.Whisper.Error.Unknown")
		end)

		it("SHOULD return error unknown when unsanitizedName is nil", function(c)
			local store = createStore()
			store:dispatch(PlayerAdded(-1, "Player1", "Player"))

			local result = c.runRBXWhisperCommand(store, c.textSource.UserId, "unsanitized")
			expect(result).toHaveProperty("metadata", "Roblox.Whisper.Error.Unknown")
		end)

		it("SHOULD return an error when there are no matching players", function(c)
			local store = createStore()
			store:dispatch(PlayerAdded(1, "Player1", "Player1"))

			local result = c.runRBXWhisperCommand(store, c.textSource.UserId, "/w Player2")
			expect(result).toHaveProperty("metadata", "Roblox.Whisper.Error.TargetDoesNotExist")
			local returnsError = string.find(result.metadata, "Error")
			expect(returnsError).never.toEqual(nil)
		end)

		it("SHOULD return an error when trying to whisper to themselves", function(c)
			local store = createStore()
			store:dispatch(PlayerAdded(1, "Player1", "Player1"))

			local result = c.runRBXWhisperCommand(store, c.textSource.UserId, "/w Player1")
			expect(result).toHaveProperty("metadata", "Roblox.Whisper.Error.CannotWhisperToSelf")
		end)

		it("SHOULD return an error when there are too many matching players", function(c)
			local store = createStore()
			store:dispatch(PlayerAdded(1, "Player1", "Player"))
			store:dispatch(PlayerAdded(2, "Player2", "Player"))
			store:dispatch(PlayerAdded(3, "Player3", "Player"))

			local result = c.runRBXWhisperCommand(store, c.textSource.UserId, "/w Player")
			expect(result).toHaveProperty("metadata", "Roblox.Whisper.Error.TooManyMatches")
		end)

		it("SHOULD return error unknown missing when toWhisper player exists and is found", function(c)
			local store = createStore()
			store:dispatch(PlayerAdded(1, "Player1", "Player"))
			store:dispatch(PlayerAdded(2, "Player2", "Player"))

			local result = c.runRBXWhisperCommand(store, c.textSource.UserId, "/whisper @Player2 hi")
			expect(result).toHaveProperty("metadata", "Roblox.Whisper.Error.Unknown")
		end)
	end)
end
