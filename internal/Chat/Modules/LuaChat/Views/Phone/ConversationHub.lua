local UserInputService = game:GetService("UserInputService")

local LuaChat = script.Parent.Parent.Parent

local BaseScreen = require(script.Parent.BaseScreen)
local Create = require(LuaChat.Create)

local Components = LuaChat.Components
local ConversationHubComponent = require(Components.ConversationHub)

local ActionType = require(LuaChat.ActionType)
local DialogInfo = require(LuaChat.DialogInfo)
local Constants = require(LuaChat.Constants)
local ConversationActions = require(LuaChat.Actions.ConversationActions)

local Intent = DialogInfo.Intent

local ConversationHub = BaseScreen:Template()

ConversationHub.__index = ConversationHub

function ConversationHub.new(appState, route)
	local self = {}

	setmetatable(self, ConversationHub)

	self.appState = appState
	self.route = route

	self.ConversationHubComponent = ConversationHubComponent.new(appState)
	self.rbx = self.ConversationHubComponent.rbx

	local spacer = Create.new "Frame" {
		Name = "Spacer",
		Size = UDim2.new(1, 0, 0, UserInputService.BottomBarSize.Y),
		BackgroundColor3 = Constants.Color.WHITE,
		BorderColor3 = Constants.Color.WHITE,
		BackgroundTransparency = 0,
		LayoutOrder = 2,
	}
	spacer.Parent = self.rbx

	self.ConversationHubComponent.ConversationTapped:Connect(function(convoId)
		if self.appState.screenManager:GetCurrentView() ~= self then
			return
		end

		local conversation = self.appState.store:GetState().Conversations[convoId]

		if conversation == nil then
			return
		end

		if conversation.serverState == Constants.ServerState.NONE then
			self.appState.store:Dispatch(ConversationActions.StartOneToOneConversation(conversation, function(serverConversation)
				self.appState.store:Dispatch({
					type = ActionType.SetRoute,
					intent = Intent.Conversation,
					parameters = {
						conversationId = serverConversation.id,
					},
				})
			end))
		else
			self.appState.store:Dispatch({
				type = ActionType.SetRoute,
				intent = Intent.Conversation,
				parameters = {
					conversationId = convoId,
				}
			})
		end
	end)

	self.ConversationHubComponent.CreateGroupButtonPressed:Connect(function()
		self.appState.store:Dispatch({
			type = ActionType.SetRoute,
			intent = Intent.NewChatGroup,
			parameters = {},
		})
	end)

	return self
end

function ConversationHub:Start()
	BaseScreen.Start(self)
	self.ConversationHubComponent:Start()
	self.appState.store:Dispatch({
		type = ActionType.SetTabBarVisible,
		value = true,
	})
end

function ConversationHub:Stop()
	BaseScreen.Stop(self)
	self.ConversationHubComponent:Stop()
	self.appState.store:Dispatch({
		type = ActionType.SetTabBarVisible,
		value = false,
	})
end

function ConversationHub:Resume()
	BaseScreen.Resume(self)
	self.appState.store:Dispatch({
		type = ActionType.SetTabBarVisible,
		value = true,
	})
end

function ConversationHub:Pause()
	BaseScreen.Pause(self)
	self.appState.store:Dispatch({
		type = ActionType.SetTabBarVisible,
		value = false,
	})
end

function ConversationHub:Update(state, oldState)
	self.ConversationHubComponent:Update(state, oldState)
end

return ConversationHub