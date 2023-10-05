local Constants = require(script.Parent.Parent.Resources.Constants)

local VoiceAnalytics = {}
VoiceAnalytics.__index = VoiceAnalytics

function VoiceAnalytics.new(eventStreamImpl, eventContext)
	local self = {
		_eventStreamImpl = eventStreamImpl,
		_target = "EventIngest",
		_context = eventContext or "SettingsHub",
	}

	setmetatable(self, VoiceAnalytics)
	return self
end

function VoiceAnalytics:onToggleMuteAll(isMuteAll)
	if isMuteAll then
		self:onMuteAll()
	else
		self:onUnmuteAll()
	end
end

function VoiceAnalytics:onToggleMuteSelf(isMuted)
	if isMuted then
		self:onMuteSelf()
	else
		self:onUnmuteSelf()
	end
end

function VoiceAnalytics:onToggleMutePlayer(userId, isMuted)
	if isMuted then
		self:onMutePlayer(userId)
	else
		self:onUnmutePlayer(userId)
	end
end

function VoiceAnalytics:onMuteSelf()
	local eventName = Constants.VoiceAnalytics.MuteSelf
	self._eventStreamImpl:setRBXEventStream(self._target, self._context, eventName, {})
end

function VoiceAnalytics:onUnmuteSelf()
	local eventName = Constants.VoiceAnalytics.UnmuteSelf
	self._eventStreamImpl:setRBXEventStream(self._target, self._context, eventName, {})
end

function VoiceAnalytics:onMuteAll()
	local eventName = Constants.VoiceAnalytics.MuteAll
	self._eventStreamImpl:setRBXEventStream(self._target, self._context, eventName, {})
end

function VoiceAnalytics:onUnmuteAll()
	local eventName = Constants.VoiceAnalytics.UnmuteAll
	self._eventStreamImpl:setRBXEventStream(self._target, self._context, eventName, {})
end

function VoiceAnalytics:onMutePlayer(userId)
	local eventName = Constants.VoiceAnalytics.MutePlayer
	self._eventStreamImpl:setRBXEventStream(self._target, self._context, eventName, {
		mutedUserId = userId,
	})
end

function VoiceAnalytics:onUnmutePlayer(userId)
	local eventName = Constants.VoiceAnalytics.UnmutePlayer
	self._eventStreamImpl:setRBXEventStream(self._target, self._context, eventName, {
		mutedUserId = userId,
	})
end

return VoiceAnalytics
