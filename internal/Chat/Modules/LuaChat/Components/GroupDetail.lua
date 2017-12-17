
local function getAsset(name)
	return "rbxasset://textures/ui/LuaChat/"..name..".png"
end

local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")

local LuaApp = CoreGui.RobloxGui.Modules.LuaApp
local StringsLocale = require(LuaApp.StringsLocale)

local Modules = script.Parent.Parent
local Signal = require(Modules.Signal)
local Create = require(Modules.Create)
local Constants = require(Modules.Constants)
local Functional = require(Modules.Functional)
local DialogInfo = require(Modules.DialogInfo)

local Components = Modules.Components
local HeaderLoader = require(Components.HeaderLoader)
local SectionComponent = require(Components.ListSection)
local ActionEntryComponent = require(Components.ActionEntry)
local UserListComponent = require(Components.UserList)
local ListEntryComponent = require(Components.ListEntry)
local ResponseIndicator = require(Components.ResponseIndicator)
local GenericDialogType = require(Components.GroupDetailDialogs.GenericDialogType)

local ConversationModel = require(Modules.Models.Conversation)

local ActionType = require(Modules.ActionType)

local Intent = DialogInfo.Intent

local PARTICIPANT_VIEW = 1
local PARTICIPANT_REPORT = 2
local PARTICIPANT_REMOVE = 3

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
		Text = appState.localization:Format(StringsLocale.Keys.SEE_MORE_FRIENDS),
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
	self.header:SetTitle(appState.localization:Format(StringsLocale.Keys.CHAT_DETAILS))
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

	self.responseIndicator = ResponseIndicator.new(appState)
	self.responseIndicator:SetVisible(false)

	self.general = SectionComponent.new(appState, StringsLocale.Keys.GENERAL)
	self.general.rbx.LayoutOrder = 1
	self.general.rbx.Parent = content

	self.groupName = ActionEntryComponent.new(appState, getAsset("icons/ic-nametag"), StringsLocale.Keys.CHAT_GROUP_NAME)
	self.groupName.rbx.LayoutOrder = 2
	self.groupName.rbx.Parent = content
	self.groupName.tapped.Event:Connect(function()
		self.appState.store:Dispatch({
			type = ActionType.SetRoute,
			intent = Intent.GenericDialog,
			parameters = {
				dialog = GenericDialogType.EditChatGroupNameDialog,
				dialogParameters = {
					titleLocalizationKey = StringsLocale.Keys.CHAT_GROUP_NAME,
					maxChar = 150,
					conversation = self.conversation,
				}
			}
		})
	end)

	self.responseIndicator = ResponseIndicator.new(appState)
	self.responseIndicator:SetVisible(false)
	self.responseIndicator.rbx.Parent = self.rbx

	local members = SectionComponent.new(appState, StringsLocale.Keys.MEMBERS)
	members.rbx.LayoutOrder = 5
	members.rbx.Parent = content

	self.addFriends = ActionEntryComponent.new(appState, getAsset("icons/ic-add-friends"),
		StringsLocale.Keys.ADD_FRIENDS, 36)
	self.addFriends.rbx.LayoutOrder = 6
	self.addFriends:SetDividerOffset(60)
	self.addFriends.rbx.Parent = content

	self.AddFriendsPressed = self.addFriends.tapped.Event

	self.participantsList = UserListComponent.new(appState, getAsset("icons/ic-more"))
	self.participantsList.rbx.LayoutOrder = 7
	self.participantsList.rbx.Parent = content
	self.participantsList.userSelected:Connect(function(user)
		if user.id ~= tostring(Players.LocalPlayer.UserId) then
			self.appState.store:Dispatch({
				type = ActionType.SetRoute,
				intent = Intent.GenericDialog,
				parameters = {
					dialog = GenericDialogType.ParticipantDialog,
					dialogParameters = {
						titleKey = StringsLocale.Keys.OPTION,
						options = {
							[PARTICIPANT_VIEW] = StringsLocale.Keys.VIEW_PROFILE,
							[PARTICIPANT_REPORT] = StringsLocale.Keys.REPORT_USER,
							[PARTICIPANT_REMOVE] = StringsLocale.Keys.REMOVE_FROM_GROUP,
							},
						conversationId = self.conversationId,
						conversation = self.conversation,
						userId = user.id
					}
				}
			})
		end
	end)

	self.seeMore = SeeMoreButton.new(appState)
	self.seeMore.rbx.LayoutOrder = 9
	self.seeMore.rbx.Parent = content
	self.showAllParticipants = false
	self.seeMore.tapped:Connect(function()
		if self.showAllParticipants then
			self.showAllParticipants = false
			self:Update(appState.store:GetState())
		else
			self.showAllParticipants = true
			self:Update(appState.store:GetState())
		end
	end)

	self.blankSection = SectionComponent.new(appState)
	self.blankSection.rbx.LayoutOrder = 10
	self.blankSection.rbx.Parent = content

	self.leaveGroup = ActionEntryComponent.new(appState, getAsset("icons/ic-leave"), StringsLocale.Keys.LEAVE_GROUP)
	self.leaveGroup.rbx.LayoutOrder = 11
	self.leaveGroup.rbx.Parent = content
	self.leaveGroup.tapped.Event:Connect(function()
		self.appState.store:Dispatch({
			type = ActionType.SetRoute,
			intent = Intent.GenericDialog,
			parameters = {
				dialog = GenericDialogType.LeaveGroupDialog,
				dialogParameters = {
					titleKey = StringsLocale.Keys.LEAVE_GROUP,
					messageKey = StringsLocale.Keys.LEAVE_GROUP_MESSAGE,
					cancelTitleKey = StringsLocale.Keys.STAY,
					confirmationTitleKey = StringsLocale.Keys.LEAVE,
					conversation = self.conversation
				}
			}
		})
	end)

	content.ListLayout:ApplyLayout()

	self.conversation = ConversationModel.empty()

	self:Update(appState.store:GetState())

	local ancestryChangedConnection = self.rbx.AncestryChanged:Connect(function(rbx, parent)
		if rbx == self.rbx and parent == nil then
			self:Destruct()
		end
	end)
	table.insert(self.connections, ancestryChangedConnection)

	return self
