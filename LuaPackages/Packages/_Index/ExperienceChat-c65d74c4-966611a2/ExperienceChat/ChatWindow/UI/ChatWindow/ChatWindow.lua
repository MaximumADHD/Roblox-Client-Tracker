local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local ProjectRoot = ExperienceChat.Parent

local Roact = require(ProjectRoot.Roact)
local llama = require(ProjectRoot.llama)
local Dictionary = llama.Dictionary
local Set = llama.Set

local Config = require(ExperienceChat.Config)

local UI = script:FindFirstAncestor("UI")
local ScrollingView = require(UI.ScrollingView)
local TextMessageLabel = require(UI.TextMessageLabel)

local ChatWindow = Roact.Component:extend("ChatWindow")
-- @TODO: Handle default textChannelId RBXGeneral more elegantly
ChatWindow.defaultProps = {
	LayoutOrder = 1,
	size = UDim2.fromScale(1, 1),
	messages = {},
	transparencyValue = Config.ChatWindowBackgroundTransparency,
	textTransparency = 0,
	onChatWindowHovered = function() end,
	onChatWindowNotHovered = function() end,
	messageLimit = Config.ChatWindowMessageLimit,
	mutedUserIds = {},
	canLocalUserChat = false,
}

function ChatWindow:init()
	self:setState({
		messages = {},
	})

	self.getTransparencyOrBindingValue = function(initialTransparency, bindingOrValue)
		if type(bindingOrValue) == "number" then
			return self.props.transparencyValue
		end

		return bindingOrValue:map(function(value)
			return initialTransparency + value * (1 - initialTransparency)
		end)
	end

	local function isSystemMessage(message): boolean
		return message.userId == nil
	end
	local function shouldShowMessage(message, index)
		if index > self.props.messageLimit then
			return false
		end

		if self.props.canLocalUserChat then
			if
				message.status == Enum.TextChatMessageStatus.Success
				or message.status == Enum.TextChatMessageStatus.Sending
			then
				return message.visible
			end
		else
			return isSystemMessage(message)
		end

		return false
	end

	self.createChildren = function(messages)
		local children = Dictionary.map(messages, function(message, index)
			if shouldShowMessage(message, index) then
				return Roact.createElement(TextMessageLabel, {
					message = message,
					LayoutOrder = index,
					textTransparency = self.getTransparencyOrBindingValue(0, self.props.textTransparency),
					textStrokeTransparency = self.getTransparencyOrBindingValue(0.5, self.props.textTransparency),
				}),
					message.messageId
			else
				return nil
			end
		end)

		children["$layout"] = Roact.createElement("UIListLayout", {
			Padding = UDim.new(0, 4),
			SortOrder = Enum.SortOrder.LayoutOrder,
		})

		return children
	end
end

function ChatWindow.getDerivedStateFromProps(nextProps, lastState)
	local newMessages = Dictionary.map(nextProps.messages, function(message, id)
		if
			lastState.messages == nil
			or lastState.messages[id] == nil
			or message.status ~= lastState.messages[id].status
		then
			local isMuted = if message.userId then Set.has(nextProps.mutedUserIds, message.userId) else false
			return Dictionary.join(message, { visible = not isMuted })
		end

		return nil
	end)

	if Dictionary.count(newMessages) > 0 then
		return {
			messages = Dictionary.join(lastState.messages, newMessages),
		}
	end

	return nil
end

function ChatWindow:render()
	return Roact.createElement("Frame", {
		BackgroundColor3 = Config.ChatWindowBackgroundColor3,
		BorderSizePixel = 0,
		LayoutOrder = self.props.LayoutOrder,
		Size = self.props.size,
		BackgroundTransparency = self.getTransparencyOrBindingValue(
			Config.ChatWindowBackgroundTransparency,
			self.props.transparencyValue
		),
		[Roact.Event.MouseEnter] = self.props.onChatWindowHovered,
		[Roact.Event.MouseLeave] = self.props.onChatWindowNotHovered,
	}, {
		scrollingView = Roact.createElement(ScrollingView, {
			size = self.props.size,
		}, self.createChildren(self.state.messages)),
	})
end

return ChatWindow
