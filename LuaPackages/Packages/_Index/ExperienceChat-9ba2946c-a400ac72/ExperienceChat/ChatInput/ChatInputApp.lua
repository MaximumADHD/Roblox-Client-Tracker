local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")

local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Localization = require(ExperienceChat.Localization)

local ProjectRoot = ExperienceChat.Parent
local Roact = require(ProjectRoot.Roact)
local RoactRodux = require(ProjectRoot.RoactRodux)

local ChatInputBarActivatedTeamMode = require(ExperienceChat.Actions.ChatInputBarActivatedTeamMode)
local ChatInputBarDeactivatedTeamMode = require(ExperienceChat.Actions.ChatInputBarDeactivatedTeamMode)

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
		deactivateTeamMode = self.props.deactivateTeamMode,
		localTeam = self.props.localTeam,
		localPlayer = self.props.localPlayer,
	})
end

return RoactRodux.connect(function(state)
	return {
		targetTextChannel = state.TextChannels.targetTextChannel,
		localPlayer = Players.LocalPlayer,
		localTeam = state.LocalTeam,
		isUsingTouch = state.isUsingTouch,
		focusKeyCode = Enum.KeyCode.Slash,
	}
end, function(dispatch)
	return {
		activateTeamMode = function()
			return dispatch(ChatInputBarActivatedTeamMode())
		end,
		deactivateTeamMode = function()
			return dispatch(ChatInputBarDeactivatedTeamMode())
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
