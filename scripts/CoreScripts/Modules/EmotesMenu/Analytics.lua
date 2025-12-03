local Players = game:GetService("Players")
local Stats = game:GetService("Stats")

local EmotesAnalytics = {}
EmotesAnalytics.__index = EmotesAnalytics

EmotesAnalytics.EventName = {
	MenuOpened = "emoteMenuOpened",
	EmotePlayed = "emoteTriggered",
	EmoteFailed = "emoteTriggerFailed",
}

function EmotesAnalytics.new()
	local self = {
		eventStreamImpl = nil,
	}
	setmetatable(self, EmotesAnalytics)

	return self
end

function EmotesAnalytics:withEventStream(eventStreamImpl)
	self.eventStreamImpl = eventStreamImpl
	return self
end

function EmotesAnalytics:onMenuOpened()
	local eventContext = "emoteMenu"
	local eventName = self.EventName.MenuOpened

	local additionalArgs = {
		pid = tostring(game.PlaceId),
		uid = tostring((Players.LocalPlayer :: Player).UserId),
		btid = Stats:GetBrowserTrackerId(),
	}

	self:_getEventStream():setRBXEventStream(eventContext, eventName, additionalArgs)
end

function EmotesAnalytics:onEmotePlayed(slotNumber, assetId)
	local eventContext = "emoteMenu"
	local eventName = self.EventName.EmotePlayed

	local additionalArgs = {
		pid = tostring(game.PlaceId),
		uid = tostring((Players.LocalPlayer :: Player).UserId),
		btid = Stats:GetBrowserTrackerId(),
		slotNumber = slotNumber,
		assetID = assetId,
	}

	self:_getEventStream():setRBXEventStream(eventContext, eventName, additionalArgs)
end

function EmotesAnalytics:onEmoteFailed(slotNumber, assetId, errorType)
	local eventContext = "emoteMenu"
	local eventName = self.EventName.EmoteFailed

	local additionalArgs = {
		pid = tostring(game.PlaceId),
		uid = tostring((Players.LocalPlayer :: Player).UserId),
		btid = Stats:GetBrowserTrackerId(),
		slotNumber = slotNumber,
		assetID = assetId,
		errorType = errorType,
		invokedByCoreGui = true,
	}

	self:_getEventStream():setRBXEventStream(eventContext, eventName, additionalArgs)
end

function EmotesAnalytics:_getEventStream()
	assert(self.eventStreamImpl, "EventStream implementation not found. Did you forget to construct withEventStream?")
	return self.eventStreamImpl
end

return EmotesAnalytics
