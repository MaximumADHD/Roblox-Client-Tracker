local CorePackages = game:GetService("CorePackages")

local CircularBuffer = require(script.Parent.Parent.Parent.CircularBuffer)
local Signal = require(script.Parent.Parent.Parent.Signal)
local VoiceDebugFieldMeta = require(script.Parent.VoiceDebugFieldMeta)
local VoiceDebugSource = require(script.Parent.VoiceDebugSource)

local voiceChatService = game:GetService("VoiceChatService")

local MAX_DATASET_COUNT = tonumber(settings():GetFVariable("NewDevConsoleMaxGraphCount")) or 60

export type StatsData = {
	rttMs: number?,
	incomingStreams: number?,
	outgoingStreams: number?,
	incomingJitterMs: number?,
	outgoingJitterMs: number?,
	incomingPackets: number?,
	outgoingPackets: number?,
	incomingPacketsLost: number?,
	outgoingPacketsLost: number?,
	incomingPacketsDiscarded: number?,
	outgoingPacketsDiscarded: number?,
	jitterBufferDelayMs: number?,
	jitterBufferEmittedCount: number?,
	incomingFecPackets: number?,
	incomingFecPacketsDiscarded: number?,
	totalConcealmentEvents: number?,
	incomingBytes: number?,
	outgoingBytes: number?,
	lastPublisherAudioLevelDbov: number?,
	lastSubscriberAudioLevelDbov: number?,
	incomingBitrateKbps: number?,
	outgoingBitrateKbps: number?,
	outgoingCodec: string?,
	incomingLossPercent: number?,
	[string]: any,
}

export type IceCandidateData = {
	candidate: string,
	sdpMid: string,
	sdpMLineIndex: number,
}

export type SeriesEntry = {
	max: number,
	min: number,
	dataSet: any,
}

export type SeriesMap = { [string]: SeriesEntry }

export type SubscriptionData = {
	audioSsrc: number?,
	feedReferenceId: number?,
	userId: number?,
	audioMid: string?,
	culled: boolean?,
	isMuted: boolean?,
	isMutedLocally: boolean?,
	incomingBytes: number?,
	incomingBitrateKbps: number?,
	codecName: string?,
}

export type SubscriptionsData = {
	subscriptions: { SubscriptionData }?,
}

export type RemoteOperationEntry = {
	name: string?,
	operationType: string?,
	timestampSeconds: number?,
	timestampText: string?,
}

export type RemoteOperationsData = {
	sent: { RemoteOperationEntry }?,
	received: { RemoteOperationEntry }?,
	operations: { RemoteOperationEntry }?,
	sentCaptureEnabled: boolean?,
	receivedCaptureEnabled: boolean?,
	opQueueCaptureEnabled: boolean?,
}

export type ConnectivityData = {
	iceGatheringStatePublish: string?,
	iceGatheringStateSubscribe: string?,
	iceConnectionStatePublish: string?,
	iceConnectionStateSubscribe: string?,
	signalingStatePublish: string?,
	signalingStateSubscribe: string?,
	rebootCount: number?,
	icePublishCandidates: { IceCandidateData }?,
	iceSubscribeCandidates: { IceCandidateData }?,
	sdpPublishOffer: string?,
	sdpPublishRemoteAnswer: string?,
	sdpSubscribeRemoteOffer: string?,
	sdpSubscribeAnswer: string?,
	timeToConnectedMs: number?,
	selectedCandidatePairLocalTypePublish: string?,
	selectedCandidatePairRemoteTypePublish: string?,
	selectedCandidatePairLocalProtocolPublish: string?,
	selectedCandidatePairRemoteProtocolPublish: string?,
	selectedCandidatePairLocalTypeSubscribe: string?,
	selectedCandidatePairRemoteTypeSubscribe: string?,
	selectedCandidatePairLocalProtocolSubscribe: string?,
	selectedCandidatePairRemoteProtocolSubscribe: string?,
}

local getFFlagVoiceDebugPartyVoiceToggleEnabled = require(script.Parent.GetFFlagVoiceDebugPartyVoiceToggleEnabled)
local CrossExperienceVoice = require(CorePackages.Workspace.Packages.CrossExperienceVoice)
local CrossExperienceVoiceManager = CrossExperienceVoice.CrossExperienceVoiceManager.default

