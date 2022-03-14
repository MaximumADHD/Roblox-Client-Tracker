local CorePackages = game:GetService("CorePackages")

local Rodux = require(CorePackages.Packages.Rodux)

local voiceState = require(script.Parent.voiceState)
local ParticipantAdded = require(script.Parent.Parent.Actions.ParticipantAdded)
local ParticipantRemoved = require(script.Parent.Parent.Actions.ParticipantRemoved)
local VoiceStateChanged = require(script.Parent.Parent.Actions.VoiceStateChanged)
local VoiceEnabledChanged = require(script.Parent.Parent.Actions.VoiceEnabledChanged)

return function()
	it("should handle ParticipantAdded", function()
		local store = Rodux.Store.new(voiceState)

		store:dispatch(ParticipantAdded(12345))
		store:dispatch(ParticipantAdded("23456"))

		local state = store:getState()

		expect(state["12345"]).to.be.ok()
		expect(state["23456"]).to.be.ok()
		expect(state["34567"]).to.never.be.ok()
	end)

	it("should handle ParticipantRemoved", function()
		local store = Rodux.Store.new(voiceState)

		store:dispatch(ParticipantAdded(12345))
		store:dispatch(ParticipantAdded("23456"))
		store:dispatch(ParticipantRemoved("12345"))

		local state = store:getState()

		expect(state["12345"]).to.never.be.ok()
		expect(state["23456"]).to.be.ok()
		expect(state["34567"]).to.never.be.ok()
	end)

	it("should handle VoiceStateChanged", function()
		local store = Rodux.Store.new(voiceState)

		store:dispatch(ParticipantAdded(12345))
		store:dispatch(ParticipantAdded("23456"))
		store:dispatch(VoiceStateChanged("12345", "Test1"))
		store:dispatch(VoiceStateChanged(23456, "Test2"))

		local state = store:getState()

		expect(state["12345"]).to.equal("Test1")
		expect(state["23456"]).to.equal("Test2")
	end)

	it("should handle VoiceEnabledChanged", function()
		local store = Rodux.Store.new(voiceState)

		store:dispatch(VoiceEnabledChanged(true))

		local state = store:getState()

		expect(state["voiceEnabled"]).to.equal(true)

		store:dispatch(VoiceEnabledChanged(false))

		state = store:getState()

		expect(state["voiceEnabled"]).to.equal(false)
	end)
end
