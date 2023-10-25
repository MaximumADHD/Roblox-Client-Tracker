local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect
local None = require(Packages.llama).None

local reducer = require(script.Parent.participantsMuted)

local Actions = ExperienceChat.Actions
local VoiceParticipantAdded = require(Actions.VoiceParticipantAdded)
local VoiceParticipantRemoved = require(Actions.VoiceParticipantRemoved)
local VoiceParticipantToggleMuted = require(Actions.VoiceParticipantToggleMuted)

return function()
	describe("WHEN VoiceParticipantAdded is dispatched", function()
		it("SHOULD add participant to state", function()
			local state = reducer({}, VoiceParticipantAdded(123))
			expect(state["123"]).toEqual(false)
		end)

		it("SHOULD do nothing if participant already exists", function()
			local state = reducer({ ["123"] = true }, VoiceParticipantAdded(123))
			expect(state["123"]).toEqual(true)
		end)
	end)

	describe("WHEN VoiceParticipantRemoved is dispatched", function()
		it("SHOULD remove participant from state", function()
			local state = reducer({ ["123"] = false }, VoiceParticipantRemoved(123))
			expect(state["123"]).toEqual(None)
		end)

		it("SHOULD do nothing if participant doesn't exist", function()
			local state = reducer({}, VoiceParticipantRemoved(123))
			expect(state["123"]).toEqual(None)
		end)
	end)

	describe("WHEN VoiceParticipantToggleMuted is dispatched", function()
		it("SHOULD set participant state", function()
			local state = reducer({ ["123"] = false }, VoiceParticipantToggleMuted(123, true))
			expect(state["123"]).toEqual(true)
		end)

		it("SHOULD do nothing if participant doesn't exist", function()
			local state = reducer({}, VoiceParticipantToggleMuted(123, false))
			expect(state["123"]).toEqual(nil)
		end)
	end)
end