end

function GroupDetail:Update(state)
	local conversation = state.Conversations[state.Location.current.parameters.conversationId]
	self.header:SetConnectionState(state.ConnectionState)
	if conversation ~= nil then --if conversation ~= self.conversation then
		if conversation.id ~= self.conversation.id then
			self.showAllParticipants = false
		end

		if conversation.isDefaultTitle then
			local notSetLocalized = self.appState.localization:Format(StringsLocale.Keys.NOT_SET)
			self.groupName:Update(notSetLocalized)
		else
			self.groupName:Update(conversation.title)
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
			local message = self.appState.localization:Format(StringsLocale.Keys.SEE_MORE_FRIENDS, messageArguments)
			self.seeMore:Update(message)
			self.seeMore.rbx.Visible = true
		elseif count > 3 then
			self.seeMore:Update(self.appState.localization:Format(StringsLocale.Keys.SEE_LESS_FRIENDS))
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
	if self.oldState == nil or state.Location.current ~= self.oldState.Location.current then
		if self.oldState ~= nil and state.Location.current.intent == Intent.GroupDetail then
			-- If any Dialog is mounted on ModalBase, close them.
			if self.oldState.Location.current.intent == Intent.GenericDialog then
				self.oldState.Location.current.parameters.dialog:Close()
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

function GroupDetail:Destruct()
	for _, connection in ipairs(self.connections) do
		connection:Disconnect()
	end

	self.connections = {}

	self.responseIndicator:Destruct()

	self.rbx:Destroy()
end

return GroupDetail
