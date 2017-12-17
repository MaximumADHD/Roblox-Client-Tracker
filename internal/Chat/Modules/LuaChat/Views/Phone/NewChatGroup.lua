local Modules = script.Parent.Parent.Parent
local Components = Modules.Components

local ActionType = require(Modules.ActionType)
local DialogInfo = require(Modules.DialogInfo)

local BaseScreen = require(Modules.Views.Phone.BaseScreen)

local NewChatGroupComponent = require(Components.NewChatGroup)

local Intent = DialogInfo.Intent

local NewChatGroup = BaseScreen:Template()
NewChatGroup.__index = NewChatGroup

function NewChatGroup.new(appState, route)
	local self = {
		appState = appState,
		route = route,
		connections = {};
	}
	setmetatable(self, NewChatGroup)

	self.newChatGroupComponent = NewChatGroupComponent.new(appState)
	self.rbx = self.newChatGroupComponent.rbx

	local backButtonPressedConnection = self.newChatGroupComponent.BackButtonPressed:Connect(function()
		self.appState.store:Dispatch({
			type = ActionType.PopRoute,
		})
	end)
	table.insert(self.connections, backButtonPressedConnection)

	local conversationSavedConnection = self.newChatGroupComponent.ConversationSaved:Connect(function(id)
		self.appState.store:Dispatch({
			type = ActionType.SetRoute,
			intent = Intent.Conversation,
			popToIntent = Intent.ConversationHub,
			parameters = {
				conversationId = id,
			},
		})
	end)
	table.insert(self.connections, conversationSavedConnection)

	return self
end

function NewChatGroup:Start()
	BaseScreen.Start(self)
	do
		local connection = self.appState.store.Changed:Connect(function(current, previous)
			self:Update(current, previous)
		end)
		table.insert(self.connections, connection)
	end
end

function NewChatGroup:Stop()
	for _, connection in ipairs(self.connections) do
		connection:Disconnect()
	end
	self.connections = {}

	BaseScreen.Stop(self)
end

function NewChatGroup:Destruct()
	self.newChatGroupComponent:Destruct()
	self.newChatGroupComponent = nil

	BaseScreen.Destruct(self)
end

function NewChatGroup:Update(current, previous)
	self.newChatGroupComponent:Update(current, previous)
end

return NewChatGroup