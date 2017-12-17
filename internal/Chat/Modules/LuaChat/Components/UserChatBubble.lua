local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")

local LuaApp = CoreGui.RobloxGui.Modules.LuaApp
local StringsLocale = require(LuaApp.StringsLocale)
local LuaChat = script.Parent.Parent

local Create = require(LuaChat.Create)
local Constants = require(LuaChat.Constants)
local Text = require(LuaChat.Text)
local Device = require(LuaChat.Device)

local BUBBLE_PADDING = 10
local TEXT_BUBBLE_X_PADDING = 54
local TEXT_BUBBLE_X_TABLET_ADDITIONAL_PADDING = 112

local function isOutgoingMessage(message)
	local localUserId = tostring(Players.LocalPlayer.UserId)
	return message.senderTargetId == localUserId
end

local function isMessageSending(conversation, message)
	if conversation and conversation.sendingMessages then
		return conversation.sendingMessages:Get(message.id) ~= nil
	end
	return false
end

local UserChatBubble = {}

UserChatBubble.__index = UserChatBubble

function UserChatBubble.new(appState, message, newContent)

	local self = {}
	setmetatable(self, UserChatBubble)

	local conversationId = message.conversationId
	local isSending = isMessageSending(appState.store:GetState().Conversations[conversationId], message)

	local state = appState.store:GetState()
	local user = state.Users[message.senderTargetId]
	local username = user and user.name or "unknown user"

	self.appState = appState
	self.paddingObject = nil
	self.message = message
	self.bubbleType = "UserChatBubble"
	self.connections = {}

	self.displayMessage = newContent and newContent or self.message.content

	self.textContent = Create.new "TextLabel" {
		Name = "TextContent",
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		TextColor3 = Constants.Color.WHITE,
		TextSize = Constants.Font.FONT_SIZE_18,
		Text = "",
		Font = Enum.Font.SourceSans,
		TextWrapped = true,
		TextXAlignment = Enum.TextXAlignment.Left,
	}

	self.tail = Create.new "ImageLabel" {
		Name = "Tail",
		Size = UDim2.new(0, 6, 0, 6),
		BackgroundTransparency = 1,
	}

	self.bubble = Create.new "ImageLabel" {
		Name = "Bubble",
		BackgroundTransparency = 1,
		AnchorPoint = Vector2.new(1, 0),
		Position = UDim2.new(0, 0, 0, 0),
		Size = UDim2.new(1, 0, 1, 0),
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(10, 10, 11, 11),
		LayoutOrder = 2,

		Create.new "Frame" {
			Name = "Content",
			BackgroundTransparency = 1,
			Size = UDim2.new(1, -BUBBLE_PADDING * 2, 1, -BUBBLE_PADDING * 2),
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.new(0.5, 0, 0.5, 0),

			self.textContent,
		},

		self.tail,
	}

	self.usernameLabel = Create.new "TextLabel" {
		Name = "UsernameLabel",
		Font = Enum.Font.SourceSans,
		TextSize = Constants.Font.FONT_SIZE_12,
		Visible = false,
		BackgroundTransparency = 1,
		Size = UDim2.new(1, -56, 0, 16),
		Position = UDim2.new(0, 56, 0, 0),
		TextColor3 = Constants.Color.GRAY2,
		TextXAlignment = Enum.TextXAlignment.Left,
		TextYAlignment = Enum.TextYAlignment.Top,
		Text = username,
	}

	self.bubbleContainer = Create.new "Frame" {
		Name = "BubbleContainer",
		BackgroundTransparency = 1,
		LayoutOrder = 2,
		Size = UDim2.new(1, 0, 0, 1),

		self.bubble,
		self.usernameLabel,
	}

	self.rbx = Create.new "Frame" {
		Name = "Message",
		BackgroundTransparency = 1,
		Size = UDim2.new(0, 0, 0, 0),

		Create.new "UIListLayout" {
			SortOrder = Enum.SortOrder.LayoutOrder,
		},

		self.bubbleContainer,
	}

	-- 'isOutgoing' means "is sent by the local user". This function separates the tail position & color
	if isOutgoingMessage(message) then
		local bubbleColor = isSending and Constants.Color.BLUE_DISABLED or Constants.Color.BLUE_PRIMARY
		local textTransparency = isSending and Constants.Color.ALPHA_SHADOW_PRIMARY or 0

		self.tail.AnchorPoint = Vector2.new(0, 0)
		self.tail.Position = UDim2.new(1, 0, 0, 0)
		self.tail.ImageColor3 = bubbleColor

		self.bubble.ImageColor3 = bubbleColor
		self.bubble.AnchorPoint = Vector2.new(1, 0)
		self.bubble.Position = UDim2.new(1, -10, 0, 0)

		self.textContent.TextColor3 = Constants.Color.WHITE
		self.textContent.TextTransparency = textTransparency

		self.rbx.UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
	else
		self.tail.AnchorPoint = Vector2.new(1, 0)
		self.tail.Position = UDim2.new(0, 0, 0, 0)
		self.tail.ImageColor3 = Color3.new(1, 1, 1)

		self.bubble.ImageColor3 = Color3.new(1, 1, 1)
		self.bubble.AnchorPoint = Vector2.new(0, 0)
		self.bubble.Position = UDim2.new(0, TEXT_BUBBLE_X_PADDING, 0, 0)

		self.textContent.TextColor3 = Constants.Color.GRAY1

		self.rbx.UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Left
	end
	self:Update(message)

	local connection = self.rbx:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
		self:Resize()
	end)
	table.insert(self.connections, connection)

	return self
