local CoreGui = game:GetService("CoreGui")

local Modules = CoreGui.RobloxGui.Modules
local Common = Modules.Common
local LuaChat = Modules.LuaChat

local Constants = require(LuaChat.Constants)
local Create = require(LuaChat.Create)
local Device = require(LuaChat.Device)
local OrderedMap = require(LuaChat.OrderedMap)
local Signal = require(Common.Signal)
local Text = require(LuaChat.Text)
local getInputEvent = require(LuaChat.Utils.getInputEvent)

local Components = LuaChat.Components
local ConversationThumbnail = require(Components.ConversationThumbnail)

local UNREAD_COUNTER_ENABLED = false

local ConversationEntry = {}

ConversationEntry.__index = ConversationEntry

function ConversationEntry.new(appState, conversation)
	local self = {
		appState = appState,
	}
	self.conversation = nil
	self.Tapped = Signal.new()

	self.thumb = ConversationThumbnail.new(appState, conversation)
	self.thumb.rbx.Size = UDim2.new(0, 48, 0, 48)
	self.thumb.rbx.Position = UDim2.new(0, 12, 0, 12)

	self.content = Create.new "TextLabel" {
		Name = "Content",
		AnchorPoint = Vector2.new(0, 1),
		TextXAlignment = Enum.TextXAlignment.Left,
		TextYAlignment = Enum.TextYAlignment.Bottom,
		BackgroundTransparency = 1,
		Size = UDim2.new(1, -58, 0, Constants.Font.FONT_SIZE_16),
		Position = UDim2.new(0, 0, 1, -14),
		TextSize = Constants.Font.FONT_SIZE_16,
		Font = Enum.Font.SourceSans,
		TextColor3 = Constants.Color.GRAY2,
		ClipsDescendants = true,
	}

	self.lastMessageTime = Create.new "TextLabel" {
		Name = "LastMessageTime",
		AnchorPoint = Vector2.new(1,0),
		TextXAlignment = Enum.TextXAlignment.Right,
		TextYAlignment = Enum.TextYAlignment.Top,
		BackgroundTransparency = 1,
		Size = UDim2.new(0, 50, 0, Constants.Font.FONT_SIZE_14),
		Position = UDim2.new(1, -12, 0, Constants.Font.FONT_SIZE_18_POS_OFFSET + 20),
		TextSize = Constants.Font.FONT_SIZE_14,
		Font = Enum.Font.SourceSans,
		TextColor3 = Constants.Color.GRAY2,
	}

	self.title = Create.new "TextLabel" {
		Name = "Title",
		TextXAlignment = Enum.TextXAlignment.Left,
		TextYAlignment = Enum.TextYAlignment.Top,
		BackgroundTransparency = 1,
		Size = UDim2.new(1, -90, 0, Constants.Font.FONT_SIZE_18),
		Position = UDim2.new(0, 0, 0, Constants.Font.FONT_SIZE_18_POS_OFFSET + 20),
		Font = Enum.Font.SourceSans,
		TextSize = Constants.Font.FONT_SIZE_18,
		TextColor3 = Constants.Color.GRAY1,
		ClipsDescendants = true,
	}

	self.unreadMessageIndicator = Create.new "ImageLabel" {
		Name = "UnreadMessageCount",
		AnchorPoint = Vector2.new(1,1),
		BackgroundTransparency = 1,
		BackgroundColor3 = Color3.fromRGB(226, 35, 26),
		Size = UDim2.new(0, 24, 0, 16),
		Position = UDim2.new(1, -12, 1, -14),
		Image = "rbxasset://textures/ui/LuaChat/9-slice/new-message-indicator.png",
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(8, 8, 10, 10),
		Visible = false,

		Create.new "TextLabel" {
			Name = "Label",
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			TextColor3 = Constants.Color.WHITE,
			TextSize = Constants.Font.FONT_SIZE_12,
			Font = Enum.Font.SourceSans,
			Text = "1",
			Position = UDim2.new(0, 0, 0, -1),
		}
	}

	self.rbx = Create.new "TextButton" {
		Name = "ConversationEntry",
		Size = UDim2.new(1, 0, 0, 72),
		BackgroundColor3 = Constants.Color.WHITE,
		AutoButtonColor = false,
		BorderSizePixel = 0,
		Text = "",
		Font = Enum.Font.SourceSans,

		self.thumb.rbx,

		Create.new "Frame" {
			Name = "Body",
			BackgroundTransparency = 1,
			Size = UDim2.new(1, -72, 1, 0),
			Position = UDim2.new(0, 72, 0, 0),

			Create.new "Frame" {
				Name = "Inner",
				BackgroundTransparency = 1,
				Position = UDim2.new(0, 0, 0, 0),
				Size = UDim2.new(1, 0, 1, 0),

				self.content,
				self.lastMessageTime,
				self.title,
				self.unreadMessageIndicator,
			},

			Create.new "Frame" {
				Name = "BottomBorder",
				BackgroundColor3 = Constants.Color.GRAY4,
				BorderSizePixel = 0,
				Size = UDim2.new(1, 0, 0, 1),
				Position = UDim2.new(0, 0, 1, -1),
			},
		},

		Create.new "Frame" {
			Name = "ImageContainer",
			BackgroundTransparency = 1,
			Size = UDim2.new(0, 72, 0, 72),
			Position = UDim2.new(0, 0, 0, 0),
		},
	}

	getInputEvent(self.rbx):Connect(function()
		self.Tapped:Fire()
	end)

	if self.thumb.clicked then
		self.thumb.clicked:Connect(function()
			self.Tapped:Fire()
		end)
	end

	setmetatable(self, ConversationEntry)

	self:Update(conversation)

	self.title:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
		self.title.Text = self.conversation.title
		Text.TruncateTextLabel(self.title, "...")
	end)

	return self
