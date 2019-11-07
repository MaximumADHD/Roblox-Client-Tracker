local InviteToGameAnalytics = {}
InviteToGameAnalytics.__index = InviteToGameAnalytics

InviteToGameAnalytics.ButtonName = {
	SettingsHub = "settingsHub",
	ModalPrompt = "modalPrompt",
}

InviteToGameAnalytics.EventName = {
	InviteSent = "inputShareGameInviteSent",
	EntryPoint = "inputShareGameEntryPoint",
}

InviteToGameAnalytics.DiagCounters = {
	EntryPoint = {
		[InviteToGameAnalytics.ButtonName.SettingsHub] = settings():GetFVariable("LuaShareGameSettingsHubEntryCounter"),
		[InviteToGameAnalytics.ButtonName.ModalPrompt] = settings():GetFVariable("LuaShareGameModalPromptEntryCounter"),
	},

	InviteSent = {
		[InviteToGameAnalytics.ButtonName.SettingsHub] = settings():GetFVariable("LuaShareGameSettingsHubInviteCounter"),
		[InviteToGameAnalytics.ButtonName.ModalPrompt] = settings():GetFVariable("LuaShareGameModalPromptInviteCounter"),
	},
}

function InviteToGameAnalytics.new()
	local self = {
		_eventStreamImpl = nil,
		_diagImpl = nil,
		_buttonName = nil,
	}
	setmetatable(self, InviteToGameAnalytics)

	return self
end

function InviteToGameAnalytics:withEventStream(eventStreamImpl)
	self._eventStreamImpl = eventStreamImpl
	return self
end

function InviteToGameAnalytics:withDiag(diagImpl)
	self._diagImpl = diagImpl
	return self
end

function InviteToGameAnalytics:withButtonName(buttonName)
	self._buttonName = buttonName
	return self
end

function InviteToGameAnalytics:onActivatedInviteSent(senderId, conversationId, participants)
	local buttonName = self:_getButtonName()
	local eventContext = "inGame"
	local eventName = InviteToGameAnalytics.EventName.InviteSent
	local participantsString = table.concat(participants, ",")
	local additionalArgs = {
		btn = buttonName,
		placeId = tostring(game.PlaceId),
		gameId = tostring(game.GameId),
		senderId = senderId,
		conversationId = tostring(conversationId),
		participants = participantsString,
	}
	self:_getEventStream():setRBXEventStream(eventContext, eventName, additionalArgs)

	local counterName = InviteToGameAnalytics.DiagCounters.InviteSent[self:_getButtonName()]
	if counterName then
		self:_getDiag():reportCounter(counterName, 1)
	end
end

function InviteToGameAnalytics:inputShareGameEntryPoint()
	local buttonName = self:_getButtonName()
	local eventContext = "inGame"
	local eventName = InviteToGameAnalytics.EventName.EntryPoint
	local additionalArgs = {
		btn = buttonName,
		placeId = tostring(game.PlaceId),
		gameId = tostring(game.GameId),
	}
	self:_getEventStream():setRBXEventStream(eventContext, eventName, additionalArgs)

	local counterName = InviteToGameAnalytics.DiagCounters.EntryPoint[self:_getButtonName()]
	if counterName then
		self:_getDiag():reportCounter(counterName, 1)
	end
end

function InviteToGameAnalytics:_getEventStream()
	assert(self._eventStreamImpl, "EventStream implementation not found. Did you forget to construct withEventStream?")
	return self._eventStreamImpl
end

function InviteToGameAnalytics:_getDiag()
	assert(self._diagImpl, "Diag implementation not found. Did you forget to construct withDiag?")
	return self._diagImpl
end

function InviteToGameAnalytics:_getButtonName()
	assert(self._buttonName, "ButtonName not found. Did you forget to construct withButtonName?")
	return self._buttonName
end

return InviteToGameAnalytics
