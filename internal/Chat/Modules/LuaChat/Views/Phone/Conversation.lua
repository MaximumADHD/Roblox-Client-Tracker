local LuaChat = script.Parent.Parent.Parent
local BaseScreen = require(script.Parent.BaseScreen)

local Components = LuaChat.Components
local ConversationComponent = require(Components.Conversation)

local ActionType = require(LuaChat.ActionType)
local DialogInfo = require(LuaChat.DialogInfo)

local Intent = DialogInfo.Intent

local ConversationView = BaseScreen:Template()

ConversationView.__index = ConversationView
ConversationView.viewCache = {}

function ConversationView:Get(appState, route)
	if self.viewCache[route.parameters.conversationId] then
		return self.viewCache[route.parameters.conversationId]
	end

	local view = self.new(appState, route)
	self.viewCache[route.parameters.conversationId] = view

	return view
end

function ConversationView.new(appState, route)
	local self = {}
	self.route = route
	self.conversationId = route.parameters.conversationId
	self.appState = appState
	self.connections = {}

	setmetatable(self, ConversationView)

	self.conversationComponent = ConversationComponent.new(appState, self.conversationId)
	self.rbx = self.conversationComponent.rbx

	return self
end

function ConversationView:Start()
	BaseScreen.Start(self)

	local backButtonConnection = self.conversationComponent.BackButtonPressed:Connect(function()
		self.appState.store:Dispatch({
			type = ActionType.PopRoute,
		})
	end)
	table.insert(self.connections, backButtonConnection)

	local groupDetailConnection = self.conversationComponent.GroupDetailsButtonPressed:Connect(function()
		self.appState.store:Dispatch({
			type = ActionType.SetRoute,
			intent = Intent.GroupDetail,
			parameters = {
				conversationId = self.conversationId,
			},
		})
	end)
	table.insert(self.connections, groupDetailConnection)

	do
		local connection = self.appState.store.Changed:Connect(function(state, oldState)
			local conversation = state.Conversations[self.conversationId]

			if not conversation then
				if self.appState.screenManager:GetCurrentView() == self then
					self.appState.store:Dispatch({
						type = ActionType.SetRoute,
						intent = nil,
						popToIntent = Intent.ConversationHub,
						parameters = {},
					})
				end
				self:Stop()
				self.viewCache[self.conversationId] = nil
				return
			end
			self.conversationComponent:Update(state, oldState)
		end)
		table.insert(self.connections, connection)
	end

	self.conversationComponent:Start()
end

function ConversationView:Stop()
	BaseScreen.Stop(self)
	self.conversationComponent:Stop()
	for _, connection in ipairs(self.connections) do
		connection:Disconnect()
	end

	self.connections = {}
end

function ConversationView:Pause()
	BaseScreen.Pause(self)
	self.conversationComponent:Pause()
end

function ConversationView:Resume()
	BaseScreen.Resume(self)
	self.conversationComponent:Resume()
end



return ConversationView
