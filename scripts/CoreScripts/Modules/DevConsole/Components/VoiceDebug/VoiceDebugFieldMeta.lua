export type SeverityLevel = "ok" | "warn" | "error"

export type FieldThresholds = {
	warn: number,
	error: number,
}

export type FieldMeta = {
	label: string,
	unit: string?,
	plottable: boolean?,
	thresholds: FieldThresholds?,
	group: string?,
}

local RTT_THRESHOLDS: FieldThresholds = { warn = 150, error = 300 }
local JITTER_THRESHOLDS: FieldThresholds = { warn = 30, error = 50 }
local JITTER_BUFFER_DELAY_THRESHOLDS: FieldThresholds = { warn = 60, error = 150 }
local LOSS_PERCENT_THRESHOLDS: FieldThresholds = { warn = 3, error = math.huge }

-- Explicit `getFieldSeverity` property alongside the indexer: without it, Luau treats the
-- function assignment below as an indexed write and requires it to conform to FieldMeta.
type VoiceDebugFieldMetaTable = {
	[string]: FieldMeta,
	getFieldSeverity: (key: string, value: any) -> SeverityLevel?,
}

-- Forward-declared so getFieldSeverity can close over it; assigned once below, alongside the
-- rest of the table literal, so the required getFieldSeverity field is never observably missing.
local VoiceDebugFieldMeta: VoiceDebugFieldMetaTable

local function getFieldSeverity(key: string, value: any): SeverityLevel?
	local meta = VoiceDebugFieldMeta[key]
	local thresholds = meta and meta.thresholds
	if not thresholds or type(value) ~= "number" then
		return nil
	end
	if value >= thresholds.error then
		return "error"
	end
	if value >= thresholds.warn then
		return "warn"
	end
	return "ok"
end

VoiceDebugFieldMeta = {
	rttMs = {
		label = "Round-trip time",
		unit = "ms",
		plottable = true,
		thresholds = RTT_THRESHOLDS,
		group = "Connection",
	},
	incomingStreams = {
		label = "Incoming streams",
		group = "Connection",
	},
	outgoingStreams = {
		label = "Outgoing streams",
		group = "Connection",
	},
	incomingJitterMs = {
		label = "Incoming jitter",
		unit = "ms",
		plottable = true,
		thresholds = JITTER_THRESHOLDS,
		group = "Incoming",
	},
	outgoingJitterMs = {
		label = "Outgoing jitter",
		unit = "ms",
		plottable = true,
		thresholds = JITTER_THRESHOLDS,
		group = "Outgoing",
	},
	incomingPackets = {
		label = "Incoming packets",
		group = "Incoming",
	},
	outgoingPackets = {
		label = "Outgoing packets",
		group = "Outgoing",
	},
	incomingPacketsLost = {
		label = "Incoming packets lost",
		group = "Incoming",
	},
	outgoingPacketsLost = {
		label = "Outgoing packets lost",
		group = "Outgoing",
	},
	incomingPacketsDiscarded = {
		label = "Incoming packets discarded",
		group = "Incoming",
	},
	outgoingPacketsDiscarded = {
		label = "Outgoing packets discarded",
		group = "Outgoing",
	},
	jitterBufferDelayMs = {
		label = "Jitter buffer delay",
		unit = "ms",
		thresholds = JITTER_BUFFER_DELAY_THRESHOLDS,
		group = "Incoming",
	},
	incomingFecPackets = {
		label = "Incoming FEC packets",
		group = "Incoming",
	},
	incomingFecPacketsDiscarded = {
		label = "Incoming FEC packets discarded",
		group = "Incoming",
	},
	totalConcealmentEvents = {
		label = "Concealment events",
		group = "Incoming",
	},
	incomingBytes = {
		label = "Incoming bytes",
		group = "Incoming",
	},
	outgoingBytes = {
		label = "Outgoing bytes",
		group = "Outgoing",
	},

	lastPublisherAudioLevelDbov = {
		label = "Publisher audio level",
		unit = "dBov",
		group = "Outgoing",
	},
	lastSubscriberAudioLevelDbov = {
		label = "Subscriber audio level",
		unit = "dBov",
		group = "Incoming",
	},

	incomingBitrateKbps = {
		label = "Incoming bitrate",
		unit = "kbps",
		plottable = true,
		group = "Incoming",
	},
	outgoingBitrateKbps = {
		label = "Outgoing bitrate",
		unit = "kbps",
		plottable = true,
		group = "Outgoing",
	},
	outgoingCodec = {
		label = "Outgoing codec",
		group = "Outgoing",
	},

	incomingLossPercent = {
		label = "Incoming loss",
		unit = "%",
		plottable = true,
		thresholds = LOSS_PERCENT_THRESHOLDS,
		group = "Incoming",
	},

	getFieldSeverity = getFieldSeverity,
}

return VoiceDebugFieldMeta
