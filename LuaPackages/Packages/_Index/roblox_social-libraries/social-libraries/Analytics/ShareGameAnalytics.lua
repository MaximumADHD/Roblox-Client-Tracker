local ShareGameAnalytics = {}
ShareGameAnalytics.__index = ShareGameAnalytics

ShareGameAnalytics.ButtonName = {
	LuaChatInputBar = "luaChatInputBar",
	LuaGameDetails = "luaGameDetails",
}

ShareGameAnalytics.EventName = {
	InviteSent = "inputShareGameInviteSent",
	EntryPoint = "inputShareGameEntryPoint",
}

ShareGameAnalytics.DiagCounters = {
	EntryPoint = {
		[ShareGameAnalytics.ButtonName.LuaChatInputBar] = game:DefineFastString(
			"LuaShareGameLuaChatInputBarEntryCounter",
			"LuaShareGameLuaChatInputBarEntryCounter"
		),
		[ShareGameAnalytics.ButtonName.LuaGameDetails] = game:DefineFastString(
			"LuaShareGameLuaGameDetailsEntryCounter",
			"LuaShareGameLuaGameDetailsEntryCounter"
		),
	},

	InviteSent = {
		[ShareGameAnalytics.ButtonName.LuaChatInputBar] = game:DefineFastString(
			"LuaShareGameLuaChatInputBarInviteCounter",
			"LuaShareGameLuaChatInputBarInviteCounter"
		),
		[ShareGameAnalytics.ButtonName.LuaGameDetails] = game:DefineFastString(
			"LuaShareGameLuaGameDetailsInviteCounter",
			"LuaShareGameLuaGameDetailsInviteCounter"
		),
	},
}

function ShareGameAnalytics.new(eventStream, diagImpl, buttonName)
	assert(eventStream, "EventStream implementation not found.")
	assert(diagImpl, "Diag implementation not found.")
	assert(buttonName, "ButtonName not found.")

	return setmetatable({
		_eventStreamImpl = eventStream,
		_diagImpl = diagImpl,
		_buttonName = buttonName,
	}, ShareGameAnalytics)
end

function ShareGameAnalytics:onActivatedInviteSent(placeId, gameId, senderId, conversationId, participants)
	local buttonName = self:_getButtonName()
	local eventContext = "touch"
	local eventName = ShareGameAnalytics.EventName.InviteSent
	local participantsString = table.concat(participants, ",")
	local additionalArgs = {
		btn = buttonName,
		placeId = tostring(placeId),
		gameId = tostring(gameId),
		senderId = senderId,
		conversationId = tostring(conversationId),
		participants = participantsString,
	}
	self:_getEventStream():setRBXEventStream(eventContext, eventName, additionalArgs)

	local counterName = ShareGameAnalytics.DiagCounters.InviteSent[self:_getButtonName()]
	if counterName then
		self:_getDiag():reportCounter(counterName, 1)
	end
end

function ShareGameAnalytics:inputShareGameEntryPoint(placeId, gameId)
	local buttonName = self:_getButtonName()
	local eventContext = "touch"
	local eventName = ShareGameAnalytics.EventName.EntryPoint
	local additionalArgs = {
		btn = buttonName,
		placeId = placeId and tostring(placeId),
		gameId = gameId and tostring(gameId),
	}

	self:_getEventStream():setRBXEventStream(eventContext, eventName, additionalArgs)

	local counterName = ShareGameAnalytics.DiagCounters.EntryPoint[self:_getButtonName()]
	if counterName then
		self:_getDiag():reportCounter(counterName, 1)
	end
end

function ShareGameAnalytics:_getEventStream()
	return self._eventStreamImpl
end

function ShareGameAnalytics:_getDiag()
	return self._diagImpl
end

function ShareGameAnalytics:_getButtonName()
	return self._buttonName
end

return ShareGameAnalytics