local SOURCE_IN_EXPERIENCE = VoiceDebugSource.InExperience
local SOURCE_PARTY = VoiceDebugSource.Party

local PARTY_ACTIVITY_POLL_INTERVAL_SECONDS = 1
local PARTY_STATS_POLL_INTERVAL_SECONDS = 30

local getFFlagVoiceDebugConsoleV2 = require(script.Parent.GetFFlagVoiceDebugConsoleV2)

local function parseCodecFromSdp(sdp: string?): string?
	if not sdp or sdp == "" then
		return nil
	end
	local payload, codec, clockRate, channels = string.match(sdp, "a=rtpmap:(%d+) (%a+)/(%d+)/(%d+)")
	if not codec or not clockRate or not channels then
		return nil
	end
	return string.format("%s/%s/%s", codec, clockRate, channels)
end

local function computeBitrateKbps(currentBytes: number?, prevBytes: number?, dtSeconds: number?): number?
	if
		type(currentBytes) ~= "number"
		or type(prevBytes) ~= "number"
		or type(dtSeconds) ~= "number"
		or dtSeconds <= 0
	then
		return nil
	end
	if currentBytes < prevBytes then
		return nil
	end
	return (currentBytes - prevBytes) * 8 / dtSeconds / 1000
end

export type SubscriptionBytesEntry = {
	userId: number?,
	bytes: number?,
}

local function computeSubscriptionBitrates(
	subscriptions: { SubscriptionData },
	prevBySsrc: { [number]: SubscriptionBytesEntry },
	dt: number?
)
	local currentSsrcs: { [number]: boolean } = {}
	for _, subscription in subscriptions do
		local ssrc = subscription.audioSsrc
		if type(ssrc) == "number" and ssrc == ssrc and ssrc % 1 == 0 then
			currentSsrcs[ssrc] = true
			local prevEntry = prevBySsrc[ssrc]
			local isSameSubscriber = prevEntry ~= nil and prevEntry.userId == subscription.userId
			subscription.incomingBitrateKbps =
				computeBitrateKbps(subscription.incomingBytes, isSameSubscriber and prevEntry.bytes or nil, dt)
			prevBySsrc[ssrc] = { userId = subscription.userId, bytes = subscription.incomingBytes }
		end
	end
	for ssrc in prevBySsrc do
		if not currentSsrcs[ssrc] then
			prevBySsrc[ssrc] = nil
		end
	end
end

local function computeLossPercent(packets: number?, packetsLost: number?): number?
	if type(packets) ~= "number" or type(packetsLost) ~= "number" then
		return nil
	end
	local total = packets + packetsLost
	if total <= 0 then
		return nil
	end
	return packetsLost / total * 100
end

-- packets/packetsLost from lastVoiceChatStats() are cumulative session totals (same as the
-- incomingBytes/outgoingBytes computeBitrateKbps diffs above), so computeLossPercent needs a delta
-- since the previous sample, not the raw totals -- otherwise a short loss burst early in a call
-- permanently inflates the session-average loss percent for everything after it.
local function deltaSince(current: number?, prev: number?): number?
	if type(current) ~= "number" or type(prev) ~= "number" or current < prev then
		return nil
	end
	return current - prev
end

local function computeJitterBufferDelayMs(
	totalDelaySeconds: number?,
	prevDelaySeconds: number?,
	totalEmittedCount: number?,
	prevEmittedCount: number?
): number?
	if
		type(totalDelaySeconds) ~= "number"
		or type(prevDelaySeconds) ~= "number"
		or type(totalEmittedCount) ~= "number"
		or type(prevEmittedCount) ~= "number"
	then
		return nil
	end
	local deltaCount = totalEmittedCount - prevEmittedCount
	local deltaDelaySeconds = totalDelaySeconds - prevDelaySeconds
	if deltaCount <= 0 or deltaDelaySeconds < 0 then
		return nil
	end
	return deltaDelaySeconds * 1000 / deltaCount
end

local function nativeSecondsToWallClockSeconds(timestampSeconds: number, nativeNowSeconds: number, wallClockNow: number): number
	return wallClockNow + (timestampSeconds - nativeNowSeconds)
end

local function formatWallClockTime(epochSeconds: number): string
	return os.date("%H:%M:%S", epochSeconds) :: string
