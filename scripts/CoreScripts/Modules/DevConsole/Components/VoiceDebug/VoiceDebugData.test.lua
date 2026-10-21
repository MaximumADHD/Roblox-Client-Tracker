local CorePackages = game:GetService("CorePackages")
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect

local VoiceDebugData = require(script.Parent.VoiceDebugData)

it("should create a series entry with min/max seeded from the first value", function()
	local data = VoiceDebugData.new()
	data:_updateSeriesValue("rttMs", 22, 1)

	local series = data:getSeries().rttMs
	expect(series).toBeDefined()
	expect(series.min).toBe(22)
	expect(series.max).toBe(22)
	expect(series.dataSet:back().value).toBe(22)
end)

it("should track running min/max across pushes without overwriting the buffer", function()
	local data = VoiceDebugData.new()
	data:_updateSeriesValue("rttMs", 22, 1)
	data:_updateSeriesValue("rttMs", 5, 2)
	data:_updateSeriesValue("rttMs", 40, 3)

	local series = data:getSeries().rttMs
	expect(series.min).toBe(5)
	expect(series.max).toBe(40)
	expect(series.dataSet:back().value).toBe(40)
	expect(series.dataSet:front().value).toBe(22)
end)

it("should recompute min/max after the buffer wraps and overwrites the bound value", function()
	local data = VoiceDebugData.new()
	data:_updateSeriesValue("rttMs", 5, 1)
	local maxCount = data:getSeries().rttMs.dataSet:getMaxSize()
	for i = 1, maxCount do
		data:_updateSeriesValue("rttMs", 10 + i, i + 1)
	end

	local series = data:getSeries().rttMs
	expect(series.min).never.toBe(5)
	expect(series.dataSet:front().value).never.toBe(5)
end)

it("should recompute both min and max when the evicted value equals both bounds (flat series)", function()
	local data = VoiceDebugData.new()
	data:_updateSeriesValue("rttMs", 5, 1)
	local maxCount = data:getSeries().rttMs.dataSet:getMaxSize()
	-- Fill the whole buffer with the same value so the evicted entry, on the next push, equals
	-- both the cached min and max simultaneously.
	for i = 2, maxCount do
		data:_updateSeriesValue("rttMs", 5, i)
	end
	data:_updateSeriesValue("rttMs", 10, maxCount + 1)

	local series = data:getSeries().rttMs
	expect(series.max).toBe(10)
	expect(series.min).toBe(5)
end)

it("should keep separate series per field", function()
	local data = VoiceDebugData.new()
	data:_updateSeriesValue("rttMs", 22, 1)
	data:_updateSeriesValue("incomingJitterMs", 3, 1)

	local series = data:getSeries()
	expect(series.rttMs.dataSet:back().value).toBe(22)
	expect(series.incomingJitterMs.dataSet:back().value).toBe(3)
end)

describe("_computeBitrateKbps", function()
	it("should return nil when there is no previous sample", function()
		expect(VoiceDebugData._computeBitrateKbps(1000, nil, nil)).toBe(nil)
	end)

	it("should return nil when elapsed time is zero or negative", function()
		expect(VoiceDebugData._computeBitrateKbps(1000, 500, 0)).toBe(nil)
		expect(VoiceDebugData._computeBitrateKbps(1000, 500, -1)).toBe(nil)
	end)

	it("should compute kbps from a byte delta over elapsed seconds", function()
		expect(VoiceDebugData._computeBitrateKbps(2000, 1000, 1)).toBe(8)
	end)

	it("should handle a zero delta as zero bitrate, not nil", function()
		expect(VoiceDebugData._computeBitrateKbps(1000, 1000, 1)).toBe(0)
	end)

	it("should return nil (not a negative rate) when the byte total drops between samples", function()
		expect(VoiceDebugData._computeBitrateKbps(500, 1000, 1)).toBe(nil)
	end)
end)

describe("_parseCodecFromSdp", function()
	it("should return nil for a nil or empty SDP", function()
		expect(VoiceDebugData._parseCodecFromSdp(nil)).toBe(nil)
		expect(VoiceDebugData._parseCodecFromSdp("")).toBe(nil)
	end)

	it("should return nil when the SDP has no rtpmap line", function()
		expect(VoiceDebugData._parseCodecFromSdp("v=0\r\ns=-\r\n")).toBe(nil)
	end)

	it("should parse codec/clockRate/channels from a real rtpmap line", function()
		local sdp = "v=0\r\nm=audio 9 UDP/TLS/RTP/SAVPF 111\r\na=rtpmap:111 opus/48000/2\r\na=sendonly\r\n"
		expect(VoiceDebugData._parseCodecFromSdp(sdp)).toBe("opus/48000/2")
	end)
end)

