local ProjectRoot = script:FindFirstAncestor("ExperienceChat").Parent
local Roact = require(ProjectRoot.Roact)

local UI = script.UI
local ChatWindow = require(UI.ChatWindow)

local ChatWindowApp = Roact.Component:extend("ChatWindowApp")
ChatWindowApp.defaultProps = {
	LayoutOrder = 1,
	messages = {},
	messageHistory = {},
	size = UDim2.fromScale(1, 1),
}

function ChatWindowApp:render()
	return Roact.createElement(ChatWindow, {
		LayoutOrder = self.props.LayoutOrder,
		messages = self.props.messages,
		messageHistory = self.props.messageHistory,
		size = self.props.size,
		transparencyValue = self.props.transparencyValue,
		textTransparency = self.props.textTransparency,
		onChatWindowHovered = self.props.onChatWindowHovered,
		onChatWindowNotHovered = self.props.onChatWindowNotHovered,
		mutedUserIds = self.props.mutedUserIds,
	})
end

-- TODO: Rodux connection
return ChatWindowApp
