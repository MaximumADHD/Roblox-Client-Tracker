local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect
local jest = globals.jest

local createStore = require(ExperienceChat.createStore)
local PlayerAdded = require(ExperienceChat.Actions.PlayerAdded)
local handleWhisperCommandErrors = require(script.Parent.handleWhisperCommandErrors)

return function()
	describe("handleWhisperCommandErrors", function()
		beforeAll(function(c)
			local mockTranslator = {
				FormatByKey = jest.fn(function(_, key)
					return key
				end),
			}
			c.translator = mockTranslator
			c.defaultSystemTextChannel = nil
		end)

		it("SHOULD return nil when players dictionary is nil", function(c)
			local players = nil
			local result = handleWhisperCommandErrors("name", players, -1, c.translator, c.defaultSystemTextChannel)
			expect(result).toEqual(nil)
		end)

		it("SHOULD return nil when unsanitizedName is nil", function(c)
			local store = createStore()
			store:dispatch(PlayerAdded(-1, "Player1", "Player"))
			local players = store:getState().Players

			local result = handleWhisperCommandErrors(nil, players, -1, c.translator, c.defaultSystemTextChannel)
			expect(result).toEqual(nil)
		end)

		it("SHOULD return TargetDoesNotExist when there are no matching players", function(c)
			local store = createStore()
			store:dispatch(PlayerAdded(-1, "Player1", "Player"))
			local players = store:getState().Players

			local result = handleWhisperCommandErrors("Random", players, 1, c.translator, c.defaultSystemTextChannel)
			expect(result).toHaveProperty("metadata", "Roblox.Whisper.Error.TargetDoesNotExist")
		end)

		it("SHOULD return CannotWhisperToSelf when attempting to whisper themselves", function(c)
			local store = createStore()
			store:dispatch(PlayerAdded(1, "Player1", "Player"))
			local players = store:getState().Players

			local result = handleWhisperCommandErrors("Player", players, 1, c.translator, c.defaultSystemTextChannel)
			expect(result).toHaveProperty("metadata", "Roblox.Whisper.Error.CannotWhisperToSelf")
		end)

		it("SHOULD return CannotChat when toWhisper player exists and is found", function(c)
			local store = createStore()
			store:dispatch(PlayerAdded(1, "Player1", "Player"))
			store:dispatch(PlayerAdded(2, "Player2", "Player"))

			local players = store:getState().Players

			local result = handleWhisperCommandErrors("@Player2", players, 1, c.translator, c.defaultSystemTextChannel)
			expect(result).toHaveProperty("metadata", "Roblox.Whisper.Error.CannotChat")

			-- Should work even with additional whitespaces
			result = handleWhisperCommandErrors("@Player2      ", players, 1, c.translator, c.defaultSystemTextChannel)
			expect(result).toHaveProperty("metadata", "Roblox.Whisper.Error.CannotChat")
		end)

		it("SHOULD return nil when there are more than one matches of toWhisper players", function(c)
			local store = createStore()
			store:dispatch(PlayerAdded(1, "Player1", "Player1"))
			store:dispatch(PlayerAdded(2, "Player2", "Player"))
			store:dispatch(PlayerAdded(3, "Player3", "Player"))

			local players = store:getState().Players

			local result = handleWhisperCommandErrors("Player", players, 1, c.translator, c.defaultSystemTextChannel)
			expect(result).toEqual(nil)
		end)
	end)
end