end

local function decorateOperationEntries(entries: { RemoteOperationEntry }, nativeNowSeconds: number, wallClockNow: number): { RemoteOperationEntry }
	local decorated = table.create(#entries)
	for i, entry in entries do
		local timestampText = if entry.timestampSeconds
			then formatWallClockTime(nativeSecondsToWallClockSeconds(entry.timestampSeconds, nativeNowSeconds, wallClockNow))
			else nil
		decorated[i] = {
			name = entry.name,
			operationType = entry.operationType,
			timestampSeconds = entry.timestampSeconds,
			timestampText = timestampText,
		}
	end
	return decorated
end

local function decorateRemoteOperationsPayload(rawRemoteOperations: any): any
	local wallClockNow = os.time()
	local nativeNowSeconds = rawRemoteOperations.nativeNowSeconds or 0
	return {
		sent = decorateOperationEntries(rawRemoteOperations.sent or {}, nativeNowSeconds, wallClockNow),
		received = decorateOperationEntries(rawRemoteOperations.received or {}, nativeNowSeconds, wallClockNow),
		operations = decorateOperationEntries(rawRemoteOperations.operations or {}, nativeNowSeconds, wallClockNow),
		sentCaptureEnabled = rawRemoteOperations.sentCaptureEnabled == true,
		receivedCaptureEnabled = rawRemoteOperations.receivedCaptureEnabled == true,
		opQueueCaptureEnabled = rawRemoteOperations.opQueueCaptureEnabled == true,
	}
end

local VoiceDebugData = {}
VoiceDebugData.__index = VoiceDebugData

function VoiceDebugData.new()
	local self = {}
	setmetatable(self, VoiceDebugData)

	self._statsUpdated = Signal.new() :: any
	self._statsData = {} :: StatsData
	self._series = {} :: SeriesMap
	self._connectivityData = {} :: ConnectivityData
	self._subscriptionsData = {} :: SubscriptionsData
	self._remoteOperationsData = {} :: RemoteOperationsData
	self._prevSubscriptionBytesBySsrc = {} :: { [number]: SubscriptionBytesEntry }
	self._isRunning = false

	self._source = SOURCE_IN_EXPERIENCE
	self._partyStatsData = {} :: StatsData
	self._partySeries = {} :: SeriesMap
	self._partyConnectivityData = {} :: ConnectivityData
	self._partyRemoteOperationsData = {} :: RemoteOperationsData
	self._isPartyActive = false
	self._partyPollTask = nil :: thread?
	self._partyPollGeneration = 0 :: number
	self._prevPartyJitterBufferDelaySeconds = nil :: number?
	self._prevPartyJitterBufferEmittedCount = nil :: number?
	self._prevPartyIncomingBytes = nil :: number?
	self._prevPartyOutgoingBytes = nil :: number?

	-- Remaining prev-sample fields (in-experience bitrate/loss/jitter-buffer derivation in
	-- :start()) are otherwise only ever first assigned outside .new() -- declared here with
	-- their real optional types so both :stop()'s `= nil` resets and external callers (e.g.
	-- VoiceDebugData.spec.lua) see a stable shape, not one inferred solely from whichever of
	-- those call sites happens to run first.
	self._prevBytesClock = nil :: number?
	self._prevIncomingBytes = nil :: number?
	self._prevOutgoingBytes = nil :: number?
	self._prevIncomingPackets = nil :: number?
	self._prevIncomingPacketsLost = nil :: number?
	self._prevJitterBufferDelaySeconds = nil :: number?
	self._prevJitterBufferEmittedCount = nil :: number?

	return self
end

function VoiceDebugData:Signal()
	return self._statsUpdated
end

function VoiceDebugData:getCurrentData(): StatsData
	if self._source == SOURCE_PARTY then
		return self._partyStatsData
	end
	return self._statsData
end

function VoiceDebugData:getSeries(): SeriesMap
	if self._source == SOURCE_PARTY then
		return self._partySeries
	end
	return self._series
end

-- Returns a deep copy of the series map: entries reference the live CircularBuffer, which
-- keeps mutating in place on every stats update, so callers that need a point-in-time snapshot
-- (e.g. the Freeze control) must clone the buffers, not just the wrapper table.
function VoiceDebugData:getSeriesSnapshot(): SeriesMap
	local snapshot: SeriesMap = {}
	for key, entry in self:getSeries() do
		snapshot[key] = {
			max = entry.max,
			min = entry.min,
			dataSet = entry.dataSet:clone(),
		}
	end
	return snapshot
