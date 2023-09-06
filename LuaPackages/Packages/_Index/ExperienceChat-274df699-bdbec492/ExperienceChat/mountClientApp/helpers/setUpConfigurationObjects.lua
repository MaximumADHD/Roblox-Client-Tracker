local TextChatService = game:GetService("TextChatService")
local UserInputService = game:GetService("UserInputService")
local ExperienceChat = script:FindFirstAncestor("ExperienceChat")

local Flags = ExperienceChat.Flags
local getEnableChatInputBarConfigurationStyleCustomizations =
	require(Flags.getEnableChatInputBarConfigurationStyleCustomizations)
local getTextChatServicePropertyTextBox = require(Flags.getTextChatServicePropertyTextBox)

local Analytics = require(ExperienceChat.Analytics)

local Actions = ExperienceChat.Actions
local ConfigurationObjectsLoaded = require(Actions.ConfigurationObjectsLoaded)
local ChatInputBarConfigurationEnabled = require(Actions.ChatInputBarConfigurationEnabled)
local ChatWindowConfigurationEnabled = require(Actions.ChatWindowConfigurationEnabled)
local TargetTextChannelPropertyChanged = require(Actions.TargetTextChannelPropertyChanged)
local BubbleChatSettingsChanged = require(Actions.BubbleChatSettingsChanged)
local ChatLayoutVerticalAlignmentChanged = require(Actions.ChatLayoutVerticalAlignmentChanged)
local ChatLayoutHorizontalAlignmentChanged = require(Actions.ChatLayoutHorizontalAlignmentChanged)
local ChatWindowSettingsChanged = require(Actions.ChatWindowSettingsChanged)
local ChatInputBarSettingsChanged = require(Actions.ChatInputBarSettingsChanged)
local DevTextBoxEnabledChanged = require(Actions.DevTextBoxEnabledChanged)

local setUpBubbleChatConfigurationChildren = require(script.Parent.setUpBubbleChatConfigurationChildren)

local getEnableChatInputBarConfigurationPropertyKeyboardKeyCode =
	require(ExperienceChat.Flags.getEnableChatInputBarConfigurationPropertyKeyboardKeyCode)
local getEnableBubbleChatConfigurationMaxBubbles =
	require(ExperienceChat.Flags.getEnableBubbleChatConfigurationMaxBubbles)
local getEnableBubbleChatConfigurationTailVisible =
	require(ExperienceChat.Flags.getEnableBubbleChatConfigurationTailVisible)
local getEnableChatInputBarConfigurationAutocompleteEnabled =
	require(ExperienceChat.Flags.getEnableChatInputBarConfigurationAutocompleteEnabled)

local function isKeyboardKeyCodeSanitized(keyboardKeyCode: Enum.KeyCode): boolean
	local keyCodeStr = UserInputService:GetStringForKeyCode(keyboardKeyCode)
	if keyCodeStr == nil or keyCodeStr == "" then
		warn(
			"ChatInputBarConfiguration.KeyboardKeyCode has an unsupported keycode for rendering UI:"
				.. tostring(keyboardKeyCode)
		)
		return false
	end

	return true
end

