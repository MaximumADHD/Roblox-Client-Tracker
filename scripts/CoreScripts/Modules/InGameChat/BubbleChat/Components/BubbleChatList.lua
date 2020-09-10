local CorePackages = game:GetService("CorePackages")

local Cryo = require(CorePackages.Packages.Cryo)
local Roact = require(CorePackages.Packages.Roact)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local t = require(CorePackages.Packages.t)
local ChatBubble = require(script.Parent.ChatBubble)
local Types = require(script.Parent.Parent.Types)

local BubbleChatList = Roact.Component:extend("BubbleChatList")

BubbleChatList.validateProps = t.strictInterface({
	userId = t.string,
	isVisible = t.optional(t.boolean),
	theme = t.optional(t.string),

	-- RoactRodux
	chatSettings = t.table,
	messages = t.map(t.string, Types.IMessage),
	messageIds = t.array(t.string),
})

BubbleChatList.defaultProps = {
	theme = "Light", -- themes are currently not fully supported
}

function BubbleChatList.getDerivedStateFromProps(nextProps, lastState)
	local bubbles = {}

	if lastState.bubbles then
		for _, bubble in ipairs(lastState.bubbles) do
			-- A message being in lastState but not nextProps means it's been removed from the store
			-- => keep it in the state and fade it out!
			if not nextProps.messageIds[bubble.message.id] then
				table.insert(bubbles, {
					message = bubble.message,
					fadingOut = true
				})
			end
		end
	end

	for _, messageId in ipairs(nextProps.messageIds) do
		table.insert(bubbles, {
			message = nextProps.messages[messageId],
			fadingOut = false
		})
	end

	return {
		bubbles = bubbles
	}
end

function BubbleChatList:init()
	self.onBubbleFadeOut = function(messageId)
		self:setState({
			bubbles = Cryo.List.filter(self.state.bubbles, function(otherBubble)
				return otherBubble.message.id ~= messageId
			end)
		})
	end
end

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

	for index, bubble in ipairs(self.state.bubbles) do
		children["Bubble" .. bubble.message.id] = Roact.createElement(ChatBubble, {
			LayoutOrder = index,
			message = bubble.message,
			isMostRecent = index == #self.state.bubbles,
			theme = self.props.theme,
			fadingOut = bubble.fadingOut,
			onFadeOut = self.onBubbleFadeOut
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

return RoactRodux.connect(mapStateToProps)(BubbleChatList)
