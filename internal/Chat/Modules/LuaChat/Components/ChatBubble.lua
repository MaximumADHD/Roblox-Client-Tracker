local Players = game:GetService("Players")
local GuiService = game:GetService("GuiService")

local LuaChat = script.Parent.Parent
local UserThumbnail = require(script.Parent.UserThumbnail)
local TypingIndicator = require(script.Parent.TypingIndicator)

local UserChatBubble = require(script.Parent.UserChatBubble)
local AssetCard = require(script.Parent.AssetCard)

local Create = require(LuaChat.Create)
local Constants = require(LuaChat.Constants)
local WebApi = require(LuaChat.WebApi)


local RECEIVED_BUBBLE = "rbxasset://textures/ui/LuaChat/9-slice/chat-bubble2.png"
local RECEIVED_BUBBLE_WITH_TAIL = "rbxasset://textures/ui/LuaChat/9-slice/chat-bubble.png"
local RECEIVED_TAIL = "rbxasset://textures/ui/LuaChat/9-slice/chat-bubble-tip.png"

local SENT_BUBBLE = "rbxasset://textures/ui/LuaChat/9-slice/chat-bubble-self2.png"
local SENT_BUBBLE_WITH_TAIL = "rbxasset://textures/ui/LuaChat/9-slice/chat-bubble-self.png"
local SENT_TAIL = "rbxasset://textures/ui/LuaChat/9-slice/chat-bubble-self-tip.png"

local SENT_BUBBLE_OUTLINE = "rbxasset://textures/ui/LuaChat/9-slice/chat-bubble2.png"
local SENT_BUBBLE_OUTLINE_WITH_TAIL =  "rbxasset://textures/ui/LuaChat/9-slice/chat-bubble-right.png"
local SENT_OUTLINE_TAIL = "rbxasset://textures/ui/LuaChat/9-slice/chat-bubble-tip-right.png"

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

local ChatBubble = {}

ChatBubble.__index = ChatBubble

ChatBubble.BubbleType = {
	AssetCard = "AssetCard",
	ChatBubble = "UserChatBubble",
}

local function isFFlagEnabled(flagName)
	local success, isFlagEnabled = pcall(function()
		return settings():GetFFlag(flagName)
	end)

	if success and not isFlagEnabled then
		warn("Fast Flag:", flagName, "is currently not enabled.")
	elseif not success then
		warn("GetFFlag failed for flag:", flagName)
	end

	return success and isFlagEnabled
end

local function getBubbleImages(message, bubbleType)
	if isOutgoingMessage(message) and bubbleType ~= ChatBubble.BubbleType.AssetCard then
		return SENT_BUBBLE, SENT_BUBBLE_WITH_TAIL, SENT_TAIL
	elseif isOutgoingMessage(message) then
		return SENT_BUBBLE_OUTLINE, SENT_BUBBLE_OUTLINE_WITH_TAIL, SENT_OUTLINE_TAIL
	else
		return RECEIVED_BUBBLE, RECEIVED_BUBBLE_WITH_TAIL, RECEIVED_TAIL
	end
end

function ChatBubble.new(appState, message)
	local self = {}
	setmetatable(self, ChatBubble)

	local conversationId = message.conversationId
	local isSending = isMessageSending(appState.store:GetState().Conversations[conversationId], message)

	self.appState = appState
	self.message = message
	self.bubbles = {}
	self.connections = {}
	self.tailVisible = false


	self.rbx = Create.new "Frame" {
		Name = "ChatContainer",
		BackgroundTransparency = 1,

		Size = UDim2.new(1, 0, 0, 0),

		Create.new "UIListLayout" {
			SortOrder = Enum.SortOrder.LayoutOrder,
		},
	}

	if isFFlagEnabled("LuaChatAssetCards") then
		if message.moderated or isSending then
			self:AddBubble(UserChatBubble.new(appState, message), 1)

		--Specifically whitelist strings with .com/games in the url
		elseif message.content:match("roblox[labs]-%.com/games[^%d]*(%d+)/") then
			local linkStart, endLink

			local text = message.content

			for assetId in message.content:gmatch("roblox[labs]-%.com/[^%d]*(%d+)") do
				linkStart, endLink = text:find("[^%s*]*roblox[labs]-%.com/[^%s%d]*(%d+)[^%s*]*")
				linkStart = (linkStart and linkStart > 0) and linkStart or 1
				local textBefore =  text:sub(1, linkStart-1)

				if textBefore:gsub("%s+","") ~= "" then
					self:AddBubble(UserChatBubble.new(appState, message, textBefore))
				end

				self:AddBubble(AssetCard.new(appState, message, assetId))

				text = text:sub(endLink + 1)
			end

			if text:gsub("%s+","") ~= "" then
				self:AddBubble(UserChatBubble.new(appState, message, text))
			end
		else
			self:AddBubble(UserChatBubble.new(appState, message), 1)
		end
	else
		self:AddBubble(UserChatBubble.new(appState, message), 1)
	end


	return self
