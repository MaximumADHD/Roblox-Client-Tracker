local ExperienceChat = script:FindFirstAncestor("ExperienceChat")

local ProjectRoot = ExperienceChat.Parent
local Roact = require(ProjectRoot.Roact)
local List = require(ProjectRoot.llama).List
local ChatBubble = require(ExperienceChat.BubbleChat.ChatBubble)

local getFixBubblesOutofOrderWhenZoomedIn = require(ExperienceChat.Flags.getFixBubblesOutofOrderWhenZoomedIn)
local GlobalFlags = require(ExperienceChat.GlobalFlags)

local BubbleChatList = Roact.Component:extend("BubbleChatList")

function BubbleChatList.getDerivedStateFromProps(nextProps, lastState)
	local bubbles = {}
	if lastState.bubbles then
		for _, bubble in ipairs(lastState.bubbles) do
			-- A message being in lastState but not nextProps means it's been removed from the store
			-- => keep it in the state and fade it out!
			if
				not List.findWhere(nextProps.messages, function(message, _)
					return message.messageId == bubble.messageId
				end)
			then
				table.insert(bubbles, {
					messageId = bubble.messageId,
					fadingOut = true,
				})
			end
		end
	end

	for _, message in ipairs(nextProps.messages) do
		local truncatedTimestamp
		if getFixBubblesOutofOrderWhenZoomedIn() then
			-- Since timestamps are used for LayoutOrder, it must be a 32 bit signed integer. Thus, truncate the integer to its last 9 digits.
			truncatedTimestamp = tonumber(tostring(message.timestamp):sub(-9))
		end

		table.insert(bubbles, {
			messageId = message.messageId,
			fadingOut = false,
			text = message.text,
			timestamp = truncatedTimestamp or message.timestamp,
			bubbleChatMessageProperties = message.bubbleChatMessageProperties,
		})
	end

	return {
		bubbles = bubbles,
	}
end

function BubbleChatList:init(props)
	self.state = {}

	-- It's possible for this component to be initialized with no message if we switch between maximized/minimized
	-- view during the fade out animation
	if (not props.messages or #props.messages == 0) and props.onLastBubbleFadeOut then
		props.onLastBubbleFadeOut()
	end

	self.onBubbleFadeOut = function(messageId)
		local bubbles = List.filter(self.state.bubbles, function(otherBubble)
			return otherBubble.messageId ~= messageId
		end)
		if #bubbles == 0 and self.props.onLastBubbleFadeOut then
			self.props.onLastBubbleFadeOut()
		else
			-- Doing this when #bubbles == 0 causes Roact to panic, probably because the bubbles are being unmounted twice
			-- (once due to setState below and once due to this list component being unmounted), hence the above check
			self:setState({
				bubbles = bubbles,
			})
		end
	end
end

function BubbleChatList:render()
	local children = {}
	local chatSettings = self.props.chatSettings

	children.Layout = Roact.createElement("UIListLayout", {
		SortOrder = Enum.SortOrder.LayoutOrder,
		HorizontalAlignment = Enum.HorizontalAlignment.Center,
		VerticalAlignment = Enum.VerticalAlignment.Bottom,
		Padding = UDim.new(0, chatSettings.BubblesSpacing),
	})

	-- This padding pushes up the UI a bit so the first message's
	-- caret shows up.
	children.CaretPadding = self.props.chatSettings.TailVisible
		and (not GlobalFlags.AvatarChatEnabled or self.props.showCaret)
		and Roact.createElement("UIPadding", {
			PaddingBottom = UDim.new(0, 8),
		})

	for index, bubble in ipairs(self.state.bubbles) do
		local isMostRecent = index == #self.state.bubbles

		local renderInsert = isMostRecent and self.props.renderFirstInsert or nil
		local insertSize = self.props.insertSize

		if getFixBubblesOutofOrderWhenZoomedIn() then
			children["Bubble" .. bubble.messageId] = Roact.createElement(ChatBubble, {
				messageId = bubble.messageId,
				text = bubble.text or "",
				timestamp = bubble.timestamp or 0,
				isMostRecent = isMostRecent,
				theme = self.props.theme,
				fadingOut = bubble.fadingOut,
				onFadeOut = self.onBubbleFadeOut,
				chatSettings = chatSettings,
				renderInsert = renderInsert,
				insertSize = insertSize,
				showCaret = self.props.showCaret,
				clientSettings = self.props.clientSettings,
				bubbleChatMessageProperties = bubble.bubbleChatMessageProperties,
			})
		else
			children["Bubble" .. bubble.messageId] = Roact.createElement(ChatBubble, {
				messageId = bubble.messageId,
				text = bubble.text or "",
				timestamp = (bubble.timestamp and bubble.timestamp.UnixTimestamp) or 0,
				isMostRecent = isMostRecent,
				theme = self.props.theme,
				fadingOut = bubble.fadingOut,
				onFadeOut = self.onBubbleFadeOut,
				chatSettings = chatSettings,
				renderInsert = renderInsert,
				insertSize = insertSize,
				showCaret = self.props.showCaret,
				clientSettings = self.props.clientSettings,
				bubbleChatMessageProperties = bubble.bubbleChatMessageProperties,
			})
		end
	end

	return Roact.createElement("Frame", {
		Visible = self.props.isVisible,
		Size = UDim2.fromScale(1, 1),
		BackgroundTransparency = 1,
	}, children :: any)
end

return BubbleChatList
