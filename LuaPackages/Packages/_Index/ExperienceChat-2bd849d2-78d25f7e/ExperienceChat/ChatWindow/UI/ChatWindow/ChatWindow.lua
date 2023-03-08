local TextChatService = game:GetService("TextChatService")
local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local ProjectRoot = ExperienceChat.Parent

local Roact = require(ProjectRoot.Roact)
local Dictionary = require(ProjectRoot.llama).Dictionary

local FFlagShowVerifiedBadgeInNewChat = require(ExperienceChat.Flags.FFlagShowVerifiedBadgeInNewChat)

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
	mutedUserIds = {},
	verifiedUserIds = {},
}

function ChatWindow:init()
	self.getTransparencyOrBindingValue = function(initialTransparency, bindingOrValue)
		if type(bindingOrValue) == "number" then
			return self.props.transparencyValue
		end

		return bindingOrValue:map(function(value: number)
			return initialTransparency + value * (1 - initialTransparency)
		end)
	end

	self.onTextMessageLabelButtonActivated = function(message)
		self.props.resetTargetChannel()

		local fromUserId = tonumber(message.userId)
		if fromUserId then
			self.props.activateWhisperMode(fromUserId)
		end
	end

	self.createChildren = function(messages)
		local children = Dictionary.map(messages, function(message, index)
			if message.isVisibleInChatWindow then
				local isUserVerified = if message.userId and FFlagShowVerifiedBadgeInNewChat()
					then Dictionary.has(self.props.verifiedUserIds, message.userId)
					else false
				return Roact.createElement(TextMessageLabel, {
					message = message,
					LayoutOrder = index,
					isUserVerified = isUserVerified,
					textTransparency = self.getTransparencyOrBindingValue(0, self.props.textTransparency),
					textStrokeTransparency = self.getTransparencyOrBindingValue(
						self.props.chatWindowSettings.TextStrokeTransparency,
						self.props.textTransparency
					),
					onTextMessageLabelButtonActivated = self.onTextMessageLabelButtonActivated,
					chatWindowSettings = self.props.chatWindowSettings,
				}),
					message.messageId
			else
				return nil :: any, nil
			end
		end)

		children["$layout"] = Roact.createElement("UIListLayout", {
			Padding = UDim.new(0, 4),
			SortOrder = Enum.SortOrder.LayoutOrder,
		})

		return children
	end
end

function ChatWindow:render()
	local chatWindowSettings = self.props.chatWindowSettings
	return Roact.createElement("Frame", {
		BackgroundColor3 = chatWindowSettings.BackgroundColor3,
		BorderSizePixel = 0,
		LayoutOrder = self.props.LayoutOrder,
		Size = self.props.size,
		Visible = self.props.visible,
		BackgroundTransparency = self.getTransparencyOrBindingValue(
			chatWindowSettings.BackgroundTransparency,
			self.props.transparencyValue
		),
		[Roact.Event.MouseEnter] = self.props.onHovered,
		[Roact.Event.MouseLeave] = self.props.onUnhovered,
		[Roact.Change.AbsoluteSize] = function(rbx)
			local chatWindowConfiguration = TextChatService:FindFirstChildOfClass("ChatWindowConfiguration")
			if chatWindowConfiguration and self.props.onAbsoluteSizeChanged then
				self.props.onAbsoluteSizeChanged(rbx, chatWindowConfiguration)
			end
		end,
		[Roact.Change.AbsolutePosition] = function(rbx)
			local chatWindowConfiguration = TextChatService:FindFirstChildOfClass("ChatWindowConfiguration")
			if chatWindowConfiguration and self.props.onAbsoluteSizeChanged then
				self.props.onAbsolutePositionChanged(rbx, chatWindowConfiguration)
			end
		end,
	}, {
		uiSizeConstraint = Roact.createElement("UISizeConstraint", {
			MaxSize = Vector2.new(Config.ChatWindowMaxWidth, Config.ChatWindowMaxHeight),
		}),
		scrollingView = Roact.createElement(ScrollingView, {
			size = self.props.size,
			messages = self.props.messages,
		}, self.createChildren(self.props.messages)),
	})
end

return ChatWindow
