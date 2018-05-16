local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")

local Modules = CoreGui.RobloxGui.Modules


local Signal = require(Modules.Common.Signal)
local Create = require(Modules.LuaChat.Create)
local Constants = require(Modules.LuaChat.Constants)
local User = require(Modules.LuaChat.Models.User)
local Text = require(Modules.LuaChat.Text)
local DateTime = require(Modules.LuaChat.DateTime)
local ConversationThumbnail = require(Modules.LuaChat.Components.ConversationThumbnail)
local TextButton = require(Modules.LuaChat.Components.TextButton)
local getConversationDisplayTitle = require(Modules.LuaChat.Utils.getConversationDisplayTitle)

local GameShareCard = {}

GameShareCard.__index = GameShareCard

local ICON_CELL_WIDTH = 60
local HEIGHT = 54

local function getOneToOneConversationFriend(appState, conversation)
	local friend = nil
	if #conversation.participants == 2 then
		local friendId = nil
		for _, userId in ipairs(conversation.participants) do
			if userId ~= tostring(Players.LocalPlayer.UserId) then
				friendId = userId
				break
			end
		end
		if friendId then
			friend = appState.store:GetState().Users[friendId]
		end
	end
	return friend
end

function GameShareCard.new(appState, conversation)
	local self = {}
	self.appState = appState
	self.conversation = conversation
	self.conversationId = conversation.id
	self.connections = {}
	self.Tapped = Signal.new()
	self.startTime = DateTime.now()
	setmetatable(self, GameShareCard)

	local friend = getOneToOneConversationFriend(appState, conversation)

	self.rbx = Create.new"Frame" {
		Name = "GameShareCard",
		BackgroundTransparency = 0,
		BorderSizePixel = 0,
		BackgroundColor3 = Constants.Color.WHITE,
		Size = UDim2.new(1, 0, 0, HEIGHT),
	}

	local conversationThumbnail = ConversationThumbnail.new(appState, conversation)
	conversationThumbnail.rbx.Size = UDim2.new(0, 36, 0, 36)
	conversationThumbnail.rbx.Position = UDim2.new(0.5, 0, 0.5, 0)
	conversationThumbnail.rbx.AnchorPoint = Vector2.new(0.5, 0.5)
	self.conversationThumbnail = conversationThumbnail

	if friend then
		local sublabel = Create.new"TextLabel" {
			Name = "SubLabel",
			BackgroundTransparency = 1,
			Size = UDim2.new(1, -ICON_CELL_WIDTH, 0.35, 0),
			Position = UDim2.new(0, ICON_CELL_WIDTH, 0.55, 0),
			TextSize = Constants.Font.FONT_SIZE_14,
			TextColor3 = Constants.Color.GRAY3,
			Font = Enum.Font.SourceSans,
			Text = User.userPresenceToText(appState.localization, friend),
			TextXAlignment = Enum.TextXAlignment.Left,
		}
		sublabel.Parent = self.rbx
	end

	self.sendButton = TextButton.new(self.appState, "SendButton", "Feature.Chat.Action.Send")
	local label = self.sendButton.rbx.Label
	label.TextColor3 = Constants.Color.GRAY1
	label.TextSize = Constants.Font.FONT_SIZE_16
	label.Font = Enum.Font.SourceSans
	self.sendButton:SetEnabled(true)
	self.sendButton.rbx.AnchorPoint = Vector2.new(0.5, 0.5)
	self.sendButton.rbx.Position = UDim2.new(0.5, 0, 0.5, 0)
	local sendTextWidth = Text.GetTextWidth(label.Text, label.Font, label.TextSize)

	local conversationThumbnailFrame = Create.new"Frame" {
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Size = UDim2.new(0, ICON_CELL_WIDTH, 1, 0),
		Position = UDim2.new(0, 0, 0, 0),
		conversationThumbnail.rbx,
	}
	conversationThumbnailFrame.Parent = self.rbx

	self.sentLabel = Create.new "TextLabel" {
		Name = "SentLabel",
		BackgroundTransparency = 1,

		AnchorPoint = Vector2.new(0.5, 0.5),
		TextSize = Constants.Font.FONT_SIZE_16,
		Size = UDim2.new(1, 0, 0, 20),
		Position = UDim2.new(0.5, 0, 0.5, 0),

		TextColor3 = Constants.Color.GRAY2,
		Font = Enum.Font.SourceSans,
		TextXAlignment = Enum.TextXAlignment.Right,
		Text = self.appState.localization:Format("Feature.Chat.Label.Sent"),
		Visible = false
	}

	local sendButtonFrame = Create.new"Frame" {
		Name = "SendButtonFrame",
		BackgroundTransparency = 1,
		Size = UDim2.new(0, sendTextWidth + 14, 0, 32),
		Position = UDim2.new(1, -((sendTextWidth + 14) /2) - 12, .5, 0),
		AnchorPoint = Vector2.new(0.5, 0.5),

		Create.new"ImageLabel"{
			Name = "SendImageLabel",
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Size = UDim2.new(1, 0, 1, 0),
			Position = UDim2.new(0.5, 0, 0.5, 0),
			AnchorPoint = Vector2.new(0.5, 0.5),
			ScaleType = "Slice",
			SliceCenter = Rect.new(3,3,4,4),
			Image = "rbxasset://textures/ui/LuaChat/9-slice/btn-control-sm.png",
			self.sendButton.rbx,
		},
		self.sentLabel,
	}
	self.sendImageLabel = sendButtonFrame.SendImageLabel

	sendButtonFrame.Parent = self.rbx
	local sendButtonConnection = self.sendButton.Pressed:Connect(function()
		self.Tapped:Fire()
		self.sendImageLabel.Visible = false
		self.sentLabel.Visible = true
	end)
	table.insert(self.connections, sendButtonConnection)

	self.conversationTitle = Create.new"TextLabel" {
		Name = "ConversationTitle",
		BackgroundTransparency = 1,
		Size = UDim2.new(1, -ICON_CELL_WIDTH - sendButtonFrame.Size.X.Offset - 20, 0.75, 0),
		Position = UDim2.new(0, ICON_CELL_WIDTH, 0, 0),
		TextSize = Constants.Font.FONT_SIZE_18,
		TextColor3 = Constants.Color.GRAY1,
		Font = Enum.Font.SourceSans,
		Text = getConversationDisplayTitle(conversation),
		TextXAlignment = Enum.TextXAlignment.Left,
	}

	self.conversationTitle.Parent = self.rbx

	local convoTitleChanged = self.conversationTitle:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
		self.conversationTitle.Text = getConversationDisplayTitle(conversation)
		Text.TruncateTextLabel(self.conversationTitle, "...")
	end)
	table.insert(self.connections, convoTitleChanged)


	local divider = Create.new"Frame" {
		Name = "Divider",
		BackgroundColor3 = Constants.Color.GRAY4,
		BorderSizePixel = 0,
		Size = UDim2.new(1, -ICON_CELL_WIDTH, 0, 1),
		Position = UDim2.new(0, ICON_CELL_WIDTH, 1, -1),
	}
	divider.Parent = self.rbx

	return self
end

function GameShareCard:Update(conversation)
	if not conversation.lastUpdated then
		return
	end
	if conversation.lastUpdated:GetUnixTimestamp() < self.startTime:GetUnixTimestamp() then
		self.conversation = conversation
	end
end

function GameShareCard:Destruct()
	for _, connection in ipairs(self.connections) do
		connection:Disconnect()
	end
	self.connections = {}

	if self.conversationThumbnail then
		self.conversationThumbnail:Destruct()
	end
	self.rbx:Destroy()
end

return GameShareCard