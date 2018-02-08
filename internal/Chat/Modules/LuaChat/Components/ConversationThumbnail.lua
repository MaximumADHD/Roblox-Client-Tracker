local Players = game:GetService("Players")

local LuaChat = script.Parent.Parent
local Create = require(LuaChat.Create)
local Functional = require(LuaChat.Functional)
local UserThumbnail = require(script.Parent.UserThumbnail)
local Device = require(LuaChat.Device)
local Constants = require(LuaChat.Constants)
local Conversation = require(LuaChat.Models.Conversation)
local HeadshotLoader = require(LuaChat.HeadshotLoader)

local MAX_USERS_IN_THUMBNAIL = 4

local ConversationThumbnail = {}

ConversationThumbnail.__index = ConversationThumbnail

-- This lets us determine how to build the group thumbnail. Index represents how many people are in the thumbnail!
local IMAGE_LAYOUT = {
	[1] = {
		{
			Size = UDim2.new(1, 0, 1, 0),
			Position = UDim2.new(0, 0, 0, 0),
			FrameSize = UDim2.new(1, 0, 1, 0),
			FramePosition = UDim2.new(0, 0, 0, 0),
		},
	},
	[2] = {
		{
			Size = UDim2.new(2, 0, 1, 0),
			Position = UDim2.new(-0.5, 0, 0, 0),
			FrameSize = UDim2.new(0.5, -1, 1, 0),
			FramePosition = UDim2.new(0, 0, 0, 0),
			Border = {
				BorderPosition = UDim2.new(0.5, -1, 0, 0),
				BorderSize = UDim2.new(0, 2, 1, 0),
			},
		},
		{
			Size = UDim2.new(2, 0, 1, 0),
			Position = UDim2.new(-0.5, 0, 0, 0),
			FrameSize = UDim2.new(0.5, -1, 1, 0),
			FramePosition = UDim2.new(0.5, 1, 0, 0),
		},
	},
	[3] = {
		{
			Size = UDim2.new(2, 0, 1, 0),
			Position = UDim2.new(-0.5, 0, 0, 0),
			FrameSize = UDim2.new(0.5, -1, 1, 0),
			FramePosition = UDim2.new(0, 0, 0, 0),
			Border = {
				BorderPosition = UDim2.new(0.5, -1, 0, 0),
				BorderSize = UDim2.new(0, 2, 1, 0),
			},
		},
		{
			Size = UDim2.new(1, 0, 1, 0),
			Position = UDim2.new(0, 0, 0, 0),
			FrameSize = UDim2.new(0.5, -1, 0.5, -1),
			FramePosition = UDim2.new(0.5, 1, 0, 0),
			Border = {
				BorderPosition = UDim2.new(0.5, 0, 0.5, -1),
				BorderSize = UDim2.new(0.5, 0, 0, 2),
			},
		},
		{
			Size = UDim2.new(1, 0, 1, 0),
			Position = UDim2.new(0, 0, 0, 0),
			FrameSize = UDim2.new(0.5, -1, 0.5, -1),
			FramePosition = UDim2.new(0.5, 1, 0.5, 1),
		},
	},
	[4] = {
		{
			Size = UDim2.new(1, 0, 1, 0),
			Position = UDim2.new(0, 0, 0, 0),
			FrameSize = UDim2.new(0.5, -1, 0.5, -1),
			FramePosition = UDim2.new(0, 0, 0, 0),
			Border = {
				BorderPosition = UDim2.new(0, 0, 0.5, -1),
				BorderSize = UDim2.new(1, 0, 0, 2),
			},
		},
		{
			Size = UDim2.new(1, 0, 1, 0),
			Position = UDim2.new(0, 0, 0, 0),
			FrameSize = UDim2.new(0.5, -1, 0.5, -1),
			FramePosition = UDim2.new(0.5, 1, 0, 0),
		},
		{
			Size = UDim2.new(1, 0, 1, 0),
			Position = UDim2.new(0, 0, 0, 0),
			FrameSize = UDim2.new(0.5, -1, 0.5, -1),
			FramePosition = UDim2.new(0, 0, 0.5, 1),
			Border = {
				BorderPosition = UDim2.new(0.5, -1, 0, 0),
				BorderSize = UDim2.new(0, 2, 1, 0),
			},
		},
		{
			Size = UDim2.new(1, 0, 1, 0),
			Position = UDim2.new(0, 0, 0, 0),
			FrameSize = UDim2.new(0.5, -1, 0.5, -1),
			FramePosition = UDim2.new(0.5, 1, 0.5, 1),
		},
	},
}


