--!nonstrict
local ContentProvider = game:GetService("ContentProvider")
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")
local RunService = game:GetService("RunService")
local ScriptContext = game:GetService("ScriptContext")
local UserInputService = game:GetService("UserInputService")

local FFlagCoreScriptErrorReporterUseErrorHandler = game:DefineFastFlag("CoreScriptErrorReporterUseErrorHandler", false)

local RobloxGui = CoreGui.RobloxGui
local RateLimiter = require(RobloxGui.Modules.ErrorReporting.RateLimiter)
local PiiFilter = require(RobloxGui.Modules.ErrorReporting.PiiFilter)
local LuaCoreScriptsErrorV2CounterConfig = require(RobloxGui.Modules.ErrorReporting.LuaCoreScriptsErrorV2CounterConfig)
local createCoreScriptErrorHandler = require(RobloxGui.Modules.ErrorReporting.createCoreScriptErrorHandler)
local createCoreScriptReportProcessor = require(RobloxGui.Modules.ErrorReporting.createCoreScriptReportProcessor)
local createCoreScriptSentryReporter = if FFlagCoreScriptErrorReporterUseErrorHandler
	then require(RobloxGui.Modules.ErrorReporting.createCoreScriptSentryReporter)
	else nil :: never
local FFlagCoreScriptErrorReporterIncludeScriptContext =
	require(RobloxGui.Modules.Flags.FFlagCoreScriptErrorReporterIncludeScriptContext)

local ErrorReporters = require(CorePackages.Workspace.Packages.ErrorReporters)
local BacktraceReporter = ErrorReporters.BacktraceReporter
local LoggingProtocol = require(CorePackages.Workspace.Packages.LoggingProtocol).default
local React = require(CorePackages.Packages.React)

-- Enable CoreScript session with error reporting
local SessionWithErrorReporter = require(CorePackages.Workspace.Packages.AppObservability).SessionWithErrorReporter
local LuaCoreScriptsSessionWithErrorConfig =
	require(RobloxGui.Modules.ErrorReporting.LuaCoreScriptsSessionWithErrorConfig)

-- This flag is permanent; please do not remove it. It serves as a way to
-- quickly turn off error reporting if it proves to be problematic, so that we
-- can disable uploads directly rather than tweaking the throttling parameters
-- below.
game:DefineFastFlag("DisableCorescriptBacktraceReporting", false)
game:DefineFastString("CoreScriptBacktraceErrorUploadToken", "")

game:DefineFastInt("CoreScriptBacktracePIIFilterEraseTimeoutSeconds", 5 * 60)

-- These values control how many times we report the same error in a given period.
-- For these defaults, we will report the same message + stack combination 5 times per
-- minute, and ignore subsequent occurrences.
game:DefineFastFlag("CoreScriptBacktraceRepeatedErrorRateLimiting", true)
game:DefineFastInt("CoreScriptBacktraceRepeatedErrorRateLimitCount", 5)
game:DefineFastInt("CoreScriptBacktraceRepeatedErrorRateLimitPeriod", 60)
-- How long to wait, in tenths of a second, between ticks of the rate limit clock.
-- Higher values will improve performance but may cause repeated errors to be ignored
-- beyond the settings above.
game:DefineFastInt("CoreScriptBacktraceRepeatedErrorRateLimitProcessIntervalTenths", 10)

game:DefineFastInt("CoreScriptBacktraceErrorReportPercentage", 100)

local FStringCoreScriptSentryDsn = game:DefineFastString("CoreScriptSentryDsn", "")
local FIntCoreScriptSentryRolloutPercentage = game:DefineFastInt("CoreScriptSentryRolloutPercentage", 0)

local function CanReportCoreScriptBacktrace()
	return math.random(1, 100) <= math.clamp(game:GetFastInt("CoreScriptBacktraceErrorReportPercentage"), 0, 100)
end

