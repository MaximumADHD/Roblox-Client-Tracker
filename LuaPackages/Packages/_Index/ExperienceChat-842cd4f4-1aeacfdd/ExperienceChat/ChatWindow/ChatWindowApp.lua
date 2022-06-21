local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Roact = require(Packages.Roact)
local RoactRodux = require(Packages.RoactRodux)
local List = require(Packages.llama).List

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
		onChatWindowHovered = self.props.onChatWindowHovered,
		onChatWindowNotHovered = self.props.onChatWindowNotHovered,
		mutedUserIds = self.props.mutedUserIds,
		canLocalUserChat = self.props.canLocalUserChat,
	})
end

return RoactRodux.connect(function(state)
	return {
		messages = List.map(state.Messages.inOrder, function(messageId)
			return state.Messages.byMessageId[messageId]
		end),
		mutedUserIds = state.MutedUsers,
	}
end)(ChatWindowApp)
