local FIntReactSchedulingTrackerEnableHunderedthsPercent: number = game:DefineFastInt("ReactSchedulingTracker", 0)
local FIntReactSchedulingTrackerPeriodMs: number = game:DefineFastInt("ReactSchedulingTrackerPeriodMs", 30000)
local EngineFeatureTelemetryServiceMemoryCPUInfoEnabled = game:GetEngineFeature("TelemetryServiceMemoryCPUInfoEnabled")
local FFlagEnableReactDeviceTierCardinality = game:DefineFastFlag("EnableReactDeviceTierCardinality", false)
local FFlagDisableReactSchedulingTimePctStats = game:DefineFastFlag("DisableReactSchedulingTimePctStats", false)
local FFlagDisableReactSchedulingAvgMaxMsStats = game:DefineFastFlag("DisableReactSchedulingAvgMaxMsStats", false)
local FFlagReactSchedulingTrackerLayoutEffects = game:DefineFastFlag("ReactSchedulingTrackerLayoutEffects", false)
local FFlagReactSchedulingTrackerDataModelUpdate = game:DefineFastFlag("ReactSchedulingTrackerDataModelUpdate", false)

local MAX_SAMPLE_RATE = 10000
local SAMPLE_ID_BIAS = 1409

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
local enableKibana = FIntReactSchedulingTrackerEnableHunderedthsPercent
local enabled = enableKibana > 0

if not enabled then
	-- Logging is OFF. Don't enable. Early exit.
	return nil :: ReactSchedulingTracker?
end

local sampleVal = math.random(0, MAX_SAMPLE_RATE)
local installId = applicationId()
if installId ~= nil then
	sampleVal = (installId + SAMPLE_ID_BIAS) % MAX_SAMPLE_RATE
end

enabled = if sampleVal < enableKibana then true else false

if not enabled then
	-- Not included in sampling. Don't enable. Early exit.
	return nil :: ReactSchedulingTracker?
end

local RunService = game:GetService("RunService")
local TelemetryService = game:GetService("TelemetryService")
local CorePackages = game:GetService("CorePackages")
local mutedError = require(CorePackages.Workspace.Packages.Loggers).mutedError
local ReactRoblox = require(CorePackages.Packages.ReactRoblox)
local ReactReconciler = require(CorePackages.Packages.ReactReconciler)
local CommonUtil = require(script.Parent.CommonUtil)

type FiberRoot = ReactReconciler.FiberRoot

local schedulingProfiler = ReactRoblox.schedulingProfiler
local SchedulerEvents = schedulingProfiler.profilerEventTypes

type SchedulerStates = "Idle" | "Render" | "Commit" | "PassiveEffects"

local SchedulerStates = {
	Idle = "Idle" :: "Idle",
	Render = "Render" :: "Render",
	Commit = "Commit" :: "Commit",
	PassiveEffects = "PassiveEffects" :: "PassiveEffects",
}

local function getCurrentTimeMs(): number
	return os.clock() * 1000
end

local deviceTier
if FFlagEnableReactDeviceTierCardinality then 
	deviceTier = CommonUtil.GetDeviceMemoryTier()
end

local SchedulerStateMachine = {}
SchedulerStateMachine.__index = SchedulerStateMachine

type RootUpdateTime = {
	tag: "RootUpdateTime",
	RenderMs: number, -- For measuring concurrent rendering time
	CommitMs: number, -- For measuring all commit time, may include synchronous rendering and layout effects
	LayoutEffectsMs: number, -- For measuring layout effects time, if applicable
	StartTimeMs: number, -- For measuring time taken to complete updating
}

type RootPassiveEffectsTime = {
	tag: "RootPassiveEffectsTime",
	PassiveEffectsMs: number, -- For measuring passive effects time
}

type RootTaskTime = RootUpdateTime | RootPassiveEffectsTime

type SchedulerStateMachine = typeof(setmetatable(
	{} :: {
		frameReporter: (number) -> (),
		rootReporter: (RootTaskTime, FiberRoot?) -> (),
		currentState: SchedulerStates,
		timerStartMs: number,
		layoutTimerStartMs: number,
		rootUpdateInProgress: boolean,
		rootUpdateTime: RootUpdateTime,
		rootPassiveEffectsTime: RootPassiveEffectsTime,
		renderLevel: number,
		states: {
			[SchedulerStates]: (SchedulerStateMachine, number, FiberRoot?) -> SchedulerStates?,
		},
	},
	SchedulerStateMachine
))

