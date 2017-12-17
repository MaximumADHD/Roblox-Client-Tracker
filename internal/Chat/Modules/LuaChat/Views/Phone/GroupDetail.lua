
local CoreGui = game:GetService("CoreGui")

local LuaApp = CoreGui.RobloxGui.Modules.LuaApp
local StringsLocale = require(LuaApp.StringsLocale)

local Modules = script.Parent.Parent.Parent
local BaseScreen = require(script.Parent.BaseScreen)
local Constants = require(Modules.Constants)
local ActionType = require(Modules.ActionType)
local ToastModel = require(Modules.Models.ToastModel)
local DialogInfo = require(Modules.DialogInfo)

local Components = Modules.Components
local GroupDetailComponent = require(Components.GroupDetail)

local Intent = DialogInfo.Intent

local GroupDetail = BaseScreen:Template()
GroupDetail.__index = GroupDetail

function GroupDetail.new(appState, route)
	local self = {}

	self.appState = appState
	self.route = route

	self.groupDetailComponent = GroupDetailComponent.new(appState, route.parameters.conversationId)
	self.rbx = self.groupDetailComponent.rbx
	self.connections = {}

	setmetatable(self, GroupDetail)

	self.groupDetailComponent.BackButtonPressed:Connect(function()
		self.appState.store:Dispatch({
			type = ActionType.PopRoute,
		})
	end)

	self.groupDetailComponent.AddFriendsPressed:Connect(function()
		if self.appState.screenManager:GetCurrentView() ~= self then
			return
		end

		local participantCount = #self.groupDetailComponent.conversation.participants
		if participantCount >= Constants.MAX_PARTICIPANT_COUNT + 1 then
			local messageKey = StringsLocale.Keys.TOO_MANY_PEOPLE
			local messageArguments = {
				MAX_GROUP_SIZE = tostring(Constants.MAX_PARTICIPANT_COUNT+1),
			}
			local toastModel = ToastModel.new(Constants.ToastIDs.TOO_MANY_PEOPLE, messageKey, messageArguments)
			self.appState.store:Dispatch({
				type = ActionType.ShowToast,
				toast = toastModel,
			})
		else
			self.appState.store:Dispatch({
				type = ActionType.SetRoute,
				intent = Intent.EditChatGroup,
				parameters = {
					conversationId = self.groupDetailComponent.conversation.id,
				},
			})
		end
	end)

	return self
end

function GroupDetail:Start()
	BaseScreen.Start(self)

	do
		local connection = self.appState.store.Changed:Connect(function(current, previous)
			local conversation = current.Conversations[current.Location.current.parameters.conversationId]
			if current ~= previous and conversation then
				self.groupDetailComponent:Update(current, previous)
			else
				if self.appState.screenManager:GetCurrentView() == self then
					self.appState.store:Dispatch({
						type = ActionType.SetRoute,
						intent = nil,
						popToIntent = Intent.ConversationHub,
						parameters = {},
					})
				end
			end
		end)
		table.insert(self.connections, connection)
	end
end

-- GroupDetail does not need to slide off-screen when spawning Dialogs.
function GroupDetail:Pause()
	local state = self.appState.store:GetState()
	local dialogType = DialogInfo.GetTypeBasedOnIntent(
		self.appState.store:GetState().FormFactor,
		state.Location.current.intent
	)

	if dialogType == DialogInfo.DialogType.Popup then
		self.isNextPageGenericDialog = true
	else
		self.isNextPageGenericDialog = false
		BaseScreen.Pause(self)
	end
end

function GroupDetail:Resume()
	if self.isNextPageGenericDialog == nil or self.isNextPageGenericDialog == false then
		BaseScreen.Resume(self)
	end
	self.isNextPageGenericDialog = false
end

function GroupDetail:Stop()
	BaseScreen.Stop(self)

	for _, connection in ipairs(self.connections) do
		connection:Disconnect()
	end

	self.connections = {}
end


return GroupDetail