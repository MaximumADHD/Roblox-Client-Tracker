local CorePackages = game:GetService("CorePackages")

local Cryo = require(CorePackages.Packages.Cryo)
local Roact = require(CorePackages.Packages.Roact)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local t = require(CorePackages.Packages.t)
local RemoveMessage = require(script.Parent.Parent.Actions.RemoveMessage)
local ChatBubble = require(script.Parent.ChatBubble)
local Types = require(script.Parent.Parent.Types)

local BubbleChatList = Roact.Component:extend("BubbleChatList")

BubbleChatList.validateProps = t.strictInterface({
	userId = t.string,
	isVisible = t.optional(t.boolean),
	theme = t.optional(t.string),

	-- RoactRodux
	chatSettings = t.table,
	removeMessage = t.callback,
	messages = t.map(t.string, Types.IMessage),
	messageIds = t.array(t.string),
})

BubbleChatList.defaultProps = {
	theme = "Light", -- themes are currently not fully supported
}

function BubbleChatList:render()
	local children = {}

	children.Layout = Roact.createElement("UIListLayout", {
		SortOrder = Enum.SortOrder.LayoutOrder,
		HorizontalAlignment = Enum.HorizontalAlignment.Center,
		VerticalAlignment = Enum.VerticalAlignment.Bottom,
		Padding = UDim.new(0, 8),
	})

	-- This padding pushes up the UI a bit so the first message's
	-- caret shows up.
	children.CaretPadding = Roact.createElement("UIPadding", {
		PaddingBottom = UDim.new(0, 8),
	})

	for index, messageId in ipairs(self.props.messageIds) do
		local message = self.props.messages[messageId]

		-- Determines if this message is one of the last few that we want to
		-- render. Any message that is not recent will fade out and be removed.
		local isRecent = index > #self.props.messageIds - self.props.chatSettings.MaxBubbles

		children["Bubble" .. message.id] = Roact.createElement(ChatBubble, {
			LayoutOrder = index,
			message = message,
			isRecent = isRecent,
			isMostRecent = index == #self.props.messageIds,
			theme = self.props.theme,
			timeout = self.props.chatSettings.BubbleDuration,
			onFadeOut = function()
				self.props.removeMessage(message)
			end
		})
	end

	return Roact.createElement("Frame", {
		Visible = self.props.isVisible,
		Size = UDim2.fromScale(1, 1),
		BackgroundTransparency = 1,
	}, children)
end

local function mapStateToProps(state, props)
	return {
		chatSettings = state.chatSettings,
		messages = state.messages,
		messageIds = state.userMessages[props.userId] or {},
	}
end

local function mapDispatchToProps(dispatch)
	return {
		removeMessage = function(message)
			dispatch(RemoveMessage(message))
		end
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(BubbleChatList)