return function(store, config)
	if config.analytics then
		Analytics.with(config.analytics)
	end

	local fireConfigurationAnalytics = function(eventName: string, property: string, value: any)
		local sanitizedValue: string?
		if type(value) == "number" or type(value) == "boolean" or typeof(value) == "EnumItem" then
			sanitizedValue = tostring(value)
		elseif typeof(value) == "Color3" then
			sanitizedValue = value:ToHex()
		elseif typeof(value) == "Font" then
			local fontFamily = string.gsub(value.Family, "rbxasset://fonts/families/", "")
			sanitizedValue = tostring(fontFamily) .. " " .. tostring(value.Weight) .. " " .. tostring(value.Style)
		else
			return
		end

		assert(sanitizedValue, "should exist")
		Analytics.FireClientAnalyticsWithEventName(eventName, {
			[property] = sanitizedValue,
		})
	end

	local setUpChatInputBarConfiguration = function()
		local chatInputBarConfiguration = TextChatService:FindFirstChildOfClass("ChatInputBarConfiguration")
		local initialChatInputBarSettings = {}
		if chatInputBarConfiguration then
			store:dispatch(ChatInputBarConfigurationEnabled(chatInputBarConfiguration.Enabled))
			chatInputBarConfiguration:GetPropertyChangedSignal("Enabled"):Connect(function()
				store:dispatch(ChatInputBarConfigurationEnabled(chatInputBarConfiguration.Enabled))
			end)

			chatInputBarConfiguration:GetPropertyChangedSignal("TargetTextChannel"):Connect(function()
				store:dispatch(TargetTextChannelPropertyChanged(chatInputBarConfiguration.TargetTextChannel))
			end)

			if config.defaultTargetTextChannel then
				chatInputBarConfiguration.TargetTextChannel = config.defaultTargetTextChannel
			end

			if getTextChatServicePropertyTextBox() then
				store:dispatch(DevTextBoxEnabledChanged(chatInputBarConfiguration.TextBox ~= nil))
				chatInputBarConfiguration:GetPropertyChangedSignal("TextBox"):Connect(function()
					store:dispatch(DevTextBoxEnabledChanged(chatInputBarConfiguration.TextBox ~= nil))
				end)
			end

			-- 2-way sync store changes to Roblox DOM
			store.changed:connect(function(newState, oldState)
				if newState.TextChannels ~= oldState.TextChannels then
					if newState.TextChannels.targetTextChannel ~= oldState.TextChannels.targetTextChannel then
						chatInputBarConfiguration.TargetTextChannel = newState.TextChannels.targetTextChannel
					end
				end
			end)

			if getEnableChatInputBarConfigurationStyleCustomizations() then
				local CHAT_INPUT_BAR_SETTINGS = {
					"BackgroundTransparency",
					"BackgroundColor3",
					"TextSize",
					"TextColor3",
					"TextStrokeColor3",
					"TextStrokeTransparency",
					"FontFace",
					"PlaceholderColor3",
				}

				if getEnableChatInputBarConfigurationPropertyKeyboardKeyCode() then
					table.insert(CHAT_INPUT_BAR_SETTINGS, "KeyboardKeyCode")
				end

				if
					getEnableChatInputBarConfigurationAutocompleteEnabled()
					and chatInputBarConfiguration.AutocompleteEnabled ~= nil
				then
					table.insert(CHAT_INPUT_BAR_SETTINGS, "AutocompleteEnabled")
				end

				for _, property in ipairs(CHAT_INPUT_BAR_SETTINGS) do
					if (chatInputBarConfiguration :: any)[property] then
						local value = (chatInputBarConfiguration :: any)[property]

						if
							getEnableChatInputBarConfigurationPropertyKeyboardKeyCode()
							and property == "KeyboardKeyCode"
							and not isKeyboardKeyCodeSanitized(value)
						then
							chatInputBarConfiguration.KeyboardKeyCode = Enum.KeyCode.Slash
							initialChatInputBarSettings[property] = Enum.KeyCode.Slash
							continue
						end
						initialChatInputBarSettings[property] = value
						fireConfigurationAnalytics("ChatInputBarConfigurationLoaded", property, value)
					end
				end

				chatInputBarConfiguration.Changed:Connect(function(property)
					local value = (chatInputBarConfiguration :: any)[property]

					if
						getEnableChatInputBarConfigurationPropertyKeyboardKeyCode()
						and property == "KeyboardKeyCode"
						and not isKeyboardKeyCodeSanitized(value)
					then
						local oldKeyboardKeyCode = store:getState().ChatLayout.ChatInputBarSettings.KeyboardKeyCode
						chatInputBarConfiguration.KeyboardKeyCode = oldKeyboardKeyCode
						return
					end
					store:dispatch(ChatInputBarSettingsChanged(property, value))

					fireConfigurationAnalytics("ChatInputBarConfigurationChanged", property, value)
				end)
			end

			return initialChatInputBarSettings
		end

		return {}
	end

	local setUpChatWindowConfiguration = function()
		local chatWindowConfiguration = TextChatService:FindFirstChildOfClass("ChatWindowConfiguration")
		local initialChatWindowSettings = {}

		if chatWindowConfiguration then
			store:dispatch(ChatWindowConfigurationEnabled(chatWindowConfiguration.Enabled))
			chatWindowConfiguration:GetPropertyChangedSignal("Enabled"):Connect(function()
				store:dispatch(ChatWindowConfigurationEnabled(chatWindowConfiguration.Enabled))
			end)

			store:dispatch(ChatLayoutHorizontalAlignmentChanged(chatWindowConfiguration.HorizontalAlignment))
			chatWindowConfiguration:GetPropertyChangedSignal("HorizontalAlignment"):Connect(function()
				store:dispatch(ChatLayoutHorizontalAlignmentChanged(chatWindowConfiguration.HorizontalAlignment))
			end)

			store:dispatch(ChatLayoutVerticalAlignmentChanged(chatWindowConfiguration.VerticalAlignment))
			chatWindowConfiguration:GetPropertyChangedSignal("VerticalAlignment"):Connect(function()
				store:dispatch(ChatLayoutVerticalAlignmentChanged(chatWindowConfiguration.VerticalAlignment))
			end)

			local CHAT_WINDOW_SETTINGS_PROPERTIES = {
				"BackgroundColor3",
				"BackgroundTransparency",
				"FontFace",
				"TextColor3",
				"TextSize",
				"TextStrokeColor3",
				"TextStrokeTransparency",
				"HeightScale",
				"WidthScale",
				"HorizontalAlignment",
				"VerticalAlignment",
			}

			for _, property in ipairs(CHAT_WINDOW_SETTINGS_PROPERTIES) do
				if (chatWindowConfiguration :: any)[property] then
					local value = (chatWindowConfiguration :: any)[property]
					initialChatWindowSettings[property] = value

					fireConfigurationAnalytics("ChatWindowConfigurationLoaded", property, value)
				end
			end

			chatWindowConfiguration.Changed:Connect(function(property)
				local value = (chatWindowConfiguration :: any)[property]
				store:dispatch(ChatWindowSettingsChanged(property, value))

				fireConfigurationAnalytics("ChatWindowConfigurationChanged", property, value)
			end)

			return initialChatWindowSettings
		end

		return {}
	end

	local setUpBubbleChatConfiguration = function()
		local bubbleChatConfiguration = TextChatService:FindFirstChildOfClass("BubbleChatConfiguration")
		local initialBubbleChatSettings = {}
		if bubbleChatConfiguration then
			local BUBBLE_CHAT_CONFIGURATION_PROPERTIES = {
				"Enabled",
				"AdorneeName",
				"BubbleDuration",
				"BubblesSpacing",
				"VerticalStudsOffset",
				"LocalPlayerStudsOffset",
				"MinimizeDistance",
				"MaxDistance",
				"BackgroundColor3",
				"TextColor3",
				"TextSize",
				"FontFace",
			}

			if getEnableChatInputBarConfigurationStyleCustomizations() then
				table.insert(BUBBLE_CHAT_CONFIGURATION_PROPERTIES, "BackgroundTransparency")
			end

			if getEnableBubbleChatConfigurationMaxBubbles() then
				table.insert(BUBBLE_CHAT_CONFIGURATION_PROPERTIES, "MaxBubbles")
			end

			if getEnableBubbleChatConfigurationTailVisible() then
				table.insert(BUBBLE_CHAT_CONFIGURATION_PROPERTIES, "TailVisible")
			end

			for _, property in ipairs(BUBBLE_CHAT_CONFIGURATION_PROPERTIES) do
				if (bubbleChatConfiguration :: any)[property] then
					local value = (bubbleChatConfiguration :: any)[property]
					initialBubbleChatSettings[property] = value

					fireConfigurationAnalytics("BubbleChatConfigurationLoaded", property, value)
				end
			end

			bubbleChatConfiguration.Changed:Connect(function(property)
				local value = (bubbleChatConfiguration :: any)[property]
				store:dispatch(BubbleChatSettingsChanged(property, value))

				fireConfigurationAnalytics("BubbleChatConfigurationChanged", property, value)
			end)

			local bubbleChatChildrenSettings = setUpBubbleChatConfigurationChildren(store)
			for property, value in pairs(bubbleChatChildrenSettings) do
				if value then
					initialBubbleChatSettings[property] = bubbleChatChildrenSettings[property]
				end
			end

			return initialBubbleChatSettings
		end

		return {}
	end

	local chatWindowSettings = setUpChatWindowConfiguration()
	local bubbleChatSettings = setUpBubbleChatConfiguration()
	local chatInputBarSettings = setUpChatInputBarConfiguration()

	store:dispatch(ConfigurationObjectsLoaded({
		bubbleChatSettings = bubbleChatSettings,
		chatWindowSettings = chatWindowSettings,
		chatInputBarSettings = chatInputBarSettings,
	}))
end
