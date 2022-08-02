local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")

local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Localization = require(ExperienceChat.Localization)

local ProjectRoot = ExperienceChat.Parent
local Roact = require(ProjectRoot.Roact)
local RoactRodux = require(ProjectRoot.RoactRodux)

local ChatInputBarActivatedTeamMode = require(ExperienceChat.Actions.ChatInputBarActivatedTeamMode)
local ChatInputBarResetTargetChannel = require(ExperienceChat.Actions.ChatInputBarResetTargetChannel)

local UI = script.Parent.UI
local ChatInputBar = require(UI.ChatInputBar)

local ChatInputBarApp = Roact.Component:extend("ChatInputBarApp")
ChatInputBarApp.defaultProps = {
	addTopPadding = true,
	LayoutOrder = 1,
	onSendChat = nil,
	transparencyValue = 0.3,
}

local function getTextSourceFromChannel(targetTextChannel: TextChannel?): TextSource?
	local textSource: TextSource?
	if targetTextChannel then
		for _, child in ipairs(targetTextChannel:GetChildren()) do
			if child:IsA("TextSource") and child.UserId == Players.LocalPlayer.UserId then
				textSource = child
				break
			end
		end
	end
	return textSource
end

function ChatInputBarApp:render()
	return Roact.createElement(ChatInputBar, {
		addTopPadding = self.props.addTopPadding,
		LayoutOrder = self.props.LayoutOrder,
		placeholderText = if self.props.isUsingTouch
			then self.props.placeholderTouchText
			else self.props.placeholderKeyboardText,
		disabledChatPlaceholderText = self.props.disabledChatPlaceholderText,
		size = UDim2.fromScale(1, 0),
		onSendChat = self.props.onSendChat,
		transparencyValue = self.props.transparencyValue,
		onChatInputBarHoveredOrFocused = self.props.onChatInputBarHoveredOrFocused,
		onChatInputBarNotHoveredOrFocused = self.props.onChatInputBarNotHoveredOrFocused,
		canLocalUserChat = self.props.canLocalUserChat,
		targetTextChannel = self.props.targetTextChannel,
		activateTeamMode = self.props.activateTeamMode,
		chatInputBarResetTargetChannel = self.props.chatInputBarResetTargetChannel,
		localTeam = self.props.localTeam,
		localPlayer = self.props.localPlayer,
		players = self.props.players,
		activateWhisperMode = self.props.activateWhisperMode,
		defaultSystemTextChannel = self.props.defaultSystemTextChannel,
		shouldFocusChatInputBar = self.props.shouldFocusChatInputBar,
		textSource = getTextSourceFromChannel(self.props.targetTextChannel),
	})
end

return RoactRodux.connect(function(state)
	return {
		targetTextChannel = state.TextChannels.targetTextChannel,
		localPlayer = Players.LocalPlayer,
		localTeam = state.LocalTeam,
		isUsingTouch = state.isUsingTouch,
		focusKeyCode = Enum.KeyCode.Slash,
		players = state.Players,
		defaultSystemTextChannel = state.TextChannels.allTextChannels.RBXSystem,
		shouldFocusChatInputBar = state.shouldFocusChatInputBar,
	}
end, function(dispatch)
	return {
		activateTeamMode = function()
			return dispatch(ChatInputBarActivatedTeamMode())
		end,
		chatInputBarResetTargetChannel = function()
			return dispatch(ChatInputBarResetTargetChannel())
		end,
	}
end)(Localization.connect(function(props)
	return {
		placeholderKeyboardText = {
			"CoreScripts.TextChat.InputBar.Hint.MouseKeyboard",
			{ KEY = UserInputService:GetStringForKeyCode(props.focusKeyCode) },
		},
		placeholderTouchText = "CoreScripts.TextChat.InputBar.Hint.Touch",
		disabledChatPlaceholderText = "CoreScripts.TextChat.InputBar.Hint.PrivacySettingsDisabled",
	}
end)(ChatInputBarApp))