function SchedulerStateMachine.new(
	frameReporter: (number) -> (),
	rootReporter: (RootTaskTime, FiberRoot?) -> ()
): SchedulerStateMachine
	return setmetatable({
		frameReporter = frameReporter,
		rootReporter = rootReporter,
		currentState = SchedulerStates.Idle,
		timerStartMs = 0,
		layoutTimerStartMs = if FFlagReactSchedulingTrackerLayoutEffects then 0 else nil :: never,
		rootUpdateInProgress = false,
		rootUpdateTime = {
			tag = "RootUpdateTime" :: "RootUpdateTime",
			RenderMs = 0,
			CommitMs = 0,
			LayoutEffectsMs = if FFlagReactSchedulingTrackerLayoutEffects then 0 else nil :: never,
			StartTimeMs = 0,
		},
		rootPassiveEffectsTime = {
			tag = "RootPassiveEffectsTime" :: "RootPassiveEffectsTime",
			PassiveEffectsMs = 0,
		},
		renderLevel = 0, -- Track sub-render from commit phase
		states = {
			[SchedulerStates.Idle] = function(self: SchedulerStateMachine, event: number): SchedulerStates?
				if event == SchedulerEvents.RenderStart then
					self.timerStartMs = getCurrentTimeMs()
					if not self.rootUpdateInProgress then
						self.rootUpdateInProgress = true
						self.rootUpdateTime = {
							tag = "RootUpdateTime",
							RenderMs = 0,
							CommitMs = 0,
							LayoutEffectsMs = if FFlagReactSchedulingTrackerLayoutEffects then 0 else nil :: never,
							StartTimeMs = getCurrentTimeMs(),
						}
					end
					return SchedulerStates.Render
				elseif event == SchedulerEvents.PassiveEffectsStart then
					self.timerStartMs = getCurrentTimeMs()
					self.rootPassiveEffectsTime = {
						tag = "RootPassiveEffectsTime",
						PassiveEffectsMs = 0,
					}
					return SchedulerStates.PassiveEffects
				elseif event == SchedulerEvents.CommitStart then
					self.timerStartMs = getCurrentTimeMs()
					return SchedulerStates.Commit
				else
					-- Invalid event, might be hit if the state machine is started in the middle of a task's lifecycle, gracefully ignore
					return nil
				end
			end,
			[SchedulerStates.Render] = function(self: SchedulerStateMachine, event: number): SchedulerStates?
				if event == SchedulerEvents.RenderYield or event == SchedulerEvents.RenderStop then
					local durationMs = getCurrentTimeMs() - self.timerStartMs
					self.rootUpdateTime.RenderMs += durationMs
					self.frameReporter(durationMs)
					return SchedulerStates.Idle
				else
					-- This should be impossible
					mutedError("Invalid event in Render: " .. event)
					return SchedulerStates.Idle
				end
			end,
			[SchedulerStates.Commit] = function(
				self: SchedulerStateMachine,
				event: number,
				root: FiberRoot?
			): SchedulerStates?
				if event == SchedulerEvents.CommitStop then
					if self.renderLevel > 0 then
						if FFlagReactSchedulingTrackerLayoutEffects and self.renderLevel == 1 then
							self.rootUpdateTime.LayoutEffectsMs += getCurrentTimeMs() - self.layoutTimerStartMs
						end
						-- Synchronous sub-render ended
						self.renderLevel -= 1
						return nil
					end

					local durationMs = getCurrentTimeMs() - self.timerStartMs
					self.rootUpdateTime.CommitMs += durationMs
					self.frameReporter(durationMs)
					self.rootReporter(self.rootUpdateTime, root)
					self.rootUpdateInProgress = false
					return SchedulerStates.Idle
				elseif event == SchedulerEvents.RenderStart then
					-- New synchronous render started during commit phase
					self.renderLevel += 1
					if FFlagReactSchedulingTrackerLayoutEffects and self.renderLevel == 1 then
						self.layoutTimerStartMs = getCurrentTimeMs()
					end
					return nil
				elseif FFlagReactSchedulingTrackerLayoutEffects and (event == SchedulerEvents.LayoutEffectsStart or event == SchedulerEvents.PassiveEffectsStart) then
					if self.renderLevel == 0 then
						self.layoutTimerStartMs = getCurrentTimeMs()
					end
					return nil
				elseif FFlagReactSchedulingTrackerLayoutEffects and (event == SchedulerEvents.LayoutEffectsStop or event == SchedulerEvents.PassiveEffectsStop) then
					if self.renderLevel == 0 then
						self.rootUpdateTime.LayoutEffectsMs += getCurrentTimeMs() - self.layoutTimerStartMs
					end
					return nil
				elseif event ~= SchedulerEvents.RenderYield then
					-- RenderYield is the only event not possible in Commit since any re-render will be synchronous
					return nil
				else
					-- This should be impossible
					mutedError("Invalid event in Commit: " .. event)
					return SchedulerStates.Idle
				end
			end,
			[SchedulerStates.PassiveEffects] = function(
				self: SchedulerStateMachine,
				event: number,
				root: FiberRoot?
			): SchedulerStates?
				if event == SchedulerEvents.PassiveEffectsStop then
					local durationMs = getCurrentTimeMs() - self.timerStartMs
					self.rootPassiveEffectsTime.PassiveEffectsMs += durationMs
					self.frameReporter(durationMs)
					self.rootReporter(self.rootPassiveEffectsTime, root)
					return SchedulerStates.Idle
				else
					-- This should be impossible
					mutedError("Invalid event in PassiveEffects: " .. event)
					return SchedulerStates.Idle
				end
			end,
		} :: {
			[SchedulerStates]: (SchedulerStateMachine, number, FiberRoot?) -> SchedulerStates?,
		},
	}, SchedulerStateMachine)
