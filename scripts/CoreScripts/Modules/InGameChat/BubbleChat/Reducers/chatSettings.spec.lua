local CorePackages = game:GetService("CorePackages")

local JestGlobals = require(CorePackages.JestGlobals)
local expect = JestGlobals.expect

local Rodux = require(CorePackages.Packages.Rodux)
local UpdateChatSettings = require(script.Parent.Parent.Actions.UpdateChatSettings)
local ChatSettings = require(script.Parent.Parent.ChatSettings)
local chatSettings = require(script.Parent.chatSettings)

return function()
	it("should use the base chat settings by default", function()
		local store = Rodux.Store.new(chatSettings)
		expect(store:getState()).toBe(ChatSettings)
	end)

	it("should override the default settings with the ones supplied", function()
		local newSettings = {
			BubbleDuration = ChatSettings.BubbleDuration / 2,
			MaxDistance = ChatSettings.MaxDistance * 2,
		}

		local store = Rodux.Store.new(chatSettings)

		local state = store:getState()
		expect(state.BubbleDuration).never.toBe(newSettings.BubbleDuration)
		expect(state.MaxDistance).never.toBe(newSettings.MaxDistance)
		expect(state.MaxBubbles).toBe(ChatSettings.MaxBubbles)

		store:dispatch(UpdateChatSettings(newSettings))

		state = store:getState()
		expect(state).toMatchObject(newSettings)
		expect(state.MaxBubbles).toBe(ChatSettings.MaxBubbles)
	end)

	it("should override the default settings with the ones supplied, properly handling nested lists", function()
		local newSettings = {
			BubbleDuration = ChatSettings.BubbleDuration / 2,
			SizeAnimation = {
				Enabled = not ChatSettings.SizeAnimation.Enabled,
			},
			BackgroundImage = {},
		}

		local store = Rodux.Store.new(chatSettings)

		local state = store:getState()
		store:dispatch(UpdateChatSettings(newSettings))

		state = store:getState()
		expect(state).toMatchObject(newSettings)
		expect(state.SizeAnimation.SpringDampingRatio).toBe(ChatSettings.SizeAnimation.SpringDampingRatio)
		expect(state.BackgroundImage.Image).toBe(ChatSettings.BackgroundImage.Image)
		expect(state.MaxBubbles).toBe(ChatSettings.MaxBubbles)
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
		expect(state.BubbleDuration).toBe(ChatSettings.BubbleDuration)
		expect(state.MaxDistance).never.toBe(ChatSettings.MaxDistance)
	end)

	it("should fill missing keys with their defaults in provided user specific settings", function()
		local userSettings = {
			["1234"] = {
				BubbleDuration = ChatSettings.BubbleDuration * 2,
			},
			["5678"] = {
				MinimizeDistance = ChatSettings.MinimizeDistance * 2,
				MaxDistance = ChatSettings.MaxDistance * 2,
				BackgroundGradient = {
					Enabled = not ChatSettings.BackgroundGradient.Enabled,
				},
			},
		}

		local store = Rodux.Store.new(chatSettings)
		store:dispatch(UpdateChatSettings({
			UserSpecificSettings = userSettings,
		}))
		local state = store:getState()
		local newUserSettings = state.UserSpecificSettings

		expect(newUserSettings["1234"]).toMatchObject({
			BubbleDuration = userSettings["1234"].BubbleDuration,
			MinimizeDistance = ChatSettings.MinimizeDistance,
			MaxDistance = ChatSettings.MaxDistance,
			BackgroundGradient = {
				Enabled = ChatSettings.BackgroundGradient.Enabled,
				Rotation = ChatSettings.BackgroundGradient.Rotation,
			},
			Transparency = ChatSettings.Transparency,
		})

		expect(newUserSettings["5678"]).toMatchObject({
			BubbleDuration = ChatSettings.BubbleDuration,
			MinimizeDistance = userSettings["5678"].MinimizeDistance,
			MaxDistance = userSettings["5678"].MaxDistance,
			BackgroundGradient = {
				Enabled = userSettings["5678"].BackgroundGradient.Enabled,
				Rotation = ChatSettings.BackgroundGradient.Rotation,
			},
			Transparency = ChatSettings.Transparency,
		})
	end)
end
