-- Flags
local FIntCorescriptMemoryPeriodSeconds: number = game:DefineFastInt("CorescriptMemoryPeriodSeconds", 30)
local FFlagEnableCorescriptMemoryTracker = game:DefineFastFlag("EnableCorescriptMemoryTracker", false)

-- Deps
local StatsService = game:GetService("Stats")
local TelemetryService = game:GetService("TelemetryService")
local CommonUtil = require(script.Parent.CommonUtil)

local DOCS_LINK = "https://docs.google.com/document/d/1BEOgxPzSelCLEHdrHdD_8Kh4ssIcGLlndDXrLmIBNmk"

-- The status of the tracker.
local Status = {
    ACTIVE = 1,
    PAUSED = 2,
    STOPPED = 3,
}

local function GetMemoryPerformanceStatsItem(): StatsItem?
	local performanceStats = StatsService and StatsService:FindFirstChild("PerformanceStats")
	if not performanceStats then
		return nil
	end
	local memoryStats = performanceStats:FindFirstChild('Memory')
	return memoryStats
end

local function GetCorescriptMemory(): number?
    local statItem = GetMemoryPerformanceStatsItem()
    if statItem then
        for _, childItem in statItem:GetChildren() do
            if childItem:IsA("StatsItem") then
                if childItem.DisplayName == 'CoreScriptMemory' then
                    return childItem:GetValue()
                end
            end
        end
    end

    return nil
end

local MemoryStatConfig = {
	eventName = "CorescriptMemory",
	backends = { "RobloxTelemetryStat" },
	lastUpdated = { 2025, 07, 16 },
	throttlingPercentage = 10000,
	description = "Memory consumption for corescript, in MB",
	links = DOCS_LINK,
}

local SessionMaxMemoryStatConfig = {
	eventName = "CorescriptSessionMaxMemory",
	backends = { "RobloxTelemetryStat" },
	lastUpdated = { 2025, 07, 16 },
	throttlingPercentage = 10000,
	description = "Maximum memory consumption for corescript in the session, in MB",
	links = DOCS_LINK,
}

local CorescriptMemoryTracker = {}
CorescriptMemoryTracker.__index = CorescriptMemoryTracker
type CorescriptMemoryTracker = typeof(setmetatable(
	{} :: {
        memoryMb: number,
        maxMemoryMb: number,
        status: number,
        loggingTask: thread?,
        context: string?,
	},
	CorescriptMemoryTracker
))

function CorescriptMemoryTracker.new(context: string?): CorescriptMemoryTracker
    local self = setmetatable({
        memoryMb = 0,
        maxMemoryMb = 0,
        context = context,
        status = Status.PAUSED,
        loggingTask = nil,
	}, CorescriptMemoryTracker)

    return self
end

function CorescriptMemoryTracker.start(self: CorescriptMemoryTracker)
    self.status = Status.ACTIVE
    self.loggingTask = task.delay(FIntCorescriptMemoryPeriodSeconds, function()
        local memory = GetCorescriptMemory()
        if memory then 
            self.maxMemoryMb = math.max(memory, self.maxMemoryMb)
            self:report(self.context, memory)
        end 
        if self.status == Status.ACTIVE then
            self:start()
        end
    end)
end

function CorescriptMemoryTracker.pause(self: CorescriptMemoryTracker)
    if self.loggingTask then
        task.cancel(self.loggingTask)
        self.loggingTask = nil
    end
    self.status = Status.PAUSED
end

function CorescriptMemoryTracker.resume(self: CorescriptMemoryTracker)
    if self.status == Status.PAUSED then
        self:start()
    end
end

function CorescriptMemoryTracker.destroy(self: CorescriptMemoryTracker)
    if self.loggingTask then
        task.cancel(self.loggingTask)
        self.loggingTask = nil
    end
    self.status = Status.STOPPED
    if self.maxMemoryMb > 0 then
        self:reportMaxMemoryUsed(self.context, self.maxMemoryMb)
    end
end

function CorescriptMemoryTracker.report(self: CorescriptMemoryTracker, context, memory)
    TelemetryService:LogStat(
        MemoryStatConfig,
        { customFields = {
            deviceTier = CommonUtil.GetDeviceMemoryTier(),
            context = context,
        } },
        memory
    )
end

function CorescriptMemoryTracker.reportMaxMemoryUsed(self: CorescriptMemoryTracker, context, maxMemoryInSession)
    TelemetryService:LogStat(
        SessionMaxMemoryStatConfig,
        { customFields = {
            deviceTier = CommonUtil.GetDeviceMemoryTier(),
            context = context,
        } },
        maxMemoryInSession
    )
end

local corescriptMemoryTrackerInstance: CorescriptMemoryTracker? = nil

return function(context : string?): CorescriptMemoryTracker?
  if not FFlagEnableCorescriptMemoryTracker then
    return nil
  end 
  if not corescriptMemoryTrackerInstance then
     corescriptMemoryTrackerInstance = CorescriptMemoryTracker.new(context)
  end

  return corescriptMemoryTrackerInstance
end