end

function SchedulerStateMachine:transition(event: number, root: FiberRoot?)
	local currentState = self.currentState
	local nextState = self.states[currentState](self, event, root)
	if nextState then
		self.currentState = nextState
	end
end

-- Define stat count, and event configs

local DOCS_LINK =
	"https://roblox.atlassian.net/wiki/spaces/APEX/pages/3321660204/React+Profiler+Metric+Issues+and+Path+Forward#New-Metrics-%E2%9C%A8"

local PeriodSummaryEvent = {
	eventName = "ReactPeriodSummary",
	backends = { "EventIngest" },
	throttlingPercentage = game:DefineFastInt("ReactPeriodSummaryEventThrottleHunderedthsPercent", 0),
	lastUpdated = { 2025, 2, 18 },
	description = "Summary of React performance over a period",
	links = DOCS_LINK,
}

local PeriodStatConfig = {
	eventName = "ReactPeriod",
	backends = { "RobloxTelemetryStat" },
	throttlingPercentage = game:DefineFastInt("ReactPeriodStatThrottleHunderedthsPercent", 0),
	lastUpdated = { 2025, 2, 18 },
	description = "Stats for React performance over a period",
	links = DOCS_LINK,
}

local FrameCountConfig = {
	eventName = "ReactFrameCounter",
	backends = { "RobloxTelemetryCounter" },
	throttlingPercentage = game:DefineFastInt("ReactFrameCountThrottleHunderedthsPercent", 0),
	lastUpdated = { 2025, 2, 18 },
	description = "Frame counts for React performance over a period",
	links = DOCS_LINK,
}

local RootSummaryEvent = {
	eventName = "ReactRootSummary",
	backends = { "EventIngest" },
	lastUpdated = { 2025, 2, 18 },
	throttlingPercentage = game:DefineFastInt("ReactRootSummaryEventThrottleHunderedthsPercent2", 0),
	description = "Summary of React performance for a root",
	links = DOCS_LINK,
}

local RootPeriodStatConfig
if not FFlagDisableReactSchedulingTimePctStats then
	RootPeriodStatConfig = {
		eventName = "ReactRootPeriod",
		backends = { "RobloxTelemetryStat" },
		lastUpdated = { 2025, 2, 18 },
		throttlingPercentage = game:DefineFastInt("ReactRootPeriodStatThrottleHunderedthsPercent2", 0),
		description = "Stats for React performance for a root over a period",
		links = DOCS_LINK,
	}
end

local RootTaskCountConfig = {
	eventName = "ReactRootTaskCount",
	backends = { "RobloxTelemetryCounter" },
	lastUpdated = { 2025, 2, 18 },
	throttlingPercentage = game:DefineFastInt("ReactRootTaskCountThrottleHunderedthsPercent2", 0),
	description = "Task counts for React performance for a root over a period",
	links = DOCS_LINK,
}

local RootPeriodTaskStatConfig
if not FFlagDisableReactSchedulingAvgMaxMsStats then
	RootPeriodTaskStatConfig = {
		eventName = "ReactRootPeriodTask",
		backends = { "RobloxTelemetryStat" },
		lastUpdated = { 2025, 2, 18 },
		throttlingPercentage = game:DefineFastInt("ReactRootPeriodTaskStatThrottleHunderedthsPercent2", 0),
		description = "Task stats for React performance for a root over a period",
		links = DOCS_LINK,
	}
end

