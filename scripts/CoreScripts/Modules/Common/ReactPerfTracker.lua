-- Log the outputs of React Performance Tracker to feed monitoring dashboards.

type SummaryEvent = {
	summary_sessionid: string,
	summary_total_time_ms: number,
	summary_sample_time_s: number,
	summary_num_components: number,
	summary_sample_count: number,
}

type ComponentEvent = {
	sessionid: string,
	component: unknown,
	time_ms_max: number,
	time_ms_avg: number,
	total_time_ms: number,
	total_time_pct: number,
	count: number,
	count_pct: number,
}

export type ReactPerfTracker = {
	new: () -> ReactPerfTracker,
	start: () -> (),
	sampleCount: number,
	totalTime: number,
	componentCount: { string: number },
	componentTotalTime: { string: number },
	componentMaxTime: { string: number },
	outgoingEvents : { [number]: ComponentEvent | SummaryEvent },
	loggingProtocol : any,
	nextSendTime : number,
	previousSendTime: number,
}

type Marker = {
	id: string,
	startTime: number,
	endTime: number,
}

local FIntReactPerfTrackerKibana: number = game:DefineFastInt("ReactPerfTrackerKibana", 0)

local MAX_SAMPLE_RATE = 1000
local SAMPLE_ID_BIAS = 327

function applicationId(): number?
	local AppStorageService = game:GetService("AppStorageService")
	if not AppStorageService then
		return nil
	end

	local installationId: string = AppStorageService:GetItem("AppInstallationId")
	local installationIdType = typeof(installationId)

	if installationIdType == "number" then
		return tonumber(installationId) or nil
	end

	if installationIdType == "string" then
		if string.len(installationId) <= 0 then
			return nil
		end

		local numDigits = string.len(tostring(MAX_SAMPLE_RATE))
		-- tonumber returns nil if conversion fails
		return tonumber(string.sub(installationId, -numDigits))
	end
	return nil
end

-- Expected value range: 0 .. MAX_SAMPLE_RATE
local enableKibana = FIntReactPerfTrackerKibana
local enabled = enableKibana > 0

if not enabled then
	-- Logging is OFF.  Don't enable.  Early exit.
	return nil :: ReactPerfTracker?
end

local sampleVal = math.random(0, MAX_SAMPLE_RATE)
local installId = applicationId()
if installId ~= nil then
	sampleVal = (installId + SAMPLE_ID_BIAS) % MAX_SAMPLE_RATE
end

enableKibana = if sampleVal < enableKibana then enableKibana else 0
enabled = enableKibana > 0

if not enabled then
	-- Not included in sampling  Don't enable. Early exit.
	return nil
end

local CorePackages = game:GetService("CorePackages")
local LoggingProtocol = require(CorePackages.Workspace.Packages.LoggingProtocol)
local ReactRoblox = require(CorePackages.Packages.ReactRoblox)
local AnalyticsService = game:GetService("RbxAnalyticsService")

type TelemetryEventConfig = LoggingProtocol.TelemetryEventConfig

local TelemetryEventConfig = {
	eventName = "ReactCoreScriptPerformance",
	backends = {
		LoggingProtocol.TelemetryBackends.Points,
	},
	throttlingPercentage = 10000, -- throttling is performed by the caller
	-- the following 3 fields are for static documentation generation purposes only
	lastUpdated = { 24, 10, 4 },
	description = [[Reporting the time utilization of React in CoreScripts]],
	links = "",
} :: TelemetryEventConfig

local ReactPerfTracker = {}
ReactPerfTracker.__index = ReactPerfTracker

function ReactPerfTracker.new(): ReactPerfTracker
	local self = {}
	self.totalTime = 0
	self.componentTotalTime = {}
	self.componentMaxTime = {}
	self.componentCount = {}
	self.sampleCount = 0
	self.loggingProtocol = LoggingProtocol.default
	self.outgoingEvents = {}
	self.nextSendTime = 0
	self.previousSendTime = 0

	return (setmetatable(self, ReactPerfTracker) :: any) :: ReactPerfTracker
end

function ReactPerfTracker:start()
	-- smooth event sending, one per frame
	self.eventSender = coroutine.create(function()
		while true do
			local event = table.remove(self.outgoingEvents, 1)
			if event then
				wait()
				self.loggingProtocol:logRobloxTelemetryEvent(TelemetryEventConfig, {}, event)
			else
				coroutine.yield()
			end
		end
	end)

	-- callback from React profiling, called at the end of each time span
	ReactRoblox.robloxReactProfiling.startTimerSampling(function(marker: Marker)
		local id = marker.id
		local ms = (marker.endTime - marker.startTime) * 1000

		if not self.componentTotalTime[id] then
			self.componentTotalTime[id] = 0
			self.componentMaxTime[id] = 0
			self.componentCount[id] = 0
		end

		self.componentTotalTime[id] += ms
		self.componentCount[id] += 1
		(self :: ReactPerfTracker).sampleCount += 1 :: number
		(self :: ReactPerfTracker).totalTime += ms
		self.componentMaxTime[id] = math.max(self.componentMaxTime[id], ms)

		if marker.startTime >= self.nextSendTime then
			if self.nextSendTime > 0 then
				self:sendEvents()
			end
			self.previousSendTime = self.nextSendTime

			-- edge case: on startup, nextSendTime is initialized at 0, but we can't init previousSendTime as 0
			-- instead init as first marker's start time, as that marks the beginning of the first period 
			if self.previousSendTime == 0 then
				self.previousSendTime = marker.startTime
			end
			self.nextSendTime = marker.startTime + 30
		end
	end)
end

-- convert tally counts into events per component, and one summary event
function ReactPerfTracker:genEvents()
	local numComponents = 0
	for component, _ in self.componentCount do
		numComponents += 1
		table.insert(self.outgoingEvents, {
			sessionid = if AnalyticsService then AnalyticsService:GetSessionId() else "",
			component = component,
			time_ms_max = (self :: ReactPerfTracker).componentMaxTime[component],
			time_ms_avg = (self :: ReactPerfTracker).componentTotalTime[component]
				/ (self :: ReactPerfTracker).componentCount[component],
			total_time_ms = self.componentTotalTime[component],
			total_time_pct = (self :: ReactPerfTracker).componentTotalTime[component]
				/ (self :: ReactPerfTracker).totalTime,
			count = self.componentCount[component],
			count_pct = (self :: ReactPerfTracker).componentCount[component] / (self :: ReactPerfTracker).sampleCount,
		})
	end
	table.insert( (self :: ReactPerfTracker).outgoingEvents, 1, {
		summary_sessionid = if AnalyticsService then AnalyticsService:GetSessionId() else "",
		summary_total_time_ms = (self :: ReactPerfTracker).totalTime,
		summary_sample_time_s = ((self :: ReactPerfTracker).nextSendTime - (self :: ReactPerfTracker).previousSendTime),
		summary_num_components = numComponents,
		summary_sample_count = (self :: ReactPerfTracker).sampleCount,
	})
end

function ReactPerfTracker:sendEvents()
	if self.sampleCount == 0 then
		return
	end

	self:genEvents()
	self:resetCounts()

	-- nudge event sender thread
	coroutine.resume(self.eventSender)
end

function ReactPerfTracker:resetCounts()
	self.componentTotalTime = {}
	self.componentMaxTime = {}
	self.componentCount = {}
	self.sampleCount = 0
	self.totalTime = 0
end

return (ReactPerfTracker :: any?) :: ReactPerfTracker?