end

function UserChatBubble:Resize()
	local padding = (TEXT_BUBBLE_X_PADDING + BUBBLE_PADDING) * 2 -- * 2 for both sides
	if self.appState.store:GetState().FormFactor == Device.FormFactor.TABLET then
		padding = padding + TEXT_BUBBLE_X_TABLET_ADDITIONAL_PADDING
	end

	local viewportWidth = self.rbx.AbsoluteSize.X

	local textWidth = (viewportWidth - padding)

	local textBounds = Text.GetTextBounds(self.textContent.Text, self.textContent.Font,
		self.textContent.TextSize, Vector2.new(textWidth, 10000))


	local doublePadding = BUBBLE_PADDING * 2
	self.bubble.Size = UDim2.new(0, textBounds.X + doublePadding, 0, textBounds.Y + doublePadding)

	local containerHeight = self.bubble.AbsoluteSize.Y

	if self.usernameLabel.Visible then
		containerHeight = containerHeight + self.usernameLabel.AbsoluteSize.Y
	end

	self.bubbleContainer.Size = UDim2.new(1, 0, 0, containerHeight)

	local height = 0
	for _, child in ipairs(self.rbx:GetChildren()) do
		if child:IsA("GuiObject") then
			height = height + child.AbsoluteSize.Y
		end
	end

	self.rbx.Size = UDim2.new(1, 0, 0, height)
end

local function CreateFilteringText(appState, filteringTextKey, textColor)
	return Create.new "Frame" {
		Name = "ModeratedNotice",
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 0, 18),
		LayoutOrder = 3,

		Create.new "TextLabel" {
			Name = "ModeratedNoticeText",
			Size = UDim2.new(1, 0, 1, 0),
			Position = UDim2.new(1, -10, 0, 0),
			AnchorPoint = Vector2.new(1, 0),
			BackgroundTransparency = 1,
			TextColor3 = textColor,
			TextSize = Constants.Font.FONT_SIZE_14,
			Text = appState.localization:Format(filteringTextKey),
			Font = Enum.Font.SourceSans,
			TextXAlignment = Enum.TextXAlignment.Right,
			TextYAlignment = Enum.TextYAlignment.Top,
		}
	}
end

function UserChatBubble:Update(message)
	self.message = message

	if message.moderated then
		self.displayMessage = string.gsub(self.displayMessage, "[^%s]", "#")
	end

	self.textContent.Text = self.displayMessage

	local textColor
	local filteringTextKey = nil
	if message.moderated then
		filteringTextKey = StringsLocale.Keys.THIS_MESSAGE_WAS_MODERATED
		textColor = Constants.Color.RED_NEGATIVE
	elseif message.filteredForReceivers then
		filteringTextKey = StringsLocale.Keys.FILTERED_FOR_RECEIVERS
		textColor = Constants.Color.GRAY3
	end

	-- Either the message was moderated or it was filtered for some users (minors).
	if filteringTextKey and (not self.moderatedText) then
		self.moderatedText = CreateFilteringText(self.appState, filteringTextKey, textColor)
		self.moderatedText.Parent = self.rbx
	end

	-- There was an error and the message was not sent.
	if (message.failed or message.moderated) and (not self.alertIcon) then
		self.alertIcon = Create.new "ImageLabel" {
			Name = "FailedIcon",
			Size = UDim2.new(0, 18, 0, 18),
			AnchorPoint = Vector2.new(1, 0.5),
			Position = UDim2.new(0, -10, 0.5, 0),
			ImageColor3 = Constants.Color.RED_PRIMARY,
			BackgroundTransparency = 1,
			Image = "rbxasset://textures/ui/LuaChat/icons/ic-alert.png"
		}
		self.alertIcon.Parent = self.bubble
	end

	self:Resize()
end

function UserChatBubble:Destruct()
	for _, connection in ipairs(self.connections) do
		connection:Disconnect()
	end
	self.connections = {}
	self.rbx:Destroy()
end

return UserChatBubble