end

function VoiceDebugData:isRunning()
	return self._isRunning
end

function VoiceDebugData:getConnectivity(): ConnectivityData
	if self._source == SOURCE_PARTY then
		return self._partyConnectivityData
	end
	return self._connectivityData
end

function VoiceDebugData:getSource(): string
	return self._source
end

function VoiceDebugData:isPartyVoiceActive(): boolean
	return self._isPartyActive
end

function VoiceDebugData:setSource(source: string)
	if self._source == source then
		return
	end
	self._source = source
	self._statsUpdated:Fire(self:getCurrentData())
end

function VoiceDebugData:getSubscriptions(): { SubscriptionData }
	return self._subscriptionsData.subscriptions or {}
end

function VoiceDebugData:getRemoteOperations(): RemoteOperationsData
	if self._source == SOURCE_PARTY then
		return self._partyRemoteOperationsData
	end
	return self._remoteOperationsData
end

function VoiceDebugData:_updateSeriesValueInto(seriesTable: { [string]: any }, key: string, value: number, time: number)
	if not seriesTable[key] then
		local newBuffer = CircularBuffer.new(MAX_DATASET_COUNT)
		newBuffer:push_back({
			value = value,
			time = time,
		})
		seriesTable[key] = {
			max = value,
			min = value,
			dataSet = newBuffer,
		}
		return
	end

	local dataEntry = seriesTable[key]
	local currMax = dataEntry.max
	local currMin = dataEntry.min

	local update = {
		value = value,
		time = time,
	}

	local overwrittenEntry = dataEntry.dataSet:push_back(update)

	if overwrittenEntry and (currMax == overwrittenEntry.value or currMin == overwrittenEntry.value) then
		-- The evicted entry held one (or, for a flat series, both) of the cached bounds -- rescan the
		-- remaining buffer for both bounds together from a single iterator pass. Recomputing them from
		-- two separate passes over one shared iterator is a bug: the first pass exhausts it, so the
		-- second silently sees no data and falls back to whatever the first pass just computed.
		local iter = dataEntry.dataSet:iterator()
		local dat = iter:next()
		local newMax = dat and dat.value
		local newMin = dat and dat.value
		while dat do
			newMax = dat.value < newMax and newMax or dat.value
			newMin = newMin < dat.value and newMin or dat.value
			dat = iter:next()
		end
		if currMax == overwrittenEntry.value then
			currMax = newMax
		end
		if currMin == overwrittenEntry.value then
			currMin = newMin
		end
	end

	dataEntry.max = currMax < value and value or currMax
	dataEntry.min = currMin < value and currMin or value
end

function VoiceDebugData:_updateSeriesValue(key: string, value: number, time: number)
	self:_updateSeriesValueInto(self._series, key, value, time)
end