describe("_computeLossPercent", function()
	it("should return nil when either input is missing", function()
		expect(VoiceDebugData._computeLossPercent(nil, 5)).toBe(nil)
		expect(VoiceDebugData._computeLossPercent(95, nil)).toBe(nil)
	end)

	it("should return nil when no packets have been attempted yet", function()
		expect(VoiceDebugData._computeLossPercent(0, 0)).toBe(nil)
	end)

	it("should compute percent lost out of packets received plus lost", function()
		expect(VoiceDebugData._computeLossPercent(95, 5)).toBe(5)
	end)

	it("should handle zero loss as zero percent, not nil", function()
		expect(VoiceDebugData._computeLossPercent(100, 0)).toBe(0)
	end)
end)

describe("_deltaSince", function()
	it("should return nil when either input is missing", function()
		expect(VoiceDebugData._deltaSince(nil, 5)).toBe(nil)
		expect(VoiceDebugData._deltaSince(95, nil)).toBe(nil)
	end)

	it("should return nil when the counter went backwards (e.g. reconnect reset it)", function()
		expect(VoiceDebugData._deltaSince(50, 100)).toBe(nil)
	end)

	it("should compute the delta between two cumulative samples", function()
		expect(VoiceDebugData._deltaSince(150, 100)).toBe(50)
	end)

	it("should handle no change as a zero delta, not nil", function()
		expect(VoiceDebugData._deltaSince(100, 100)).toBe(0)
	end)
end)