end

function ChatBubble:AddBubble(bubble, placement)
	table.insert(self.bubbles, placement or #self.bubbles+1 ,bubble)
	bubble.rbx.Parent = self.rbx
	bubble.LayoutOrder = placement or #self.bubbles

	for i=1,#self.bubbles do
		self.bubbles[i].LayoutOrder = i
	end

	local connection = bubble.rbx:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
		self:Resize()
	end)
	table.insert(self.connections, connection)

	self:Update()
end

function ChatBubble:SetUsernameVisible(value)
	local bubblePos = self.bubbles[1].bubble.Position

	if value then
		self.bubbles[1].usernameLabel.Visible = true

		self.bubbles[1].bubble.Position = UDim2.new(
			bubblePos.X.Scale,
			bubblePos.X.Offset,
			0,
			16
		)
	else
		self.bubbles[1].usernameLabel.Visible = false

		self.bubbles[1].bubble.Position = UDim2.new(
			bubblePos.X.Scale,
			bubblePos.X.Offset,
			0,
			0
		)
	end

	self:Resize()
end

function ChatBubble:SetTypingIndicatorVisible(value)
	if value and not self.indicator then
		local indicator = TypingIndicator.new(self.appState, .4)
		indicator.rbx.AnchorPoint = Vector2.new(0,0.5)
		indicator.rbx.Position = UDim2.new(0, self.bubbles[1].usernameLabel.TextBounds.X + 3, 0.5, 0)
		indicator.rbx.Parent = self.bubbles[1].usernameLabel

		self.indicator = indicator
	elseif self.indicator and not value then
		self.indicator:Destroy()
		self.indicator = nil
	end
end



function ChatBubble:SetThumbnailVisible(value)
	if value then
		self.thumbnail = UserThumbnail.new(self.appState, self.message.senderTargetId, true)
		self.thumbnail.rbx.Position = UDim2.new(0, 10, 0, 0)
		self.thumbnail.rbx.Overlay.ImageColor3 = Constants.Color.GRAY6
		self.thumbnail.rbx.Parent = self.bubbles[1].bubbleContainer

		self.thumbnail.clicked:Connect(function()
			local user = self.appState.store:GetState().Users[self.message.senderTargetId]
			local userId = user and user.id
			if userId then
				GuiService:BroadcastNotification(WebApi.MakeUserProfileUrl(userId),
					GuiService:GetNotificationTypeList().VIEW_PROFILE)
			end
		end)
	else
		if self.thumbnail then
			self.thumbnail:Destruct()
		end
	end
end

function ChatBubble:SetTailVisible(value)
	self.tailVisible = value
	if not self.bubbles[1] then return end

	for i, bubble in pairs(self.bubbles) do
		local bubbleImage, bubbleWithTail, tailImage = getBubbleImages(self.message, bubble.bubbleType)
		if value and i == 1 then
			bubble.bubble.Image = bubbleWithTail
			bubble.tail.Image = tailImage
			bubble.tail.Visible = true
		else
			bubble.bubble.Image = bubbleImage
			bubble.tail.Visible = false
		end
	end
end

function ChatBubble:SetPaddingObject(object)
	if not self.bubbles[1] then return end

	if self.bubbles[1].paddingObject then
		self.bubbles[1].paddingObject:Destroy()
	end

	object.LayoutOrder = 1
	object.Parent = self.bubbles[1].rbx
	self.bubbles[1].paddingObject = object
	self.bubbles[1]:Resize()
end

function ChatBubble:Resize()
	for _,bubble in pairs(self.bubbles) do
		bubble:Resize()
	end
	local height = 0
	for _, child in ipairs(self.rbx:GetChildren()) do
		if child:IsA("GuiObject") then
			height = height + child.AbsoluteSize.Y
		end
	end

	self.rbx.Size = UDim2.new(1, 0, 0, height)
end


function ChatBubble:Update()
	self:SetTailVisible(self.tailVisible)
	self:Resize()
end



function ChatBubble:Destruct()
	for _, connection in ipairs(self.connections) do
		connection:Disconnect()
	end
	self.connections = {}

	for _, bubble in ipairs(self.bubbles) do
		bubble:Destruct()
	end

	if self.thumbnail then
		self.thumbnail:Destruct()
	end
	self.thumbnail = nil

	self.rbx:Destroy()
end

return ChatBubble