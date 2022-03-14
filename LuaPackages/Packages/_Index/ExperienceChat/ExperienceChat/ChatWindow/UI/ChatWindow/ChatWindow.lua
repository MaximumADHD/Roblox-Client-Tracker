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
	messageHistory = {
		RBXAll = {},
	},
	transparencyValue = Config.ChatWindowBackgroundTransparency,
	textTransparency = 0,
	onChatWindowHovered = function() end,
	onChatWindowNotHovered = function() end,
	messageLimit = Config.ChatWindowMessageLimit,
	mutedUserIds = nil,
}

function ChatWindow:init()
	self.getTransparencyOrBindingValue = function(initialTransparency, bindingOrValue)
		if type(bindingOrValue) == "number" then
			return self.props.transparencyValue
		end

		return bindingOrValue:map(function(value)
			return initialTransparency + value * (1 - initialTransparency)
		end)
	end

	self.createChildren = function(history, msgs)
		-- Filter msgs by the mutedUserIds
		local filteredMsgs = Dictionary.filter(msgs, function(message)
			-- If mutedUserIds is nil then the user has not muted anyone.
			if not self.props.mutedUserIds then
				return true
			end
			return message.UserId and message.Visible
		end)

		local result = {}
		if history and history.RBXAll then
			local messageCount = Dictionary.count(history.RBXAll)
			result = Dictionary.join(
				{
					layout = Roact.createElement("UIListLayout", {
						Padding = UDim.new(0, 4),
						SortOrder = Enum.SortOrder.LayoutOrder,
					}),
				},
				Dictionary.map(history.RBXAll, function(messageId, index)
					if messageCount > self.props.messageLimit and index <= (messageCount - self.props.messageLimit) then
						return
					end

					if
						not filteredMsgs[messageId]
						or (
							filteredMsgs[messageId].Status
							and filteredMsgs[messageId].Status ~= Enum.TextChatMessageStatus.Success
						)
					then
						return
					end

					local child = Roact.createElement(TextMessageLabel, {
						textChatMessage = filteredMsgs[messageId],
						LayoutOrder = filteredMsgs[messageId].Timestamp or index,
						textTransparency = self.getTransparencyOrBindingValue(0, self.props.textTransparency),
						textStrokeTransparency = self.getTransparencyOrBindingValue(0.5, self.props.textTransparency),
					})
					return child, "message" .. index
				end)
			)
		end

		return result
	end
end

function ChatWindow.getDerivedStateFromProps(nextProps, lastState)
	local newMessages = {}
	for id, message in pairs(nextProps.messages) do
		if lastState.messages == nil or lastState.messages[id] == nil then
			local isMuted = (nextProps.mutedUserIds and Set.has(nextProps.mutedUserIds, message.UserId)) or false
			newMessages[id] = Dictionary.join(message, { Visible = not isMuted })
		end
	end

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
		}, self.createChildren(
			self.props.messageHistory,
			self.state.messages or {}
		)),
	})
end

return ChatWindow
