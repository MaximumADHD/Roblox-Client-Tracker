local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Localization = require(ExperienceChat.Localization)

local ProjectRoot = ExperienceChat.Parent
local Roact = require(ProjectRoot.Roact)

local UI = script.Parent.UI
local ChatInputBar = require(UI.ChatInputBar)

local ChatInputBarApp = Roact.Component:extend("ChatInputBarApp")
ChatInputBarApp.defaultProps = {
	addTopPadding = true,
	LayoutOrder = 1,
	targetTextChannel = nil,
	onTargetTextChannelChanged = function() end,
	onSendChat = nil,
	transparencyValue = 0.3,
}

function ChatInputBarApp:render()
	return Roact.createElement(ChatInputBar, {
		addTopPadding = self.props.addTopPadding,
		LayoutOrder = self.props.LayoutOrder,
		placeholderText = self.props.placeholderText,
		disabledChatPlaceholderText = self.props.disabledChatPlaceholderText,
		size = UDim2.fromScale(1, 0),
		targetTextChannel = self.props.targetTextChannel,
		onTargetTextChannelChanged = self.props.onTargetTextChannelChanged,
		onSendChat = self.props.onSendChat,
		transparencyValue = self.props.transparencyValue,
		onChatInputBarHoveredOrFocused = self.props.onChatInputBarHoveredOrFocused,
		onChatInputBarNotHoveredOrFocused = self.props.onChatInputBarNotHoveredOrFocused,
		canLocalUserChat = self.props.canLocalUserChat,
	})
end

return Localization.connect(function()
	return {
		placeholderText = "GameChat_ChatMain_ChatBarText",
		disabledChatPlaceholderText = "GameChat_ChatMessageValidator_SettingsError",
	}
end)(ChatInputBarApp)
