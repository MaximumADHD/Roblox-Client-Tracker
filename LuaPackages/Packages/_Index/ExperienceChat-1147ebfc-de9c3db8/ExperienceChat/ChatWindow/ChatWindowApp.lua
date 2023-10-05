local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Roact = require(Packages.Roact)
local RoactRodux = require(Packages.RoactRodux)
local List = require(Packages.llama).List
local memoize = require(ExperienceChat.memoize)

local FFlagShowVerifiedBadgeInNewChat = require(ExperienceChat.Flags.FFlagShowVerifiedBadgeInNewChat)

local UI = script.Parent.UI
local ChatWindow = require(UI.ChatWindow)

local ChatWindowApp = Roact.Component:extend("ChatWindowApp")
ChatWindowApp.defaultProps = {
	LayoutOrder = 1,
	messages = {},
	size = UDim2.fromScale(1, 1),
}

function ChatWindowApp:render()
	return Roact.createElement(ChatWindow, {
		LayoutOrder = self.props.LayoutOrder,
		messages = self.props.messages,
		size = self.props.size,
		transparencyValue = self.props.transparencyValue,
		textTransparency = self.props.textTransparency,
		onHovered = self.props.onHovered,
		onUnhovered = self.props.onUnhovered,
		mutedUserIds = self.props.mutedUserIds,
		verifiedUserIds = if FFlagShowVerifiedBadgeInNewChat() then self.props.verifiedUserIds else nil,
		activateWhisperMode = self.props.activateWhisperMode,
		resetTargetChannel = self.props.resetTargetChannel,
		visible = self.props.visible,
		onAbsoluteSizeChanged = self.props.onAbsoluteSizeChanged,
		onAbsolutePositionChanged = self.props.onAbsolutePositionChanged,
		chatWindowSettings = self.props.chatWindowSettings,
		showTranslationButton = self.props.showTranslationButton,
	})
end

local selectMessages = memoize(function(messagesState)
	return List.map(messagesState.windowMessagesInOrder, function(messageId)
		return messagesState.byMessageId[messageId]
	end)
end)

return RoactRodux.connect(function(state)
	return {
		messages = selectMessages(state.Messages),
		mutedUserIds = state.MutedUsers,
		verifiedUserIds = state.VerifiedUsers,
	}
end)(ChatWindowApp)
