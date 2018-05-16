local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")

local Modules = CoreGui.RobloxGui.Modules
local Common = Modules.Common
local LuaApp = Modules.LuaApp
local LuaChat = Modules.LuaChat

local Signal = require(Common.Signal)
local Create = require(LuaChat.Create)
local Constants = require(LuaChat.Constants)
local Functional = require(Common.Functional)
local DialogInfo = require(LuaChat.DialogInfo)

local Components = LuaChat.Components
local HeaderLoader = require(Components.HeaderLoader)
local SectionComponent = require(Components.ListSection)
local ActionEntryComponent = require(Components.ActionEntry)
local UserListComponent = require(Components.UserList)
local ListEntryComponent = require(Components.ListEntry)
local ResponseIndicator = require(Components.ResponseIndicator)
local GenericDialogType = require(Components.GroupDetailDialogs.GenericDialogType)

local getConversationDisplayTitle = require(LuaChat.Utils.getConversationDisplayTitle)

local ConversationModel = require(LuaChat.Models.Conversation)

local SetRoute = require(LuaChat.Actions.SetRoute)

local Intent = DialogInfo.Intent

local PARTICIPANT_VIEW = 1
local PARTICIPANT_REPORT = 2
local PARTICIPANT_REMOVE = 3

local function getAsset(name)
	return "rbxasset://textures/ui/LuaChat/"..name..".png"
end

local SeeMoreButton = {}
SeeMoreButton.__index = SeeMoreButton

function SeeMoreButton.new(appState)
	local self = {}
	setmetatable(self, SeeMoreButton)

	local listEntry = ListEntryComponent.new(appState, 40)

	self.rbx = listEntry.rbx
	self.tapped = listEntry.tapped

	local label = Create.new"TextLabel" {
		Name = "Label",
		BackgroundTransparency = 1,
		Size = UDim2.new(1, -12, 1, 0),
		Position = UDim2.new(0, 12, 0, 0),
		TextSize = Constants.Font.FONT_SIZE_16,
		TextColor3 = Constants.Color.BLUE_PRIMARY,
		Font = Enum.Font.SourceSans,
		TextXAlignment = Enum.TextXAlignment.Left,
		Text = appState.localization:Format("Feature.Chat.Action.SeeMoreFriends"),
	}
	label.Parent = self.rbx

	local divider = Create.new"Frame" {
		Name = "Divider",
		BackgroundColor3 = Constants.Color.GRAY4,
		BorderSizePixel = 0,
		Size = UDim2.new(1, 0, 0, 1),
		Position = UDim2.new(0, 0, 1, -1),
	}
	divider.Parent = self.rbx

	return self
end

function SeeMoreButton:Update(text)
	self.rbx.Label.Text = text
end

local GroupDetail = {}
GroupDetail.__index = GroupDetail