function VoiceDebugData:start()
	if voiceChatService and not self._statsListenerConnection then
		self._statsListenerConnection = (voiceChatService :: any).VoiceChatStatsCollected:Connect(function()
			self._statsData = (voiceChatService :: any):lastVoiceChatStats()
			-- Already redacted natively (see lastVoiceChatConnectivity()'s implementation) before it
			-- ever reaches Lua -- no client-side redaction needed here.
			self._connectivityData = (voiceChatService :: any):lastVoiceChatConnectivity()
			self._subscriptionsData = (voiceChatService :: any):lastVoiceChatSubscriptions() or {}
			local rawRemoteOperations = (voiceChatService :: any):lastVoiceChatRemoteOperations() or {}

			local time = os.time()

			if getFFlagVoiceDebugConsoleV2() then
				if rawRemoteOperations.nativeNowSeconds then
					self._remoteOperationsData = decorateRemoteOperationsPayload(rawRemoteOperations)
				else
					self._remoteOperationsData = {} :: any
				end
				local clockNow = os.clock()
				local dt = self._prevBytesClock and (clockNow - self._prevBytesClock) or nil
				self._statsData.incomingBitrateKbps =
					computeBitrateKbps(self._statsData.incomingBytes, self._prevIncomingBytes, dt)
				self._statsData.outgoingBitrateKbps =
					computeBitrateKbps(self._statsData.outgoingBytes, self._prevOutgoingBytes, dt)
				self._prevIncomingBytes = self._statsData.incomingBytes
				self._prevOutgoingBytes = self._statsData.outgoingBytes
				self._prevBytesClock = clockNow

				self._statsData.outgoingCodec = parseCodecFromSdp(self._connectivityData.sdpPublishOffer)

				self._statsData.incomingLossPercent = computeLossPercent(
					deltaSince(self._statsData.incomingPackets, self._prevIncomingPackets),
					deltaSince(self._statsData.incomingPacketsLost, self._prevIncomingPacketsLost)
				)
				self._prevIncomingPackets = self._statsData.incomingPackets
				self._prevIncomingPacketsLost = self._statsData.incomingPacketsLost

				local rawDelaySeconds = self._statsData.jitterBufferDelayMs
				local rawEmittedCount = self._statsData.jitterBufferEmittedCount
				self._statsData.jitterBufferDelayMs = computeJitterBufferDelayMs(
					rawDelaySeconds,
					self._prevJitterBufferDelaySeconds,
					rawEmittedCount,
					self._prevJitterBufferEmittedCount
				)
				self._prevJitterBufferDelaySeconds = rawDelaySeconds
				self._prevJitterBufferEmittedCount = rawEmittedCount

				computeSubscriptionBitrates(self._subscriptionsData.subscriptions or {}, self._prevSubscriptionBytesBySsrc, dt)
			end

			for key, value in self._statsData do
				local meta = VoiceDebugFieldMeta[key]
				if meta and meta.plottable and type(value) == "number" then
					self:_updateSeriesValue(key, value, time)
				end
			end

			if self._source == SOURCE_IN_EXPERIENCE then
				self._statsUpdated:Fire(self._statsData)
			end
		end)
		self._isRunning = true

		if getFFlagVoiceDebugPartyVoiceToggleEnabled() then
			self:_startPartyPipeline()
		end
	end
end

function VoiceDebugData:_correctPartyJitterBufferDelay()
	local rawDelaySeconds = self._partyStatsData.jitterBufferDelayMs
	local rawEmittedCount = self._partyStatsData.jitterBufferEmittedCount
	self._partyStatsData.jitterBufferDelayMs = computeJitterBufferDelayMs(
		rawDelaySeconds,
		self._prevPartyJitterBufferDelaySeconds,
		rawEmittedCount,
		self._prevPartyJitterBufferEmittedCount
	)
	self._prevPartyJitterBufferDelaySeconds = rawDelaySeconds
	self._prevPartyJitterBufferEmittedCount = rawEmittedCount
end

function VoiceDebugData:_correctPartyAggregateStats(dt: number?)
	if not getFFlagVoiceDebugConsoleV2() then
		return
	end

	self._partyStatsData.incomingBitrateKbps =
		computeBitrateKbps(self._partyStatsData.incomingBytes, self._prevPartyIncomingBytes, dt)
	self._partyStatsData.outgoingBitrateKbps =
		computeBitrateKbps(self._partyStatsData.outgoingBytes, self._prevPartyOutgoingBytes, dt)
	self._prevPartyIncomingBytes = self._partyStatsData.incomingBytes
	self._prevPartyOutgoingBytes = self._partyStatsData.outgoingBytes

	self._partyStatsData.outgoingCodec = parseCodecFromSdp(self._partyConnectivityData.sdpPublishOffer)

	self._partyStatsData.incomingLossPercent = computeLossPercent(
		deltaSince(self._partyStatsData.incomingPackets, self._prevPartyIncomingPackets),
		deltaSince(self._partyStatsData.incomingPacketsLost, self._prevPartyIncomingPacketsLost)
	)
	self._prevPartyIncomingPackets = self._partyStatsData.incomingPackets
	self._prevPartyIncomingPacketsLost = self._partyStatsData.incomingPacketsLost
end

function VoiceDebugData:_startPartyPipeline()
	if self._partyPollTask then
		return
	end

	-- A generation token (rather than just checking self._isRunning) lets a coroutine that was
	-- suspended in an :await() when stop() ran distinguish "the run I belong to" from "whatever
	-- run happens to be active when I wake up" -- a subsequent stop()/start() pair flips
	-- _isRunning back to true before this coroutine gets a chance to observe it went false.
	self._partyPollGeneration = (self._partyPollGeneration :: number) + 1
	local generation = self._partyPollGeneration :: number

	self._partyPollTask = task.spawn(function()
		local lastStatsPollClock = nil
		while self._isRunning and generation == self._partyPollGeneration do
			local pollSuccess, isActive = false, false
			if game:GetEngineFeature("CEVGetBackgroundState") then
				pollSuccess, isActive = CrossExperienceVoiceManager:getIsBackgroundDMActive():await()
			end
			if not self._isRunning or generation ~= self._partyPollGeneration then
				break
			end
			self._isPartyActive = pollSuccess and isActive == true

			local now = os.clock()
			local shouldFetchStats = self._isPartyActive
				and (not lastStatsPollClock or (now - lastStatsPollClock) >= PARTY_STATS_POLL_INTERVAL_SECONDS)

			if shouldFetchStats then
				local fetchSuccess, reply = CrossExperienceVoiceManager:getPartyVoiceDebugStats():await()
				if not self._isRunning or generation ~= self._partyPollGeneration then
					break
				end
				if fetchSuccess and reply then
					local sampleClock = os.clock()
					local dt = lastStatsPollClock and (sampleClock - lastStatsPollClock) or nil
					lastStatsPollClock = sampleClock
					self._partyStatsData = reply.stats or {}
					self._partyConnectivityData = reply.connectivity or {}
					local rawRemoteOperations = reply.remoteOperations or {}
					self._partyRemoteOperationsData = rawRemoteOperations.nativeNowSeconds
						and decorateRemoteOperationsPayload(rawRemoteOperations)
						or {}
					self:_correctPartyJitterBufferDelay()
					self:_correctPartyAggregateStats(dt)

					local time = os.time()
					for key, value in self._partyStatsData do
						local meta = VoiceDebugFieldMeta[key]
						if meta and meta.plottable and type(value) == "number" then
							self:_updateSeriesValueInto(self._partySeries, key, value, time)
						end
					end

					if self._source == SOURCE_PARTY then
						self._statsUpdated:Fire(self._partyStatsData)
					end
				end
			end

			task.wait(PARTY_ACTIVITY_POLL_INTERVAL_SECONDS)
		end
	end)
end

function VoiceDebugData:stop()
	self._isRunning = false
	if self._statsListenerConnection then
		self._statsListenerConnection:Disconnect()
		self._statsListenerConnection = nil :: any
	end
	self._partyPollTask = nil
	self._partyPollGeneration = (self._partyPollGeneration :: number) + 1

	-- Clear so the first sample after a resume is treated as having no previous sample (nil
	-- deltas), rather than being averaged/diffed over the paused interval.
	self._prevBytesClock = nil
	self._prevIncomingBytes = nil
	self._prevOutgoingBytes = nil
	self._prevIncomingPackets = nil
	self._prevIncomingPacketsLost = nil
	self._prevJitterBufferDelaySeconds = nil
	self._prevJitterBufferEmittedCount = nil
	self._prevSubscriptionBytesBySsrc = {}

	self._prevPartyIncomingBytes = nil
	self._prevPartyOutgoingBytes = nil
	self._prevPartyIncomingPackets = nil
	self._prevPartyIncomingPacketsLost = nil
	self._prevPartyJitterBufferDelaySeconds = nil
	self._prevPartyJitterBufferEmittedCount = nil
end

VoiceDebugData._parseCodecFromSdp = parseCodecFromSdp
VoiceDebugData._computeBitrateKbps = computeBitrateKbps
VoiceDebugData._computeLossPercent = computeLossPercent
VoiceDebugData._deltaSince = deltaSince
VoiceDebugData._computeJitterBufferDelayMs = computeJitterBufferDelayMs
VoiceDebugData._computeSubscriptionBitrates = computeSubscriptionBitrates
VoiceDebugData._nativeSecondsToWallClockSeconds = nativeSecondsToWallClockSeconds
VoiceDebugData._formatWallClockTime = formatWallClockTime
VoiceDebugData._decorateOperationEntries = decorateOperationEntries
VoiceDebugData._decorateRemoteOperationsPayload = decorateRemoteOperationsPayload

return VoiceDebugData
