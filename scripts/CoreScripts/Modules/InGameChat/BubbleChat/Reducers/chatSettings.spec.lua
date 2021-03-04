local CorePackages = game:GetService("CorePackages")

local Rodux = require(CorePackages.Packages.Rodux)
local UpdateChatSettings = require(script.Parent.Parent.Actions.UpdateChatSettings)
local ChatSettings = require(script.Parent.Parent.ChatSettings)
local chatSettings = require(script.Parent.chatSettings)

return function()
	it("should use the base chat settings by default", function()
		local store = Rodux.Store.new(chatSettings)
		expect(store:getState()).to.equal(ChatSettings)
	end)

	it("should override the default settings with the ones supplied", function()
		local newSettings = {
			BubbleDuration = ChatSettings.BubbleDuration / 2,
			MaxDistance = ChatSettings.MaxDistance * 2
		}

		local store = Rodux.Store.new(chatSettings)

		local state = store:getState()
		expect(state.BubbleDuration).to.never.equal(newSettings.BubbleDuration)
		expect(state.MaxDistance).to.never.equal(newSettings.MaxDistance)
		expect(state.MaxBubbles).to.equal(ChatSettings.MaxBubbles)

		store:dispatch(UpdateChatSettings(newSettings))

		state = store:getState()
		expect(state.BubbleDuration).to.equal(newSettings.BubbleDuration)
		expect(state.MaxDistance).to.equal(newSettings.MaxDistance)
		expect(state.MaxBubbles).to.equal(ChatSettings.MaxBubbles)
	end)

	it("should always override the default settings no matter how many times the user updates the settings", function()
		local store = Rodux.Store.new(chatSettings)

		store:dispatch(UpdateChatSettings({
			BubbleDuration = ChatSettings.BubbleDuration * 2,
		}))

		store:dispatch(UpdateChatSettings({
			MaxDistance = ChatSettings.MaxDistance * 2,
		}))

		local state = store:getState()

		-- After the second call to UpdateChatSettings, BubbleDuration returns
		-- to the default value.
		expect(state.BubbleDuration).to.equal(ChatSettings.BubbleDuration)
		expect(state.MaxDistance).to.never.equal(ChatSettings.MaxDistance)
	end)
end
