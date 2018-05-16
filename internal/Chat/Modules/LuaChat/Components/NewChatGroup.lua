local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")

local Modules = CoreGui.RobloxGui.Modules
local Common = Modules.Common
local LuaApp = Modules.LuaApp
local LuaChat = Modules.LuaChat

local Constants = require(LuaChat.Constants)
local ConversationActions = require(LuaChat.Actions.ConversationActions)
local ConversationModel = require(LuaChat.Models.Conversation)
local Create = require(LuaChat.Create)
local DialogInfo = require(LuaChat.DialogInfo)
local Immutable = require(Common.Immutable)
local Signal = require(Common.Signal)


local Components = LuaChat.Components
local FriendSearchBoxComponent = require(Components.FriendSearchBox)
local HeaderLoader = require(Components.HeaderLoader)
local ResponseIndicator = require(Components.ResponseIndicator)
local SectionComponent = require(Components.ListSection)
local TextInputEntry = require(Components.TextInputEntry)

local RemoveRoute = require(LuaChat.Actions.RemoveRoute)

local Intent = DialogInfo.Intent

local NewChatGroup = {}
NewChatGroup.__index = NewChatGroup

local function getAsset(name)
	return "rbxasset://textures/ui/LuaChat/"..name..".png"
end

function NewChatGroup.new(appState)
	local self = {
		appState = appState,
	}
	setmetatable(self, NewChatGroup)
	self.connections = {}

	self.conversation = ConversationModel.empty()

	self.responseIndicator = ResponseIndicator.new(appState)
	self.responseIndicator:SetVisible(false)

	-- Header:
	self.header = HeaderLoader.GetHeader(appState, Intent.NewChatGroup)
	self.header:SetDefaultSubtitle()
	self.header:SetTitle(appState.localization:Format("Feature.Chat.Heading.NewChatGroup"))
	self.header:SetBackButtonEnabled(true)
	self.header:SetConnectionState(Enum.ConnectionState.Disconnected)

	-- Name the group:
	local placeholderText = appState.localization:Format("Feature.Chat.Description.NameGroupChat")
	self.groupName = TextInputEntry.new(appState, getAsset("icons/ic-nametag"), placeholderText)
	self.groupName.rbx.LayoutOrder = 1

	local sanitizeGroupName = function(input)
		return input:gsub("\n", "")
	end
	local textboxChangedConnection = self.groupName.textBoxChanged:Connect(function(newGroupName)
		self.conversation.title = sanitizeGroupName(newGroupName)
	end)
	table.insert(self.connections, textboxChangedConnection)

	local textboxFocusLostConnection = self.groupName.textBoxFocusLost:Connect(function()
		self.groupName:SanitizeInput(sanitizeGroupName)
	end)
	table.insert(self.connections, textboxFocusLostConnection)

	-- Search for friends:
	self.searchComponent = FriendSearchBoxComponent.new(
		appState,
		self.conversation.participants,
		Constants.MAX_PARTICIPANT_COUNT,
		function(user)
			return user.isFriend and user.id ~= tostring(Players.LocalPlayer.UserId)
		end
	)
	self.searchComponent.rbx.LayoutOrder = 3
	local addParticipantConnection = self.searchComponent.addParticipant:Connect(function(id)
		self.groupName:ReleaseFocus()
		self.searchComponent.search:ReleaseFocus()
		self:ChangeParticipants(Immutable.Set(self.conversation.participants, #self.conversation.participants+1, id))
	end)
	table.insert(self.connections, addParticipantConnection)

	local removeParticipantConnection = self.searchComponent.removeParticipant:Connect(function(id)
		self.groupName:ReleaseFocus()
		self.searchComponent.search:ReleaseFocus()
		self:ChangeParticipants(Immutable.RemoveValueFromList(self.conversation.participants, id))
	end)
	table.insert(self.connections, removeParticipantConnection)

	-- Assemble the dialog from components we just made:
	self.sectionComponent = SectionComponent.new(appState, nil, 2)
	self.rbx = Create.new"Frame" {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		BorderSizePixel = 0,

		Create.new("UIListLayout") {
			Name = "ListLayout",
			SortOrder = "LayoutOrder",
		},
		self.header.rbx,
		Create.new"Frame" {
			Name = "Content",
			Size = UDim2.new(1, 0, 1, -(self.header.heightOfHeader)),
			BackgroundColor3 = Constants.Color.GRAY5,
			BorderSizePixel = 0,
			LayoutOrder = 1,
			ClipsDescendants = true,

			Create.new"UIListLayout" {
				Name = "ListLayout",
				SortOrder = "LayoutOrder",
			},
			self.groupName.rbx,
			self.sectionComponent.rbx,
			self.searchComponent.rbx,
		},
		self.responseIndicator.rbx,
	}

	-- Wire up the save button to actually create our new chat group:
	self.saveGroup = self.header:CreateHeaderButton("SaveGroup", "Feature.Chat.Action.Create")
	self.saveGroup:SetEnabled(false)
	local saveGroupConnection = self.saveGroup.Pressed:Connect(function()
		self.groupName:ReleaseFocus()
		self.searchComponent.search:ReleaseFocus()
		if #self.conversation.participants >= Constants.MIN_PARTICIPANT_COUNT then
			self.responseIndicator:SetVisible(true)
			self.appState.store:Dispatch(
				ConversationActions.CreateConversation(self.conversation, function(id)
					self.responseIndicator:SetVisible(false)
					if id ~= nil then
						self.ConversationSaved:Fire(id)
					end
					self.appState.store:Dispatch(RemoveRoute(Intent.NewChatGroup))
				end)
			)
		end
	end)
	table.insert(self.connections, saveGroupConnection)

	self.BackButtonPressed = Signal.new()
	self.header.BackButtonPressed:Connect(function()
		self.groupName:ReleaseFocus()
		self.searchComponent.search:ReleaseFocus()
		self.BackButtonPressed:Fire()
	end)
	self.ConversationSaved = Signal.new()

	spawn(function()
		self.appState.store:Dispatch(ConversationActions.GetAllFriendsAsync())
	end)

	self.tooManyFriendsAlertId = nil

	-- Monitor for several size changes to properly scale dialog elements:
	local groupNameConnection = self.groupName.rbx:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
		self:Resize()
	end)
	table.insert(self.connections, groupNameConnection)

	local headerSizeConnection = self.header.rbx:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
		self:Resize()
	end)
	table.insert(self.connections, headerSizeConnection)

	return self
