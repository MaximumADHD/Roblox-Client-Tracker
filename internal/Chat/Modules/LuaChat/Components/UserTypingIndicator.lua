local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")

local Modules = CoreGui.RobloxGui.Modules
local Common = Modules.Common
local LuaChat = Modules.LuaChat

local Constants = require(LuaChat.Constants)
local Conversation = require(LuaChat.Models.Conversation)
local Create = require(LuaChat.Create)
local Signal = require(Common.Signal)
local Text = require(LuaChat.Text)

local Components = LuaChat.Components
local TypingIndicator = require(Components.TypingIndicator)
local UserThumbnail = require(Components.UserThumbnail)

local BUBBLE_PADDING = 10
local DEFAULT_SPACER_BETWEEN_BUBBLES = 2
local RECEIVED_BUBBLE_WITH_TAIL = "rbxasset://textures/ui/LuaChat/9-slice/chat-bubble.png"
local RECEIVED_TAIL = "rbxasset://textures/ui/LuaChat/9-slice/chat-bubble-tip.png"

local UserTypingIndicator = {}

UserTypingIndicator.__index = UserTypingIndicator

function UserTypingIndicator.new(appState, conversation)
	local self = {
		lastTyping = 0
	}

	self.Resized = Signal.new()
	self.conversation = conversation

	self.indicator = TypingIndicator.new(appState)
	self.indicator.rbx.AnchorPoint = Vector2.new(0.5, 0.5)
	self.indicator.rbx.Position = UDim2.new(0.5, 0, 0.5, 0)
	self.indicator.rbx.Size = UDim2.new(0, 50, 0, 12)

	local localUserId = tostring(Players.LocalPlayer.UserId)
	local otherUserId
	for _, participant in ipairs(conversation.participants) do
		if participant ~= localUserId then
			otherUserId = participant
			break
		end
	end

	self.otherUserId = otherUserId

	self.thumbnail = UserThumbnail.new(appState, otherUserId, true)
	self.thumbnail.rbx.Position = UDim2.new(0, 10, 0, 0)
	self.thumbnail.rbx.Overlay.ImageColor3 = Constants.Color.GRAY6

	self.tail = Create.new "ImageLabel" {
		Name = "Tail",
		Size = UDim2.new(0, 6, 0, 6),
		AnchorPoint = Vector2.new(1, 0),
		BackgroundTransparency = 1,
		Image = RECEIVED_TAIL,
	}

	self.bubble = Create.new "ImageLabel" {
		Name = "Bubble",
		BackgroundTransparency = 1,
		Position = UDim2.new(0, 56, 0, 0),
		Size = UDim2.new(0, 70, 0, 38),
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(10, 10, 11, 11),
		Image = RECEIVED_BUBBLE_WITH_TAIL,
		LayoutOrder = 2,

		Create.new "Frame" {
			Name = "Content",
			BackgroundTransparency = 1,
			Size = UDim2.new(1, -BUBBLE_PADDING * 2, 1, -BUBBLE_PADDING * 2),
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.new(0.5, 0, 0.5, 0),

			self.indicator.rbx
		},

		self.tail,
	}

	self.rbx = Create.new "Frame" {
		Name = "UserTypingIndicator",
		Size = UDim2.new(1, 0, 0, 0),
		BackgroundTransparency = 1,

		self.thumbnail.rbx,
		self.bubble,
	}

	setmetatable(self, UserTypingIndicator)

	self:Hide()

	return self
end

function UserTypingIndicator:Update(conversation)
	if conversation.conversationType == Conversation.Type.MULTI_USER_CONVERSATION then
		return
	end

	if conversation.usersTyping == self.conversation.usersTyping then
		return
	end

	self.conversation = conversation

	local timeNow = tick()

	self.lastTyping = timeNow

	if conversation.usersTyping[self.otherUserId] then
		self:Show()
	else
		self:Hide()
	end
end

function UserTypingIndicator:Show()
	self.rbx.Visible = true
	self.indicator.rbx.Visible = true
    -- In order to treat indicator as a single line message, generate text
    -- bubble height from default font size 18 to ensure typing indiactor
    -- height will scale with font scale.
	local temporaryTextHeight = Text.GetTextHeight("", Enum.Font.SourceSans, Constants.Font.FONT_SIZE_18,
		self.rbx.AbsoluteSize.X)
	self.rbx.Size = UDim2.new(1, 0, 0, temporaryTextHeight + BUBBLE_PADDING * 2 + DEFAULT_SPACER_BETWEEN_BUBBLES)
	self.Resized:Fire()
end

function UserTypingIndicator:Hide()
	self.rbx.Visible = false
	self.indicator.rbx.Visible = false
	self.rbx.Size = UDim2.new(1, 0, 0, 0)
	self.Resized:Fire()
end

function UserTypingIndicator:Destruct()
	self.rbx:Destroy()
end

return UserTypingIndicator
