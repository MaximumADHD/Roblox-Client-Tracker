local TextChatService = game:GetService("TextChatService")
local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local ProjectRoot = ExperienceChat.Parent

local React = require(ProjectRoot.React)
local Dictionary = require(ProjectRoot.llama).Dictionary

local FFlagShowVerifiedBadgeInNewChat = require(ExperienceChat.Flags.FFlagShowVerifiedBadgeInNewChat)
local getFFlagChatTranslationUIEnabled = require(ExperienceChat.Flags.getFFlagChatTranslationUIEnabled)
local GetFFlagEnableAccessibilitySettingsEffectsInExperienceChat =
	require(ExperienceChat.Flags.GetFFlagEnableAccessibilitySettingsEffectsInExperienceChat)

local Config = require(ExperienceChat.Config)
local useInterpolatedClientSettings = require(ExperienceChat.ClientSettings.useInterpolatedClientSettings)

local UI = script:FindFirstAncestor("UI")
local ScrollingView = require(UI.ScrollingView)
local TextMessageLabel = require(UI.TextMessageLabel)
local TranslatedTextMessage = require(UI.TranslatedTextMessage)

-- @TODO: Handle default textChannelId RBXGeneral more elegantly
local defaultProps = {
	LayoutOrder = 1,
	size = UDim2.fromScale(1, 1),
	messages = {},
	transparencyValue = Config.ChatWindowBackgroundTransparency,
	textTransparency = 0,
	mutedUserIds = {},
	verifiedUserIds = {},
	showTranslationButton = false,
}

local ChatWindow = function(passedProps)
	local props = Dictionary.join(defaultProps, passedProps)
	local chatWindowSettings = props.chatWindowSettings
	local backgroundTransparency = chatWindowSettings.BackgroundTransparency
	local backgroundColor3 = chatWindowSettings.BackgroundColor3
	if GetFFlagEnableAccessibilitySettingsEffectsInExperienceChat() then
		backgroundTransparency = useInterpolatedClientSettings(chatWindowSettings).BackgroundTransparency
		backgroundColor3 = useInterpolatedClientSettings(chatWindowSettings).BackgroundColor3
	end

	local getTransparencyOrBindingValue = React.useCallback(function(initialTransparency, bindingOrValue)
		if type(bindingOrValue) == "number" then
			return props.transparencyValue
		end

		return bindingOrValue:map(function(value: number)
			return initialTransparency + value * (1 - initialTransparency)
		end)
	end)

	local onTextMessageLabelButtonActivated = React.useCallback(function(message)
		props.resetTargetChannel()

		local fromUserId = tonumber(message.userId)
		if fromUserId then
			props.activateWhisperMode(fromUserId)
		end
	end)

	local createChildren = React.useCallback(function(messages)
		local children = Dictionary.map(messages, function(message, index)
			if message.isVisibleInChatWindow then
				local isUserVerified = if message.userId and FFlagShowVerifiedBadgeInNewChat()
					then Dictionary.has(props.verifiedUserIds, message.userId)
					else false
				if getFFlagChatTranslationUIEnabled() then
					return React.createElement(TranslatedTextMessage, {
						message = message,
						LayoutOrder = index,
						isUserVerified = isUserVerified,
						textTransparency = getTransparencyOrBindingValue(0, props.textTransparency),
						textStrokeTransparency = getTransparencyOrBindingValue(
							props.chatWindowSettings.TextStrokeTransparency,
							props.textTransparency
						),
						onTextMessageLabelButtonActivated = onTextMessageLabelButtonActivated,
						chatWindowSettings = props.chatWindowSettings,
						showTranslationButton = props.showTranslationButton,
						onToggle = function() end,
					}),
						message.messageId
				else
					return React.createElement(TextMessageLabel, {
						message = message,
						LayoutOrder = index,
						isUserVerified = isUserVerified,
						textTransparency = getTransparencyOrBindingValue(0, props.textTransparency),
						textStrokeTransparency = getTransparencyOrBindingValue(
							props.chatWindowSettings.TextStrokeTransparency,
							props.textTransparency
						),
						onTextMessageLabelButtonActivated = onTextMessageLabelButtonActivated,
						chatWindowSettings = props.chatWindowSettings,
					}),
						message.messageId
				end
			else
				return nil :: any, nil
			end
		end)

		children["$layout"] = React.createElement("UIListLayout", {
			Padding = UDim.new(0, 4),
			SortOrder = Enum.SortOrder.LayoutOrder,
		})

		return children
	end)

	return React.createElement("Frame", {
		BackgroundColor3 = backgroundColor3,
		BorderSizePixel = 0,
		LayoutOrder = props.LayoutOrder,
		Size = props.size,
		Visible = props.visible,
		BackgroundTransparency = getTransparencyOrBindingValue(backgroundTransparency, props.transparencyValue),
		[React.Event.MouseEnter] = props.onHovered,
		[React.Event.MouseLeave] = props.onUnhovered,
		[React.Change.AbsoluteSize] = function(rbx)
			local chatWindowConfiguration = TextChatService:FindFirstChildOfClass("ChatWindowConfiguration")
			if chatWindowConfiguration and props.onAbsoluteSizeChanged then
				props.onAbsoluteSizeChanged(rbx, chatWindowConfiguration)
			end
		end,
		[React.Change.AbsolutePosition] = function(rbx)
			local chatWindowConfiguration = TextChatService:FindFirstChildOfClass("ChatWindowConfiguration")
			if chatWindowConfiguration and props.onAbsoluteSizeChanged then
				props.onAbsolutePositionChanged(rbx, chatWindowConfiguration)
			end
		end,
	}, {
		uiSizeConstraint = React.createElement("UISizeConstraint", {
			MaxSize = Vector2.new(Config.ChatWindowMaxWidth, Config.ChatWindowMaxHeight),
		}),
		scrollingView = React.createElement(ScrollingView, {
			size = props.size,
			messages = props.messages,
		}, createChildren(props.messages)),
	})
end

return ChatWindow