end

function NewChatGroup:Resize()
	-- Content frame must resize if the header changes size (which happens when it shows the "Connecting" message):
	local sizeContent = UDim2.new(1, 0, 1, -self.header.rbx.AbsoluteSize.Y)
	self.rbx.Content.Size = sizeContent

	-- Friends Search frame must resize to fit properly with their peers:
	local sizeSearch = UDim2.new(1, 0, 1, -(self.groupName.rbx.AbsoluteSize.Y + self.sectionComponent.rbx.AbsoluteSize.Y))
	self.searchComponent.rbx.Size = sizeSearch
end

function NewChatGroup:ChangeParticipants(participants)
	self.conversation = Immutable.Set(self.conversation, "participants", participants)
	self.searchComponent:Update(participants)
	self.saveGroup:SetEnabled(#participants >= Constants.MIN_PARTICIPANT_COUNT)
end

function NewChatGroup:Update(current, previous)
	self.header:SetConnectionState(current.ConnectionState)
	self.searchComponent:Update(self.conversation.participants)
end

function NewChatGroup:Destruct()
	for _, connection in ipairs(self.connections) do
		connection:Disconnect()
	end
	self.connections = {}

	self.header:Destroy()
	self.groupName:Destruct()
	self.responseIndicator:Destruct()
	self.searchComponent:Destruct()
	self.rbx:Destroy()
end

return NewChatGroup