local function CanReportCoreScriptSentry()
	return math.random(1, 100) <= math.clamp(FIntCoreScriptSentryRolloutPercentage, 0, 100)
end

-- We don't have a default for this fast string, so if it's the empty string we
-- know we're at the default and we can't do error reports.
local isBacktraceEnabled = not game:GetFastFlag("DisableCorescriptBacktraceReporting")
	and game:GetFastString("CoreScriptBacktraceErrorUploadToken") ~= ""
	and CanReportCoreScriptBacktrace()

-- Sentry is gated independently of Backtrace so Backtrace can be retired once
-- Sentry is fully rolled out. It's only wired up by the new error handler.
local isSentryEnabled = FFlagCoreScriptErrorReporterUseErrorHandler
	and FStringCoreScriptSentryDsn ~= ""
	and CanReportCoreScriptSentry()

if FFlagCoreScriptErrorReporterUseErrorHandler and (isBacktraceEnabled or isSentryEnabled) then
	local processReport, staticAttributes = createCoreScriptReportProcessor()

	local piiFilter = PiiFilter.new({
		eraseTimeout = game:GetFastInt("CoreScriptBacktracePIIFilterEraseTimeoutSeconds"),
	})

	local useRateLimiting = game:GetFastFlag("CoreScriptBacktraceRepeatedErrorRateLimiting")
	local rateLimiter
	if useRateLimiting then
		rateLimiter = RateLimiter.new({
			period = game:GetFastInt("CoreScriptBacktraceRepeatedErrorRateLimitPeriod"),
			threshold = game:GetFastInt("CoreScriptBacktraceRepeatedErrorRateLimitCount"),
			processInterval = game:GetFastInt("CoreScriptBacktraceRepeatedErrorRateLimitProcessIntervalTenths") / 10,
		})
	end

	local sessionErrorReporter = SessionWithErrorReporter.new(LuaCoreScriptsSessionWithErrorConfig, 300, nil)

	local reporters = {}

	if isBacktraceEnabled then
		table.insert(
			reporters,
			BacktraceReporter.new({
				httpService = HttpService,
				token = game:GetFastString("CoreScriptBacktraceErrorUploadToken"),
				processErrorReportMethod = processReport,
			})
		)
	end

	if isSentryEnabled then
		local sentryReporter = createCoreScriptSentryReporter({
			dsn = FStringCoreScriptSentryDsn,
			processErrorReportMethod = processReport,
		})
		if sentryReporter ~= nil then
			table.insert(reporters, sentryReporter)
		end
	end

	local handleErrorDetailed = createCoreScriptErrorHandler({
		piiFilter = piiFilter,
		rateLimiter = rateLimiter,
		reporters = reporters,
		onErrorReported = function()
			LoggingProtocol:logRobloxTelemetryCounter(LuaCoreScriptsErrorV2CounterConfig, 1)

			sessionErrorReporter:reportEvent(1, nil, "ERROR")
		end,
	})

	-- Sentry can fail to initialize in sessions where Backtrace is disabled;
	-- don't count errors that no reporter will upload.
	if #reporters > 0 then
		ScriptContext.ErrorDetailed:Connect(function(...)
			local success, message = pcall(handleErrorDetailed, ...)

			if not success then
				warn(("CoreScript error reporter failed to handle an error:\n%s"):format(message))
			end
		end)
	end

	local serverVersionRemote = RobloxReplicatedStorage:WaitForChild("GetServerVersion", math.huge)
	local serverVersion = serverVersionRemote:InvokeServer()
	staticAttributes.ServerVersion = serverVersion
end

