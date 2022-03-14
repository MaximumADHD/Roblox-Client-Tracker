local CorePackages = game:GetService("CorePackages")
local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Rodux = require(CorePackages.Packages.Rodux)

local components = require(script.Parent.components)
local BubbleChatEnabledChanged = require(script.Parent.Parent.Actions.BubbleChatEnabledChanged)

local VoiceEnabledChanged = require(Modules.VoiceChat.Actions.VoiceEnabledChanged)

return function()
	it("should default to nothing enabled", function()
		local store = Rodux.Store.new(components)
		local state = store:getState()

		for k, v in pairs(state) do
			expect(v).to.equal(false)
		end
	end)

	it("should handle BubbleChatEnabledChanged", function()
		local store = Rodux.Store.new(components)

		expect(store:getState().bubbleChatEnabled).to.equal(false)

		store:dispatch(BubbleChatEnabledChanged(true))

		expect(store:getState().bubbleChatEnabled).to.equal(true)
	end)

	it("should handle VoiceEnabledChanged", function()
		local store = Rodux.Store.new(components)

		expect(store:getState().voiceEnabled).to.equal(false)

		store:dispatch(VoiceEnabledChanged(true))

		expect(store:getState().voiceEnabled).to.equal(true)
	end)
end
