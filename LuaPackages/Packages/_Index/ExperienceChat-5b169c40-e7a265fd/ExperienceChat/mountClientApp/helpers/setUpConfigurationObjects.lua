local TextChatService = game:GetService("TextChatService")

local ExperienceChat = script:FindFirstAncestor("ExperienceChat")

local Actions = ExperienceChat.Actions
local ConfigurationObjectsLoaded = require(Actions.ConfigurationObjectsLoaded)
local ChatInputBarConfigurationEnabled = require(Actions.ChatInputBarConfigurationEnabled)
local ChatWindowConfigurationEnabled = require(Actions.ChatWindowConfigurationEnabled)
local TargetTextChannelPropertyChanged = require(Actions.TargetTextChannelPropertyChanged)
local BubbleChatSettingsChanged = require(Actions.BubbleChatSettingsChanged)
local ChatLayoutVerticalAlignmentChanged = require(Actions.ChatLayoutVerticalAlignmentChanged)
local ChatLayoutHorizontalAlignmentChanged = require(Actions.ChatLayoutHorizontalAlignmentChanged)
local ChatWindowSettingsChanged = require(Actions.ChatWindowSettingsChanged)

local setUpChatInputBarConfiguration = function(store, config)
	local chatInputBarConfiguration = TextChatService:FindFirstChildOfClass("ChatInputBarConfiguration")
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

		-- 2-way sync store changes to Roblox DOM
		store.changed:connect(function(newState, oldState)
			if newState.TextChannels ~= oldState.TextChannels then
				if newState.TextChannels.targetTextChannel ~= oldState.TextChannels.targetTextChannel then
					chatInputBarConfiguration.TargetTextChannel = newState.TextChannels.targetTextChannel
				end
			end
		end)
	end
end

local setUpChatWindowConfiguration = function(store, _config)
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
		}

		for _, property in ipairs(CHAT_WINDOW_SETTINGS_PROPERTIES) do
			if (chatWindowConfiguration :: any)[property] then
				initialChatWindowSettings[property] = (chatWindowConfiguration :: any)[property]
			end
		end

		chatWindowConfiguration.Changed:Connect(function(property)
			store:dispatch(ChatWindowSettingsChanged(property, (chatWindowConfiguration :: any)[property]))
		end)

		return initialChatWindowSettings
	end
end

local setUpBubbleChatConfiguration = function(store, _config)
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
			"Font",
		}

		for _, property in ipairs(BUBBLE_CHAT_CONFIGURATION_PROPERTIES) do
			if (bubbleChatConfiguration :: any)[property] then
				initialBubbleChatSettings[property] = (bubbleChatConfiguration :: any)[property]
			end
		end

		bubbleChatConfiguration.Changed:Connect(function(property)
			store:dispatch(BubbleChatSettingsChanged(property, (bubbleChatConfiguration :: any)[property]))
		end)

		return initialBubbleChatSettings
	end
end
return function(store, config)
	setUpChatInputBarConfiguration(store, config)
	local chatWindowSettings = setUpChatWindowConfiguration(store, config)
	local bubbleChatSettings = setUpBubbleChatConfiguration(store, config)

	store:dispatch(ConfigurationObjectsLoaded({
		bubbleChatSettings = bubbleChatSettings,
		chatWindowSettings = chatWindowSettings,
	}))
end
