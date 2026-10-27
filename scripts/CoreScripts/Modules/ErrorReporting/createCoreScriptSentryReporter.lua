--!nonstrict
local CorePackages = game:GetService("CorePackages")
local HttpService = game:GetService("HttpService")
local RunService = game:GetService("RunService")

local ErrorReporters = require(CorePackages.Workspace.Packages.ErrorReporters)
local SentryReporter = ErrorReporters.SentryReporter

export type Config = {
	dsn: string,
	processErrorReportMethod: (report: any) -> any,
	-- Defaults to the RunService instance; overridable for tests
	runService: {
		IsStudio: (self: any) -> boolean,
		GetCoreScriptVersion: (self: any) -> string?,
	}?,
}

local CUSTOM_METADATA_GROUP = "CoreScripts"

-- Returns nil rather than erroring so a bad DSN can't break Backtrace
-- reporting, which runs alongside Sentry during the migration.
local function createCoreScriptSentryReporter(config: Config)
	local runService = config.runService or RunService
	local isStudio = false

	-- Sentry only forwards the attributes it has context mappings for, so copy
	-- them into a custom metadata group (sent as its own Sentry context) to keep
	-- fields like PlaceId and ServerVersion that Backtrace triage relies on.
	local function processErrorReport(report)
		local processedReport = config.processErrorReportMethod(report)
		processedReport:addCustomMetadata({
			[CUSTOM_METADATA_GROUP] = processedReport.attributes,
		})
		return processedReport
	end

	local success, result = pcall(function()
		isStudio = runService:IsStudio()

		return SentryReporter.new({
			httpService = HttpService,
			processErrorReportMethod = processErrorReport,
			dsn = config.dsn,
			environment = if isStudio then "development" else "production",
			release = runService:GetCoreScriptVersion() or "unknown",
			-- CoreScripts run in every creator's Studio playtest, so keep
			-- SentryReporter's per-error debug output out of their Output window.
			disableDevelopmentLogging = true,
		})
	end)

	if not success then
		if isStudio then
			warn(("[CoreScriptSentryReporter] Failed to initialize: %s"):format(tostring(result)))
		end
		return nil
	end

	return result
end

return createCoreScriptSentryReporter