-- This is for stats on individual root updates, not period summary stats
local RootUpdateStatConfig = {
	eventName = "ReactRootUpdate",
	backends = { "RobloxTelemetryStat" },
	lastUpdated = { 2025, 2, 18 },
	throttlingPercentage = game:DefineFastInt("ReactRootUpdateStatThrottleHunderedthsPercent", 0),
	description = "Task stats for individual React root updates, all in milliseconds",
	links = DOCS_LINK,
}

local ReactSchedulingTracker = {}
ReactSchedulingTracker.__index = ReactSchedulingTracker

type FrameMetrics = {
	totalFrameCount: number,
	reactFrameCount: number,
	totalReactTimeMs: number,
	maxReactFrameTimeMs: number,
	allFrameHistogram: { number }, -- The bucket histogram for all frames (even if react didn't run)
	reactFrameHistogram: { number }, -- The bucket histogram for frames where react ran
	reactDropChangeHistogram: { number }, -- The bucket histogram for the bucket differential when removing react time from frame time (how much impact react had on the frame)
}

type ReactSchedulingTracker = typeof(setmetatable(
	{} :: {
		periodStartMs: number,
		reactFrameTimeMs: number,
		frameMetrics: FrameMetrics,
		rootsMetrics: {
			[string]: {
				update_count: number,
				layout_effects_count: number,
				render_total_time_ms: number,
				commit_total_time_ms: number,
				layout_effects_total_time_ms: number,
				data_model_update_total_time_ms: number,
				max_render_time_ms: number,
				max_commit_time_ms: number,
				max_layout_effects_time_ms: number,
				max_data_model_update_time_ms: number,
				max_update_time_ms: number,
				passive_effects_count: number,
				passive_effects_total_time_ms: number,
				max_passive_effects_time_ms: number,
				total_time_to_update_ms: number,
				max_time_to_update_ms: number,
			},
		},
		schedulerStateMachine: SchedulerStateMachine,
	},
	ReactSchedulingTracker
))

function ReactSchedulingTracker.new(context: string?): ReactSchedulingTracker
	local self = setmetatable({
		periodStartMs = 0,
		reactFrameTimeMs = 0,
		frameMetrics = {
			totalFrameCount = 0,
			reactFrameCount = 0,
			totalReactTimeMs = 0,
			maxReactFrameTimeMs = 0,
			allFrameHistogram = { 0, 0, 0, 0 },
			reactFrameHistogram = { 0, 0, 0, 0 },
			reactDropChangeHistogram = { 0, 0, 0, 0 },
		},
		rootsMetrics = {},
		context = context,
	}, ReactSchedulingTracker)

	self.schedulerStateMachine = SchedulerStateMachine.new(function(duration)
		self:addToFrame(duration)
	end, function(rootTimeMs, root)
		self:reportRoot(rootTimeMs, root)
	end)

	return self
end

function ReactSchedulingTracker:start()
	self:resetState()

	schedulingProfiler.registerProfilerEventCallback(function(type: number, root: FiberRoot?)
		self.schedulerStateMachine:transition(type, root)
	end)

	RunService.Heartbeat:Connect(function(frameTimeS)
		self:processFrame(frameTimeS * 1000)
		self.reactFrameTimeMs = 0

		local periodEndMs = getCurrentTimeMs()
		if periodEndMs - self.periodStartMs > FIntReactSchedulingTrackerPeriodMs then
			self:reportPeriod()
			self:resetState()
		end
	end)
end

function ReactSchedulingTracker:resetState()
	self.periodStartMs = getCurrentTimeMs()
	self.frameMetrics = {
		totalFrameCount = 0,
		reactFrameCount = 0,
		totalReactTimeMs = 0,
		maxReactFrameTimeMs = 0,
		allFrameHistogram = { 0, 0, 0, 0 },
		reactFrameHistogram = { 0, 0, 0, 0 },
		reactDropChangeHistogram = { 0, 0, 0, 0 },
	}
	self.rootsMetrics = {}
end

local UNKNOWN_ROOT_NAME = "Unknown"

function ReactSchedulingTracker:getRootName(root: FiberRoot?): string
	local name = UNKNOWN_ROOT_NAME
	if root then
		if root.containerInfo.Name ~= "Folder" then
			name = root.containerInfo.Name
		elseif root.current and root.current.child and root.current.child.memoizedProps then
			for key, value in root.current.child.memoizedProps do
				if typeof(key) == "string" then
					name = key
					break
				end
			end
		end
	end
	return name
end

function ReactSchedulingTracker:addToFrame(duration)
	self.reactFrameTimeMs += duration
end

function ReactSchedulingTracker:reportRoot(rootTime: RootTaskTime, root: FiberRoot?)
	local name = self:getRootName(root)
	if not self.rootsMetrics[name] then
		self.rootsMetrics[name] = {
			update_count = 0,
			layout_effects_count = if FFlagReactSchedulingTrackerLayoutEffects then 0 else nil :: never,
			render_total_time_ms = 0,
			commit_total_time_ms = 0,
			layout_effects_total_time_ms = if FFlagReactSchedulingTrackerLayoutEffects then 0 else nil :: never,
			data_model_update_total_time_ms = if FFlagReactSchedulingTrackerLayoutEffects and FFlagReactSchedulingTrackerDataModelUpdate then 0 else nil :: never,
			max_render_time_ms = 0,
			max_commit_time_ms = 0,
			max_update_time_ms = 0,
			max_layout_effects_time_ms = if FFlagReactSchedulingTrackerLayoutEffects then 0 else nil :: never,
			max_data_model_update_time_ms = if FFlagReactSchedulingTrackerLayoutEffects and FFlagReactSchedulingTrackerDataModelUpdate then 0 else nil :: never,
			passive_effects_count = 0,
			passive_effects_total_time_ms = 0,
			max_passive_effects_time_ms = 0,
			total_time_to_update_ms = 0,
			max_time_to_update_ms = 0,
		}
	end

	local rootMetrics = self.rootsMetrics[name]

	if rootTime.tag == "RootPassiveEffectsTime" then
		TelemetryService:LogStat(
			RootUpdateStatConfig,
			{ customFields = {
				rootName = name,
				deviceTier = deviceTier,
				updateType = "PassiveEffects",
				context = self.context,
			} },
			rootTime.PassiveEffectsMs
		)
		rootMetrics.passive_effects_count += 1
		rootMetrics.passive_effects_total_time_ms += rootTime.PassiveEffectsMs
		if rootTime.PassiveEffectsMs > rootMetrics.max_passive_effects_time_ms then
			rootMetrics.max_passive_effects_time_ms = rootTime.PassiveEffectsMs
		end
	elseif rootTime.tag == "RootUpdateTime" then
		local timeToCompleteMs = getCurrentTimeMs() - rootTime.StartTimeMs
		TelemetryService:LogStat(
			RootUpdateStatConfig,

			{ customFields = {
				rootName = name,
				deviceTier = deviceTier,
				updateType = "TimeToComplete",
				context = self.context,
			} },
			timeToCompleteMs
		)
		rootMetrics.total_time_to_update_ms += timeToCompleteMs
		if timeToCompleteMs > rootMetrics.max_time_to_update_ms then
			rootMetrics.max_time_to_update_ms = timeToCompleteMs
		end

		TelemetryService:LogStat(
			RootUpdateStatConfig,
			{ customFields = {
				rootName = name,
				deviceTier = deviceTier,
				updateType = "RenderAndCommit",
				context = self.context,
			} },
			rootTime.RenderMs + rootTime.CommitMs
		)
		TelemetryService:LogStat(
			RootUpdateStatConfig,
			{ customFields = {
				rootName = name,
				deviceTier = deviceTier,
				updateType = "Commit",
				context = self.context,
			} },
			rootTime.CommitMs
		)
		if FFlagReactSchedulingTrackerLayoutEffects then
			if rootTime.LayoutEffectsMs > 0 then
				TelemetryService:LogStat(
					RootUpdateStatConfig,
					{ customFields = {
						rootName = name,
						deviceTier = deviceTier,
						updateType = "LayoutEffects",
						context = self.context,
					} },
					rootTime.LayoutEffectsMs
				)
			end
			if FFlagReactSchedulingTrackerDataModelUpdate then
				TelemetryService:LogStat(
					RootUpdateStatConfig,
					{ customFields = {
						rootName = name,
						deviceTier = deviceTier,
						updateType = "DataModelUpdate",
						context = self.context,
					} },
					rootTime.CommitMs - rootTime.LayoutEffectsMs
				)
			end
		end
		rootMetrics.update_count += 1
		if rootTime.RenderMs + rootTime.CommitMs > rootMetrics.max_update_time_ms then
			rootMetrics.max_update_time_ms = rootTime.RenderMs + rootTime.CommitMs
		end
		rootMetrics.render_total_time_ms += rootTime.RenderMs
		rootMetrics.commit_total_time_ms += rootTime.CommitMs
		if rootTime.RenderMs > rootMetrics.max_render_time_ms then
			rootMetrics.max_render_time_ms = rootTime.RenderMs
		end
		if rootTime.CommitMs > rootMetrics.max_commit_time_ms then
			rootMetrics.max_commit_time_ms = rootTime.CommitMs
		end
		if FFlagReactSchedulingTrackerLayoutEffects then
			if rootTime.LayoutEffectsMs > 0 then
				rootMetrics.layout_effects_count += 1
				rootMetrics.layout_effects_total_time_ms += rootTime.LayoutEffectsMs
				if rootTime.LayoutEffectsMs > rootMetrics.max_layout_effects_time_ms then
					rootMetrics.max_layout_effects_time_ms = rootTime.LayoutEffectsMs
				end
			end
			if FFlagReactSchedulingTrackerDataModelUpdate then
				rootMetrics.data_model_update_total_time_ms += rootTime.CommitMs - rootTime.LayoutEffectsMs
				if rootTime.CommitMs - rootTime.LayoutEffectsMs > rootMetrics.max_data_model_update_time_ms then
					rootMetrics.max_data_model_update_time_ms = rootTime.CommitMs - rootTime.LayoutEffectsMs
				end
			end
		end
	end
end

local NOMINAL_60Hz_SINGLE_FRAME_TIME_MS = 1000 / 60 -- 16.6ms
local FUZZY_DEADLINE_MS = 2
local MAX_BUCKETS = 4

function ReactSchedulingTracker:getFrameBucket(frameTimeMs: number): number
	frameTimeMs = math.max(0, frameTimeMs - FUZZY_DEADLINE_MS) -- Add a fuzzy deadline to avoid bucketing frames that are just over the threshold
	local bucket = math.min(MAX_BUCKETS, math.floor(frameTimeMs / NOMINAL_60Hz_SINGLE_FRAME_TIME_MS) + 1)

	return bucket
end

function ReactSchedulingTracker:processFrame(frameTimeMs: number)
	local frameMetrics: FrameMetrics = self.frameMetrics
	local reactFrameTimeMs = self.reactFrameTimeMs

	frameMetrics.totalFrameCount += 1
	local bucket = self:getFrameBucket(frameTimeMs)
	frameMetrics.allFrameHistogram[bucket] += 1

	if reactFrameTimeMs > 0 then
		-- React ran this frame
		frameMetrics.totalReactTimeMs += reactFrameTimeMs
		frameMetrics.reactFrameHistogram[bucket] += 1

		-- update frame summary
		frameMetrics.reactFrameCount += 1
		if reactFrameTimeMs > frameMetrics.maxReactFrameTimeMs then
			frameMetrics.maxReactFrameTimeMs = reactFrameTimeMs
		end

		local bucketNoReact = self:getFrameBucket(frameTimeMs - reactFrameTimeMs)
		local change = bucket - bucketNoReact
		frameMetrics.reactDropChangeHistogram[change + 1] += 1
	end
end

function ReactSchedulingTracker:reportPeriod()
	local frameMetrics: FrameMetrics = self.frameMetrics
	local periodLengthMs = getCurrentTimeMs() - self.periodStartMs
	local periodSummary = {
		period_length_ms = periodLengthMs,
		react_total_time_ms = frameMetrics.totalReactTimeMs,
		react_total_time_pct = frameMetrics.totalReactTimeMs / periodLengthMs,
		react_frame_count = frameMetrics.reactFrameCount,
        total_frame_count = frameMetrics.totalFrameCount,
		average_react_all_frame_ms = frameMetrics.totalReactTimeMs / frameMetrics.totalFrameCount,
		average_react_only_frame_ms = if frameMetrics.reactFrameCount > 0
			then frameMetrics.totalReactTimeMs / frameMetrics.reactFrameCount
			else 0,
		max_react_frame_ms = frameMetrics.maxReactFrameTimeMs,
		all_frame_drop0 = frameMetrics.allFrameHistogram[1],
		all_frame_drop1 = frameMetrics.allFrameHistogram[2],
		all_frame_drop2 = frameMetrics.allFrameHistogram[3],
		all_frame_drop3 = frameMetrics.allFrameHistogram[4],
		react_frame_drop0 = frameMetrics.reactFrameHistogram[1],
		react_frame_drop1 = frameMetrics.reactFrameHistogram[2],
		react_frame_drop2 = frameMetrics.reactFrameHistogram[3],
		react_frame_drop3 = frameMetrics.reactFrameHistogram[4],
		react_drop_change0 = frameMetrics.reactDropChangeHistogram[1],
		react_drop_change1 = frameMetrics.reactDropChangeHistogram[2],
		react_drop_change2 = frameMetrics.reactDropChangeHistogram[3],
		react_drop_change3 = frameMetrics.reactDropChangeHistogram[4],
	}

	local summaryStandardizedFields = { "addPlaceId", "addUniverseId", "addSessionId", "addOSInfo", "addSessionInfo" }
	if EngineFeatureTelemetryServiceMemoryCPUInfoEnabled then
		summaryStandardizedFields = { "addPlaceId", "addUniverseId", "addSessionId", "addOSInfo", "addSessionInfo", "addMemoryInfo", "addCPUInfo" }
	end
	TelemetryService:LogEvent(PeriodSummaryEvent, {
		standardizedFields = summaryStandardizedFields,
		customFields = periodSummary
	})

	TelemetryService:LogStat(PeriodStatConfig, {
		customFields = { stat = "ReactTotalTimePct", context = self.context, deviceTier = deviceTier },
	}, periodSummary.react_total_time_pct)
	TelemetryService:LogStat(PeriodStatConfig, {
		customFields = { stat = "AverageReactAllFrameMs", context = self.context, deviceTier = deviceTier },
	}, periodSummary.average_react_all_frame_ms)
	TelemetryService:LogStat(PeriodStatConfig, {
		customFields = { stat = "AverageReactOnlyFrameMs", context = self.context, deviceTier = deviceTier },
	}, periodSummary.average_react_only_frame_ms)
	TelemetryService:LogStat(PeriodStatConfig, {
		customFields = { stat = "MaxReactFrameMs", context = self.context, deviceTier = deviceTier },
	}, periodSummary.max_react_frame_ms)

	for i = 1, MAX_BUCKETS do
		local bucket = i - 1
		TelemetryService:LogCounter(
			FrameCountConfig,
			{ customFields = {
				category = "AllFrame",
				bucket = bucket,
				context = self.context,
				deviceTier = deviceTier,
			} },
			frameMetrics.allFrameHistogram[i]
		)
		TelemetryService:LogCounter(
			FrameCountConfig,
			{ customFields = {
				category = "ReactFrame",
				bucket = bucket,
				context = self.context,
				deviceTier = deviceTier,
			} },
			frameMetrics.reactFrameHistogram[i]
		)
		TelemetryService:LogCounter(
			FrameCountConfig,
			{ customFields = {
				category = "ReactDropChange",
				bucket = bucket,
				context = self.context,
				deviceTier = deviceTier,
			} },
			frameMetrics.reactDropChangeHistogram[i]
		)
	end

	for name, root in self.rootsMetrics do
		root.root_name = name
		root.update_total_time_ms = root.render_total_time_ms + root.commit_total_time_ms
		root.total_time_ms = root.update_total_time_ms + root.passive_effects_total_time_ms
		root.avg_render_time_ms = root.render_total_time_ms / root.update_count
		root.context = self.context
		root.total_time_pct = (root.update_total_time_ms + root.passive_effects_total_time_ms) / periodSummary.react_total_time_ms
		root.avg_update_time_ms = root.update_total_time_ms / root.update_count
		root.avg_commit_time_ms = root.commit_total_time_ms / root.update_count
		if FFlagReactSchedulingTrackerLayoutEffects then
			root.avg_layout_effects_time_ms = root.layout_effects_total_time_ms / root.layout_effects_count
			if FFlagReactSchedulingTrackerDataModelUpdate then
				root.avg_data_model_update_time_ms = root.data_model_update_total_time_ms / root.update_count
			end
		end
		root.avg_passive_effects_time_ms = root.passive_effects_total_time_ms / root.passive_effects_count
		root.avg_time_to_update_ms = root.total_time_to_update_ms / root.update_count

		TelemetryService:LogEvent(RootSummaryEvent, {
			standardizedFields = summaryStandardizedFields,
			customFields = root
		})

		if not FFlagDisableReactSchedulingTimePctStats then
			TelemetryService:LogStat(
				RootPeriodStatConfig,
				{ customFields = {
					rootName = root.root_name,
					deviceTier = deviceTier,
					stat = "TotalTimePct",
					context = self.context,
				} },
				root.total_time_pct
			)
		end

		TelemetryService:LogCounter(
			RootTaskCountConfig,
			{ customFields = {
				rootName = root.root_name,
				deviceTier = deviceTier,
				task = "RenderAndCommit",
				context = self.context,
			} },
			root.update_count
		)
		if FFlagReactSchedulingTrackerLayoutEffects then
			TelemetryService:LogCounter(
				RootTaskCountConfig,
				{ customFields = {
					rootName = root.root_name,
					deviceTier = deviceTier,
					task = "LayoutEffects",
					context = self.context,
				} },
				root.layout_effects_count
			)
		end
		TelemetryService:LogCounter(
			RootTaskCountConfig,
			{ customFields = {
				rootName = root.root_name,
				deviceTier = deviceTier,
				task = "PassiveEffects",
				context = self.context,
			} },
			root.passive_effects_count
		)

		if not FFlagDisableReactSchedulingAvgMaxMsStats then
			TelemetryService:LogStat(
				RootPeriodTaskStatConfig,
				{ customFields = {
					rootName = root.root_name,
					deviceTier = deviceTier,
					task = "RenderAndCommit",
					stat = "AvgMs",
					context = self.context,
				} },
				root.avg_update_time_ms
			)
			TelemetryService:LogStat(
				RootPeriodTaskStatConfig,
				{ customFields = {
					rootName = root.root_name,
					deviceTier = deviceTier,
					task = "Commit",
					stat = "AvgMs",
					context = self.context,
				} },
				root.avg_commit_time_ms
			)
			if FFlagReactSchedulingTrackerLayoutEffects then
				TelemetryService:LogStat(
					RootPeriodTaskStatConfig,
					{ customFields = {
						rootName = root.root_name,
						deviceTier = deviceTier,
						task = "LayoutEffects",
						stat = "AvgMs",
						context = self.context,
					} },
					root.avg_layout_effects_time_ms
				)
				if FFlagReactSchedulingTrackerDataModelUpdate then
					TelemetryService:LogStat(
						RootPeriodTaskStatConfig,
						{ customFields = {
							rootName = root.root_name,
							deviceTier = deviceTier,
							task = "DataModelUpdate",
							stat = "AvgMs",
							context = self.context,
						} },
						root.avg_data_model_update_time_ms
					)
				end
			end
			TelemetryService:LogStat(
				RootPeriodTaskStatConfig,
				{ customFields = {
					rootName = root.root_name,
					deviceTier = deviceTier,
					task = "TimeToUpdateMs",
					stat = "AvgMs",
					context = self.context,
				} },
				root.avg_time_to_update_ms
			)
			TelemetryService:LogStat(
				RootPeriodTaskStatConfig,
				{ customFields = {
					rootName = root.root_name,
					deviceTier = deviceTier,
					task = "PassiveEffects",
					stat = "AvgMs",
					context = self.context,
				} },
				root.avg_passive_effects_time_ms
			)

			TelemetryService:LogStat(
				RootPeriodTaskStatConfig,
				{ customFields = {
					rootName = root.root_name,
					deviceTier = deviceTier,
					task = "RenderAndCommit",
					stat = "MaxMs",
					context = self.context,
				} },
				root.max_update_time_ms
			)
			TelemetryService:LogStat(
				RootPeriodTaskStatConfig,
				{ customFields = {
					rootName = root.root_name,
					deviceTier = deviceTier,
					task = "Commit",
					stat = "MaxMs",
					context = self.context,
				} },
				root.max_commit_time_ms
			)
			if FFlagReactSchedulingTrackerLayoutEffects then
				TelemetryService:LogStat(
					RootPeriodTaskStatConfig,
					{ customFields = {
						rootName = root.root_name,
						deviceTier = deviceTier,
						task = "LayoutEffects",
						stat = "MaxMs",
						context = self.context,
					} },
					root.max_layout_effects_time_ms
				)
				if FFlagReactSchedulingTrackerDataModelUpdate then
					TelemetryService:LogStat(
						RootPeriodTaskStatConfig,
						{ customFields = {
							rootName = root.root_name,
							deviceTier = deviceTier,
							task = "DataModelUpdate",
							stat = "MaxMs",
							context = self.context,
						} },
						root.max_data_model_update_time_ms
					)
				end
			end
			TelemetryService:LogStat(
				RootPeriodTaskStatConfig,
				{ customFields = {
					rootName = root.root_name,
					deviceTier = deviceTier,
					task = "TimeToUpdateMs",
					stat = "MaxMs",
					context = self.context,
				} },
				root.max_time_to_update_ms
			)
			TelemetryService:LogStat(
				RootPeriodTaskStatConfig,
				{ customFields = {
					rootName = root.root_name,
					deviceTier = deviceTier,
					task = "PassiveEffects",
					stat = "MaxMs",
					context = self.context,
				} },
				root.max_passive_effects_time_ms
			)
		end
	end
end

return (ReactSchedulingTracker :: unknown) :: ReactSchedulingTracker