end

function ConversationEntry:SetBackgroundColor(color3)
	self.rbx.BackgroundColor3 = color3
	if self.thumb.rbx:FindFirstChild("Mask") then
		self.thumb.rbx.Mask.ImageColor3 = color3
	elseif self.thumb.rbx:FindFirstChild("Overlay") then
		self.thumb.rbx.Overlay.ImageColor3 = color3
	end
end

function ConversationEntry:Update(conversation)

	local state = self.appState.store:GetState()
	if state.FormFactor == Device.FormFactor.TABLET then
		local currentConversationId = state.ChatAppReducer.Location.current.parameters.conversationId
		if currentConversationId == conversation.id then
			self:SetBackgroundColor(Constants.Color.GRAY5)
		else
			self:SetBackgroundColor(Constants.Color.WHITE)
		end
	end

	if conversation == self.conversation then
		return
	end

	local oldConversationState = self.conversation
	self.conversation = conversation
	local lastMessageId = conversation.messages.keys[#conversation.messages.keys]
	local lastMessage = conversation.messages.values[lastMessageId]
	local lastMessageText = ""
	local lastMessageTime = ""

	if lastMessage then
		lastMessageText = Text.RightTrim(lastMessage.content)
		lastMessageText = lastMessageText:gsub("%s", " ")
		lastMessageTime = conversation.lastUpdated:GetShortRelativeTime()
	elseif conversation.lastUpdated then
		lastMessageTime = conversation.lastUpdated:GetShortRelativeTime()
	end

	local textColor = conversation.hasUnreadMessages and Constants.Color.GRAY1 or Constants.Color.GRAY2

	self.content.Font = conversation.hasUnreadMessages and Constants.Font.TITLE or Enum.Font.SourceSans
	self.content.Text = lastMessageText

	self.content.TextColor3 = textColor
	self.lastMessageTime.TextColor3 = textColor

	self.lastMessageTime.Text = lastMessageTime

	self.title.Text = conversation.title
	Text.TruncateTextLabel(self.title, "...")

	self.thumb:Update(conversation)

	if UNREAD_COUNTER_ENABLED then
		self.unreadMessageIndicator.Visible = conversation.hasUnreadMessages
		if conversation.hasUnreadMessages and
				(not oldConversationState or oldConversationState.messages ~= conversation.messages) then
			local numUnread = 0
			for _, message in OrderedMap.CreateIterator(conversation.messages) do
				if not message.read then
					numUnread = numUnread + 1
				end
			end
			self.unreadMessageIndicator.Label.Text = tostring(numUnread)
		end
	end
end

return ConversationEntry