function GroupDetail.new(appState, convoId)
	local self = {}
	self.connections = {}
	setmetatable(self, GroupDetail)

	self.appState = appState
	self.conversationId = convoId
	self.AddFriendsPressed = Signal.new()

	self.oldState = nil
	self.header = HeaderLoader.GetHeader(appState, Intent.GroupDetail)
	self.header:SetTitle(appState.localization:Format("Feature.Chat.Label.ChatDetails"))
	self.header:SetDefaultSubtitle()
	self.header:SetBackButtonEnabled(true)

	self.rbx = Create.new"Frame" {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundColor3 = Constants.Color.GRAY5,
		BorderSizePixel = 0,

		self.header.rbx,
		Create.new "ScrollingFrame" {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			ScrollBarThickness = 0,
			Create.new"Frame" {
				Name = "Content",
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundColor3 = Constants.Color.GRAY5,
				BorderSizePixel = 0,
				Create.new"UIListLayout" {
					Name = "ListLayout",
					SortOrder = Enum.SortOrder.LayoutOrder,
				},
			},
		},
	}
	local scrollingFrame = self.rbx.ScrollingFrame
	local content = scrollingFrame.Content

	self.BackButtonPressed = self.header.BackButtonPressed

	scrollingFrame.Position = UDim2.new(0, 0, 0, self.header.rbx.Size.Y.Offset)
	scrollingFrame.Size = UDim2.new(1, 0, 1, -self.header.rbx.Size.Y.Offset)

	self.general = SectionComponent.new(appState, "Feature.Chat.Label.General")
	self.general.rbx.LayoutOrder = 1
	self.general.rbx.Parent = content

	self.groupName = ActionEntryComponent.new(appState, getAsset("icons/ic-nametag"), "Feature.Chat.Label.ChatGroupName")
	self.groupName.rbx.LayoutOrder = 2
	self.groupName.rbx.Parent = content
	local groupNameConnection = self.groupName.tapped.Event:Connect(function()
		self.appState.store:Dispatch(SetRoute(Intent.GenericDialog, {
				dialog = GenericDialogType.EditChatGroupNameDialog,
				dialogParameters = {
					titleLocalizationKey = "Feature.Chat.Label.ChatGroupName",
					maxChar = 150,
					conversation = self.conversation,
				}
			}
		))
	end)
	table.insert(self.connections, groupNameConnection)

	self.responseIndicator = ResponseIndicator.new(appState)
	self.responseIndicator:SetVisible(false)
	self.responseIndicator.rbx.Parent = self.rbx

	local members = SectionComponent.new(appState, "Feature.Chat.Label.Members")
	members.rbx.LayoutOrder = 5
	members.rbx.Parent = content

	self.addFriends = ActionEntryComponent.new(appState, getAsset("icons/ic-add-friends"),
		"Feature.Chat.Label.AddFriends", 36)
	self.addFriends.rbx.LayoutOrder = 6
	self.addFriends:SetDividerOffset(60)
	self.addFriends.rbx.Parent = content

	self.AddFriendsPressed = self.addFriends.tapped.Event

	self.participantsList = UserListComponent.new(appState, getAsset("icons/ic-more"))
	self.participantsList.rbx.LayoutOrder = 7
	self.participantsList.rbx.Parent = content
	local userSelectedConnection = self.participantsList.userSelected:Connect(function(user)
		if user.id ~= tostring(Players.LocalPlayer.UserId) then
			self.appState.store:Dispatch(SetRoute(Intent.GenericDialog, {
					dialog = GenericDialogType.ParticipantDialog,
					dialogParameters = {
						titleKey = "Feature.Chat.Heading.Option",
						options = {
							[PARTICIPANT_VIEW] = "Feature.Chat.Label.ViewProfile",
							[PARTICIPANT_REPORT] = "Feature.Chat.Action.ReportUser",
							[PARTICIPANT_REMOVE] = "Feature.Chat.Action.RemoveFromGroup",
							},
						conversationId = self.conversationId,
						conversation = self.conversation,
						userId = user.id
					}
				}
			))
		end
	end)
	table.insert(self.connections, userSelectedConnection)

	self.seeMore = SeeMoreButton.new(appState)
	self.seeMore.rbx.LayoutOrder = 9
	self.seeMore.rbx.Parent = content
	self.showAllParticipants = false
	local seeMoreConnection = self.seeMore.tapped:Connect(function()
		if self.showAllParticipants then
			self.showAllParticipants = false
			self:Update(appState.store:GetState())
		else
			self.showAllParticipants = true
			self:Update(appState.store:GetState())
		end
	end)
	table.insert(self.connections, seeMoreConnection)

	self.blankSection = SectionComponent.new(appState)
	self.blankSection.rbx.LayoutOrder = 10
	self.blankSection.rbx.Parent = content

	self.leaveGroup = ActionEntryComponent.new(appState, getAsset("icons/ic-leave"), "Feature.Chat.Heading.LeaveGroup")
	self.leaveGroup.rbx.LayoutOrder = 11
	self.leaveGroup.rbx.Parent = content
	local leaveGroupConnection = self.leaveGroup.tapped.Event:Connect(function()
		self.appState.store:Dispatch(SetRoute(Intent.GenericDialog, {
				dialog = GenericDialogType.LeaveGroupDialog,
				dialogParameters = {
					titleKey = "Feature.Chat.Heading.LeaveGroup",
					messageKey = "Feature.Chat.Message.LeaveGroup",
					cancelTitleKey = "Feature.Chat.Action.Stay",
					confirmationTitleKey = "Feature.Chat.Action.Leave",
					conversation = self.conversation
				}
			}
		))
	end)
	table.insert(self.connections, leaveGroupConnection)

	content.ListLayout:ApplyLayout()

	self.conversation = ConversationModel.empty()

	self:Update(appState.store:GetState())

	return self