if isBacktraceEnabled and not FFlagCoreScriptErrorReporterUseErrorHandler then
	local staticAttributes = {
		LocalVersion = RunService:GetRobloxVersion(),
		BaseUrl = ContentProvider.BaseUrl,
		PlaceId = game.PlaceId,
		Platform = UserInputService:GetPlatform().Name,
		UserAgent = HttpService:GetUserAgent(),
		CoreScriptVersion = RunService:GetCoreScriptVersion(),
	}

	local piiFilter = PiiFilter.new({
		eraseTimeout = game:GetFastInt("CoreScriptBacktracePIIFilterEraseTimeoutSeconds"),
	})

	local useRateLimiting = game:GetFastFlag("CoreScriptBacktraceRepeatedErrorRateLimiting")
	local rateLimiter
	if useRateLimiting then
		rateLimiter = RateLimiter.new({
			period = game:GetFastInt("CoreScriptBacktraceRepeatedErrorRateLimitPeriod"),
			threshold = game:GetFastInt("CoreScriptBacktraceRepeatedErrorRateLimitCount"),
			processInterval = game:GetFastInt("CoreScriptBacktraceRepeatedErrorRateLimitProcessIntervalTenths") / 10,
		})
	end

	local sessionErrorReporter = SessionWithErrorReporter.new(LuaCoreScriptsSessionWithErrorConfig, 300, nil)

	local function processReport(report)
		report:addAttributes(staticAttributes)

		local playerCount = #Players:GetPlayers()
		report:addAttributes({
			PlayerCount = playerCount,
		})

		report:addAttributes({
			RobloxChannel = RunService:GetRobloxClientChannel(),
		})

		return report
	end

	local reporter = BacktraceReporter.new({
		httpService = HttpService,
		token = game:GetFastString("CoreScriptBacktraceErrorUploadToken"),
		processErrorReportMethod = processReport,
	})

	local function handleErrorDetailed(message, stack, offendingScript, details)
		if
			offendingScript ~= nil
			and (
				offendingScript:IsDescendantOf(CoreGui)
				or offendingScript:IsDescendantOf(CorePackages)
				or (
					FFlagCoreScriptErrorReporterIncludeScriptContext
					and offendingScript:IsA("CoreScript")
					and offendingScript:IsDescendantOf(ScriptContext)
				)
			)
		then
			local reactError, reactRethrow = React.unstable_parseReactError(message)
			-- if unstable_parseReactError receives a non-react error, it will
			-- just use it as the message in its output
			-- lute-lint-ignore(immutability)
			message = reactError.message
			-- if unstable_parseReactError receives a non-react error, the stack
			-- will be nil and we should use what was provided in the callback
			-- lute-lint-ignore(immutability)
			stack = reactError.stack or stack
			-- It's unclear what the details field typically contains; we'll
			-- only replace it with our rethrow description if it's absent
			-- lute-lint-ignore(immutability)
			details = details or reactRethrow

			local cleanedMessage = piiFilter:cleanPii(message)
			local cleanedStack = piiFilter:cleanPii(stack)

			if details ~= nil then
				-- lute-lint-ignore(immutability)
				details = piiFilter:cleanPii(details)
			end

			if useRateLimiting then
				-- Details includes function args, so we don't include them in the error
				-- signature. They'll still be included in the upload to Backtrace.
				local signature = cleanedMessage .. cleanedStack
				if rateLimiter:isRateLimited(signature) then
					return
				else
					rateLimiter:increment(signature)
				end
			end

			reporter:reportErrorDeferred(cleanedMessage, cleanedStack, details)
			LoggingProtocol:logRobloxTelemetryCounter(LuaCoreScriptsErrorV2CounterConfig, 1)

			sessionErrorReporter:reportEvent(1, nil, "ERROR")
		end
	end

	ScriptContext.ErrorDetailed:Connect(function(...)
		local success, message = pcall(handleErrorDetailed, ...)

		if not success then
			warn(("CoreScript error reporter failed to handle an error:\n%s"):format(message))
		end
	end)

	local serverVersionRemote = RobloxReplicatedStorage:WaitForChild("GetServerVersion", math.huge)
	local serverVersion = serverVersionRemote:InvokeServer()
	staticAttributes.ServerVersion = serverVersion
end
