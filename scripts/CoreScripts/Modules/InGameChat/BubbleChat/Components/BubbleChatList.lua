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
	onLastBubbleFadeOut = t.optional(t.callback),

	-- RoactRodux
	chatSettings = Types.IChatSettings,
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
			if not Cryo.List.find(nextProps.messageIds, bubble.messageId) then
				table.insert(bubbles, {
					messageId = bubble.messageId,
					fadingOut = true
				})
			end
		end
	end

	for _, messageId in ipairs(nextProps.messageIds) do
		table.insert(bubbles, {
			messageId = messageId,
			fadingOut = false
		})
	end

	return {
		bubbles = bubbles
	}
end

function BubbleChatList:init(props)
	-- It's possible for this component to be initialized with no message if we switch between maximized/minimized
	-- view during the fade out animation
	if (not props.messageIds or #props.messageIds == 0) and props.onLastBubbleFadeOut then
		props.onLastBubbleFadeOut()
	end

	self.onBubbleFadeOut = function(messageId)
		local bubbles = Cryo.List.filter(self.state.bubbles, function(otherBubble)
			return otherBubble.messageId ~= messageId
		end)
		if #bubbles == 0 and self.props.onLastBubbleFadeOut then
			self.props.onLastBubbleFadeOut()
		else
			-- Doing this when #bubbles == 0 causes Roact to panic, probably because the bubbles are being unmounted twice
			-- (once due to setState below and once due to this list component being unmounted), hence the above check
			self:setState({
				bubbles = bubbles
			})
		end
	end
end

function BubbleChatList:render()
	local children = {}
	local settings = self.props.chatSettings

	children.Layout = Roact.createElement("UIListLayout", {
		SortOrder = Enum.SortOrder.LayoutOrder,
		HorizontalAlignment = Enum.HorizontalAlignment.Center,
		VerticalAlignment = Enum.VerticalAlignment.Bottom,
		Padding = UDim.new(0, settings.BubblesSpacing),
	})

	-- This padding pushes up the UI a bit so the first message's
	-- caret shows up.
	children.CaretPadding = settings.TailVisible and Roact.createElement("UIPadding", {
		PaddingBottom = UDim.new(0, 8),
	})

	for index, bubble in ipairs(self.state.bubbles) do
		children["Bubble" .. bubble.messageId] = Roact.createElement(ChatBubble, {
			messageId = bubble.messageId,
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
		messageIds = state.userMessages[props.userId] or {},
	}
end

return RoactRodux.connect(mapStateToProps)(BubbleChatList)