describe("getSubscriptions", function()
	it("should return an empty array before any stats have arrived", function()
		local data = VoiceDebugData.new()
		expect(#data:getSubscriptions()).toBe(0)
	end)

	it("should unwrap the subscriptions array from the native wrapper dict", function()
		local data = VoiceDebugData.new()
		data._subscriptionsData = { subscriptions = { { userId = 1 } } }

		local subscriptions = data:getSubscriptions()
		expect(#subscriptions).toBe(1)
		expect(subscriptions[1].userId).toBe(1)
	end)
end)

describe("_computeSubscriptionBitrates", function()
	it("should leave incomingBitrateKbps nil on the first sample for a given ssrc", function()
		local prevBySsrc = {}
		local subscriptions =
			{ { audioSsrc = 111, userId = 1, incomingBytes = 1000, incomingBitrateKbps = nil :: number? } }

		VoiceDebugData._computeSubscriptionBitrates(subscriptions, prevBySsrc, 1)

		expect(subscriptions[1].incomingBitrateKbps).toBe(nil)
		expect(prevBySsrc[111].bytes).toBe(1000)
	end)

	it("should compute kbps from the byte delta on the next sample", function()
		local prevBySsrc = { [111] = { userId = 1, bytes = 1000 } }
		local subscriptions =
			{ { audioSsrc = 111, userId = 1, incomingBytes = 2000, incomingBitrateKbps = nil :: number? } }

		VoiceDebugData._computeSubscriptionBitrates(subscriptions, prevBySsrc, 1)

		expect(subscriptions[1].incomingBitrateKbps).toBe(8)
	end)

	it("should track separate running totals per ssrc, not share one total", function()
		local prevBySsrc = { [111] = { userId = 1, bytes = 1000 }, [222] = { userId = 2, bytes = 5000 } }
		local subscriptions = {
			{ audioSsrc = 111, userId = 1, incomingBytes = 2000, incomingBitrateKbps = nil :: number? },
			{ audioSsrc = 222, userId = 2, incomingBytes = 5500, incomingBitrateKbps = nil :: number? },
		}

		VoiceDebugData._computeSubscriptionBitrates(subscriptions, prevBySsrc, 1)

		expect(subscriptions[1].incomingBitrateKbps).toBe(8)
		expect(subscriptions[2].incomingBitrateKbps).toBe(4)
	end)

	it("should skip entries with no numeric audioSsrc rather than erroring", function()
		local prevBySsrc = {}
		local subscriptions = { { incomingBytes = 1000, incomingBitrateKbps = nil :: number? } }

		VoiceDebugData._computeSubscriptionBitrates(subscriptions, prevBySsrc, 1)

		expect(subscriptions[1].incomingBitrateKbps).toBe(nil)
	end)

	it("should prune an ssrc that is no longer present in the current subscriptions", function()
		local prevBySsrc = { [111] = { userId = 1, bytes = 1000 }, [222] = { userId = 2, bytes = 5000 } }
		local subscriptions = { { audioSsrc = 111, userId = 1, incomingBytes = 2000 } }

		VoiceDebugData._computeSubscriptionBitrates(subscriptions, prevBySsrc, 1)

		expect(prevBySsrc[111].bytes).toBe(2000)
		expect(prevBySsrc[222]).toBe(nil)
	end)

	it("should not fabricate a bitrate from stale bytes if a new subscription reuses a pruned ssrc", function()
		local prevBySsrc = { [111] = { userId = 1, bytes = 1000 } }

		VoiceDebugData._computeSubscriptionBitrates({}, prevBySsrc, 1)
		expect(prevBySsrc[111]).toBe(nil)

		local subscriptions =
			{ { audioSsrc = 111, userId = 2, incomingBytes = 50, incomingBitrateKbps = nil :: number? } }
		VoiceDebugData._computeSubscriptionBitrates(subscriptions, prevBySsrc, 1)

		expect(subscriptions[1].incomingBitrateKbps).toBe(nil)
	end)

	it(
		"should not fabricate a bitrate when a different subscriber takes over an ssrc with no intervening absent tick",
		function()
			local prevBySsrc = { [111] = { userId = 1, bytes = 100000 } }
			local subscriptions =
				{ { audioSsrc = 111, userId = 2, incomingBytes = 50, incomingBitrateKbps = nil :: number? } }

			VoiceDebugData._computeSubscriptionBitrates(subscriptions, prevBySsrc, 1)

			expect(subscriptions[1].incomingBitrateKbps).toBe(nil)
			expect(prevBySsrc[111].userId).toBe(2)
			expect(prevBySsrc[111].bytes).toBe(50)
		end
	)
end)

describe("_nativeSecondsToWallClockSeconds", function()
	it("maps an entry's native timestamp to a real epoch second via the anchor pair", function()
		expect(VoiceDebugData._nativeSecondsToWallClockSeconds(95, 100, 1000)).toBe(995)
	end)

	it("returns exactly wallClockNow when the entry is the anchor sample itself", function()
		expect(VoiceDebugData._nativeSecondsToWallClockSeconds(100, 100, 1000)).toBe(1000)
	end)

	it("handles an entry that occurred after the anchor sample (clock advanced mid-batch)", function()
		expect(VoiceDebugData._nativeSecondsToWallClockSeconds(103, 100, 1000)).toBe(1003)
	end)
end)

describe("_formatWallClockTime", function()
	it("formats a real epoch second as HH:MM:SS", function()
		local epochSeconds = os.time()
		local expected = os.date("%H:%M:%S", epochSeconds)
		expect(VoiceDebugData._formatWallClockTime(epochSeconds)).toBe(expected)
	end)
end)

describe("_decorateOperationEntries", function()
	it("should return an empty array for an empty input", function()
		expect(#VoiceDebugData._decorateOperationEntries({}, 0, 0)).toBe(0)
	end)

	it("should attach a real-time timestampText without mutating the input", function()
		local wallClockNow = os.time()
		local entries = { { name = "JoinedVoice", timestampSeconds = 95, timestampText = nil :: string? } }
		local decorated = VoiceDebugData._decorateOperationEntries(entries, 100, wallClockNow)

		expect(decorated[1].name).toBe("JoinedVoice")
		expect(decorated[1].timestampSeconds).toBe(95)
		expect(decorated[1].timestampText).toBe(os.date("%H:%M:%S", wallClockNow - 5))
		expect(entries[1].timestampText).toBe(nil)
	end)

	it("should pass through operationType when present, and leave it nil when absent", function()
		local wallClockNow = os.time()
		local withType = VoiceDebugData._decorateOperationEntries(
			{ { name = "ClientJoinOperation::Joining", operationType = "ClientJoinOperation", timestampSeconds = 95 } },
			100,
			wallClockNow
		)
		local withoutType = VoiceDebugData._decorateOperationEntries(
			{ { name = "JoinedVoice", timestampSeconds = 95 } },
			100,
			wallClockNow
		)

		expect(withType[1].operationType).toBe("ClientJoinOperation")
		expect(withoutType[1].operationType).toBe(nil)
	end)
end)

describe("getRemoteOperations", function()
	it("should return an empty-shaped table before any stats have arrived", function()
		local data = VoiceDebugData.new()
		local remoteOps = data:getRemoteOperations()

		expect(remoteOps.sent).toBe(nil)
		expect(remoteOps.received).toBe(nil)
	end)

	it("should decorate sent/received/operations and pass through capture-enabled flags", function()
		local data = VoiceDebugData.new()
		local wallClockNow = os.time()
		data._remoteOperationsData = {
			sent = VoiceDebugData._decorateOperationEntries(
				{ { name = "ClientRetryJoinWithConfig", timestampSeconds = 90 } },
				100,
				wallClockNow
			),
			received = VoiceDebugData._decorateOperationEntries(
				{ { name = "JoinedVoice", timestampSeconds = 91 } },
				100,
				wallClockNow
			),
			operations = VoiceDebugData._decorateOperationEntries(
				{ { name = "ClientJoinOperation::Joining", timestampSeconds = 89 } },
				100,
				wallClockNow
			),
			sentCaptureEnabled = false,
			receivedCaptureEnabled = true,
			opQueueCaptureEnabled = true,
		}

		local remoteOps = data:getRemoteOperations()
		expect(#(remoteOps.sent :: { any })).toBe(1)
		expect((remoteOps.sent :: { any })[1].timestampText).toBe(os.date("%H:%M:%S", wallClockNow - 10))
		expect(#(remoteOps.received :: { any })).toBe(1)
		expect(#(remoteOps.operations :: { any })).toBe(1)
		expect(remoteOps.sentCaptureEnabled).toBe(false)
		expect(remoteOps.receivedCaptureEnabled).toBe(true)
		expect(remoteOps.opQueueCaptureEnabled).toBe(true)
	end)
end)