function ConversationThumbnail.new(appState, conversation)
	local self = {
		appState = appState,
	}

	local localId = tostring(Players.LocalPlayer.UserId)
	local otherIds = Functional.Filter(conversation.participants, function(participantId)
		return participantId ~= localId
	end)

	if conversation.conversationType == Conversation.Type.ONE_TO_ONE_CONVERSATION then
		return UserThumbnail.new(appState, otherIds[1])
	end

	self.rbx = Create.new "Frame" {
		Name = "ConversationThumbnail",
		BackgroundTransparency = 0,
		BorderSizePixel = 0,
		BackgroundColor3 = Constants.Color.WHITE,
	}

	setmetatable(self, ConversationThumbnail)

	self:Update(conversation)

	return self
end

function ConversationThumbnail:Update(conversation)
	self.rbx:ClearAllChildren()

	local localId = tostring(Players.LocalPlayer.UserId)
	local otherIds = Functional.Filter(conversation.participants, function(participantId)
		return participantId ~= localId
	end)

	local showUserIds

	if conversation.conversationType == Conversation.Type.MULTI_USER_CONVERSATION then
		local hasRoomForLocalUser = #conversation.participants <= MAX_USERS_IN_THUMBNAIL

		if hasRoomForLocalUser then
			showUserIds = conversation.participants
		else
			showUserIds = Functional.Take(otherIds, MAX_USERS_IN_THUMBNAIL)
		end
	else
		showUserIds = otherIds
	end

	for userIndex, userId in ipairs(showUserIds) do
		local layoutData = IMAGE_LAYOUT[#showUserIds][userIndex]
		local frame = Create.new "Frame" {
			Name = "AvatarHolder",
			BackgroundTransparency = 1,
			ClipsDescendants = true,
			Size = layoutData.FrameSize,
			Position = layoutData.FramePosition,
		}
		local headshot = Create.new "ImageLabel" {
			Name = "Avatar",
			Size = layoutData.Size,
			Position = layoutData.Position,
			BackgroundTransparency = 1,
		}
		headshot.Parent = frame

		HeadshotLoader:Load(headshot, userId)

		if layoutData.Border then
			Create.new "Frame" {
				Name = "Border",
				Size = layoutData.Border.BorderSize,
				Position = layoutData.Border.BorderPosition,
				BorderSizePixel = 0,
				BackgroundColor3 = Constants.Color.GRAY4
			}.Parent = self.rbx
		end

		frame.Parent = self.rbx
	end

	Create.new "ImageLabel" {
		Name = "Mask",
		Image = "rbxasset://textures/ui/LuaChat/graphic/gr-profile-border-48x48.png",
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
	}.Parent = self.rbx

	local state = self.appState.store:GetState()
	if state.FormFactor == Device.FormFactor.TABLET then
		local currentConversationId = state.Location.current.parameters.conversationId
		if currentConversationId == conversation.id then
			self.rbx.Mask.ImageColor3 = Constants.Color.GRAY5
		else
			self.rbx.Mask.ImageColor3 = Constants.Color.WHITE
		end
	end
end

function ConversationThumbnail:Destruct()
	self.rbx:Destroy()
end

return ConversationThumbnail