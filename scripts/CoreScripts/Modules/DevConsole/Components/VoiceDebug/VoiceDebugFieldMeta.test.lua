local CorePackages = game:GetService("CorePackages")
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect

local VoiceDebugFieldMeta = require(script.Parent.VoiceDebugFieldMeta)
local VoiceDebugFieldDisplayOrder = require(script.Parent.VoiceDebugFieldDisplayOrder)

local EXPECTED_KEYS = {
	"rttMs",
	"incomingPackets",
	"incomingPacketsLost",
	"outgoingPackets",
	"outgoingPacketsLost",
	"incomingStreams",
	"outgoingStreams",
	"incomingJitterMs",
	"outgoingJitterMs",
	"incomingPacketsDiscarded",
	"outgoingPacketsDiscarded",
	"jitterBufferDelayMs",
	"incomingFecPackets",
	"incomingFecPacketsDiscarded",
	"totalConcealmentEvents",
	"incomingBytes",
	"outgoingBytes",
	"lastPublisherAudioLevelDbov",
	"lastSubscriberAudioLevelDbov",
}

local EXPECTED_BASE_DISPLAY_ORDER_KEYS = {
	"rttMs",
	"incomingPackets",
	"incomingPacketsLost",
	"outgoingPackets",
	"outgoingPacketsLost",
	"incomingStreams",
	"outgoingStreams",
	"incomingJitterMs",
	"outgoingJitterMs",
	"incomingPacketsDiscarded",
	"outgoingPacketsDiscarded",
	"jitterBufferDelayMs",
	"incomingFecPackets",
	"incomingFecPacketsDiscarded",
	"incomingBytes",
	"outgoingBytes",
}

it("has a metadata entry with a non-empty label for every expected key", function()
	for _, key in EXPECTED_KEYS do
		local meta = VoiceDebugFieldMeta[key]
		expect(meta).toBeDefined()
		expect(type(meta.label)).toBe("string")
		expect(#meta.label > 0).toBe(true)
	end
end)

it("lists every expected base key in DisplayOrder exactly once", function()
	local seen = {}
	for _, key in VoiceDebugFieldDisplayOrder do
		expect(seen[key]).toBe(nil)
		seen[key] = true
	end
	for _, key in EXPECTED_BASE_DISPLAY_ORDER_KEYS do
		expect(seen[key]).toBe(true)
	end
end)

it("only marks fields with a meaningful range as plottable", function()
	local plottableAllowed = {
		rttMs = true,
		incomingJitterMs = true,
		outgoingJitterMs = true,
		incomingBitrateKbps = true,
		outgoingBitrateKbps = true,
		incomingLossPercent = true,
	}
	for key, meta in VoiceDebugFieldMeta do
		if type(meta) == "table" and meta.plottable then
			expect(plottableAllowed[key]).toBe(true)
		end
	end
end)

describe("getFieldSeverity", function()
	it("returns nil for a field with no threshold metadata", function()
		expect(VoiceDebugFieldMeta.getFieldSeverity("incomingBytes", 999999)).toBe(nil)
	end)

	it("returns nil for a thresholded field given a non-numeric value", function()
		expect(VoiceDebugFieldMeta.getFieldSeverity("rttMs", nil)).toBe(nil)
		expect(VoiceDebugFieldMeta.getFieldSeverity("rttMs", "22")).toBe(nil)
	end)

	it("returns nil for a key with no metadata entry at all", function()
		expect(VoiceDebugFieldMeta.getFieldSeverity("notARealField", 22)).toBe(nil)
	end)

	it("classifies rttMs across its ok/warn/error boundaries (150/300)", function()
		expect(VoiceDebugFieldMeta.getFieldSeverity("rttMs", 22)).toBe("ok")
		expect(VoiceDebugFieldMeta.getFieldSeverity("rttMs", 149)).toBe("ok")
		expect(VoiceDebugFieldMeta.getFieldSeverity("rttMs", 150)).toBe("warn")
		expect(VoiceDebugFieldMeta.getFieldSeverity("rttMs", 299)).toBe("warn")
		expect(VoiceDebugFieldMeta.getFieldSeverity("rttMs", 300)).toBe("error")
		expect(VoiceDebugFieldMeta.getFieldSeverity("rttMs", 1000)).toBe("error")
	end)

	it("classifies incoming/outgoing jitter across their shared ok/warn/error boundaries (30/50)", function()
		expect(VoiceDebugFieldMeta.getFieldSeverity("incomingJitterMs", 10)).toBe("ok")
		expect(VoiceDebugFieldMeta.getFieldSeverity("incomingJitterMs", 30)).toBe("warn")
		expect(VoiceDebugFieldMeta.getFieldSeverity("incomingJitterMs", 50)).toBe("error")
		expect(VoiceDebugFieldMeta.getFieldSeverity("outgoingJitterMs", 10)).toBe("ok")
		expect(VoiceDebugFieldMeta.getFieldSeverity("outgoingJitterMs", 30)).toBe("warn")
		expect(VoiceDebugFieldMeta.getFieldSeverity("outgoingJitterMs", 50)).toBe("error")
	end)

	it("classifies jitterBufferDelayMs across its ok/warn/error boundaries (60/150)", function()
		expect(VoiceDebugFieldMeta.getFieldSeverity("jitterBufferDelayMs", 20)).toBe("ok")
		expect(VoiceDebugFieldMeta.getFieldSeverity("jitterBufferDelayMs", 60)).toBe("warn")
		expect(VoiceDebugFieldMeta.getFieldSeverity("jitterBufferDelayMs", 150)).toBe("error")
	end)

	it("classifies incomingLossPercent as ok/warn only -- never error", function()
		expect(VoiceDebugFieldMeta.getFieldSeverity("incomingLossPercent", 1)).toBe("ok")
		expect(VoiceDebugFieldMeta.getFieldSeverity("incomingLossPercent", 3)).toBe("warn")
		expect(VoiceDebugFieldMeta.getFieldSeverity("incomingLossPercent", 100)).toBe("warn")
	end)
end)
