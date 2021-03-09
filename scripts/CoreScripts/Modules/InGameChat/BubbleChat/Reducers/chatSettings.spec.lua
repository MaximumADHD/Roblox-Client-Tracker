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

	it("should override the default settings with the ones supplied, properly handling nested lists", function()
		local newSettings = {
			BubbleDuration = ChatSettings.BubbleDuration / 2,
			SizeAnimation = {
				Enabled = not ChatSettings.SizeAnimation.Enabled
			},
			BackgroundImage = {}
		}

		local store = Rodux.Store.new(chatSettings)

		local state = store:getState()
		store:dispatch(UpdateChatSettings(newSettings))

		state = store:getState()
		expect(state.BubbleDuration).to.equal(newSettings.BubbleDuration)
		expect(state.SizeAnimation.Enabled).to.equal(newSettings.SizeAnimation.Enabled)
		expect(state.SizeAnimation.SpringDampingRatio).to.equal(ChatSettings.SizeAnimation.SpringDampingRatio)
		expect(state.BackgroundImage.Image).to.equal(ChatSettings.BackgroundImage.Image)
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

	it("should fill missing keys with their defaults in provided user specific settings", function()
		local userSettings = {
				["1234"] = {
					BubbleDuration = ChatSettings.BubbleDuration * 2
				},
				["5678"] = {
					MinimizeDistance = ChatSettings.MinimizeDistance * 2,
					MaxDistance = ChatSettings.MaxDistance * 2,
					BackgroundGradient = {
						Enabled = not ChatSettings.BackgroundGradient.Enabled
					}
				}
		}

		local store = Rodux.Store.new(chatSettings)
		store:dispatch(UpdateChatSettings({
			UserSpecificSettings = userSettings
		}))
		local state = store:getState()
		local newUserSettings = state.UserSpecificSettings

		expect(newUserSettings["1234"]).to.be.ok()
		expect(newUserSettings["1234"].BubbleDuration).to.equal(userSettings["1234"].BubbleDuration)
		expect(newUserSettings["1234"].MinimizeDistance).to.equal(ChatSettings.MinimizeDistance)
		expect(newUserSettings["1234"].MaxDistance).to.equal(ChatSettings.MaxDistance)
		expect(newUserSettings["1234"].BackgroundGradient.Enabled).to.equal(ChatSettings.BackgroundGradient.Enabled)
		expect(newUserSettings["1234"].BackgroundGradient.Rotation).to.equal(ChatSettings.BackgroundGradient.Rotation)
		expect(newUserSettings["1234"].Transparency).to.equal(ChatSettings.Transparency)

		expect(newUserSettings["5678"]).to.be.ok()
		expect(newUserSettings["5678"].BubbleDuration).to.equal(ChatSettings.BubbleDuration)
		expect(newUserSettings["5678"].MinimizeDistance).to.equal(userSettings["5678"].MinimizeDistance)
		expect(newUserSettings["5678"].MaxDistance).to.equal(userSettings["5678"].MaxDistance)
		expect(newUserSettings["5678"].BackgroundGradient.Enabled).to.equal(userSettings["5678"].BackgroundGradient.Enabled)
		expect(newUserSettings["5678"].BackgroundGradient.Rotation).to.equal(ChatSettings.BackgroundGradient.Rotation)
		expect(newUserSettings["5678"].Transparency).to.equal(ChatSettings.Transparency)
	end)
end