end

function GroupDetail:Update(state)
	local conversationId = state.ChatAppReducer.Location.current.parameters.conversationId
	local conversation = state.ChatAppReducer.Conversations[conversationId]
	self.header:SetConnectionState(state.ConnectionState)
	if conversation ~= nil then --if conversation ~= self.conversation then
		if conversation.id ~= self.conversation.id then
			self.showAllParticipants = false
		end

		if conversation.isUserLeaving ~= self.conversation.isUserLeaving then
			self.responseIndicator:SetVisible(conversation.isUserLeaving)
		end

		if conversation.isDefaultTitle then
			local notSetLocalized = self.appState.localization:Format("Feature.Chat.Label.NotSet")
			self.groupName:Update(notSetLocalized)
		else
			self.groupName:Update(getConversationDisplayTitle(conversation))
		end

		local count = 0
		local users = Functional.Map(conversation.participants, function(userId)
			count = count + 1
			return (count <= 3 or self.showAllParticipants) and state.Users[userId] or nil
		end)

		if count > 3 and not self.showAllParticipants then
			local messageArguments = {
				NUMBER_OF_FRIENDS = tostring(count-3)
			}
			local message = self.appState.localization:Format("Feature.Chat.Action.SeeMoreFriends", messageArguments)
			self.seeMore:Update(message)
			self.seeMore.rbx.Visible = true
		elseif count > 3 then
			self.seeMore:Update(self.appState.localization:Format("Feature.Chat.Label.SeeLess"))
			self.seeMore.rbx.Visible = true
		else
			self.seeMore.rbx.Visible = false
		end

		self.participantsList:Update(users)

		if conversation.conversationType == ConversationModel.Type.MULTI_USER_CONVERSATION then
			self.general.rbx.Visible = true
			self.groupName.rbx.Visible = true
			self.leaveGroup.rbx.Visible = true
			self.blankSection.rbx.Visible = true
		elseif conversation.conversationType == ConversationModel.Type.ONE_TO_ONE_CONVERSATION then
			self.general.rbx.Visible = false
			self.groupName.rbx.Visible = false
			self.leaveGroup.rbx.Visible = false
			self.blankSection.rbx.Visible = false
		end

		self.conversation = conversation
	end
	if self.oldState == nil or state.ChatAppReducer.Location.current ~= self.oldState.ChatAppReducer.Location.current then
		if self.oldState ~= nil and state.ChatAppReducer.Location.current.intent == Intent.GroupDetail then
			-- If any Dialog is mounted on ModalBase, close them.
			if self.oldState.ChatAppReducer.Location.current.intent == Intent.GenericDialog then
				self.oldState.ChatAppReducer.Location.current.parameters.dialog:Close()
			end
		end
	end
	local highestYValue = 0
	for _, element in pairs(self.rbx.ScrollingFrame.Content:GetChildren()) do
		if element:IsA("GuiObject") then
			highestYValue = highestYValue + element.Size.Y.Offset
		end
	end
	self.rbx.ScrollingFrame.CanvasSize = UDim2.new(1, 0, 0, highestYValue)
	self.rbx.ScrollingFrame.Content.Size = UDim2.new(1, 0, 0, highestYValue)

	self.oldState = state
end

function GroupDetail:Stop()
	for _, connection in ipairs(self.connections) do
		connection:Disconnect()
	end

	self.connections = {}
end

function GroupDetail:Destruct()
	self.responseIndicator:Destruct()

	self.rbx:Destroy()
end

return GroupDetail
