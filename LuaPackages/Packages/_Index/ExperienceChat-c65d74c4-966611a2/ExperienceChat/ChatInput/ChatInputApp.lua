local Players = game:GetService("Players")

local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Localization = require(ExperienceChat.Localization)

local ProjectRoot = ExperienceChat.Parent
local Roact = require(ProjectRoot.Roact)
local RoactRodux = require(ProjectRoot.RoactRodux)

local TargetTextChannelChanged = require(ExperienceChat.Actions.TargetTextChannelChanged)

local UI = script.Parent.UI
local ChatInputBar = require(UI.ChatInputBar)

local ChatInputBarApp = Roact.Component:extend("ChatInputBarApp")
ChatInputBarApp.defaultProps = {
	addTopPadding = true,
	LayoutOrder = 1,
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
		onSendChat = self.props.onSendChat,
		transparencyValue = self.props.transparencyValue,
		onChatInputBarHoveredOrFocused = self.props.onChatInputBarHoveredOrFocused,
		onChatInputBarNotHoveredOrFocused = self.props.onChatInputBarNotHoveredOrFocused,
		canLocalUserChat = self.props.canLocalUserChat,
		targetTextChannel = self.props.targetTextChannel,
		setTargetTextChannel = self.props.setTargetTextChannel,
		localPlayer = self.props.localPlayer,
	})
end

return RoactRodux.connect(function(state)
	return {
		targetTextChannel = state.TargetTextChannel,
		localPlayer = Players.LocalPlayer,
	}
end, function(dispatch)
	return {
		setTargetTextChannel = function(channel: TextChannel)
			dispatch(TargetTextChannelChanged(channel))
		end,
	}
end)(Localization.connect(function()
	return {
		placeholderText = "GameChat_ChatMain_ChatBarText",
		disabledChatPlaceholderText = "GameChat_ChatMessageValidator_SettingsError",
	}
end)(ChatInputBarApp))
