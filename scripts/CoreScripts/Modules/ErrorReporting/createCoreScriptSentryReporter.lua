--!nonstrict
local AppStorageService = game:GetService("AppStorageService")
local CorePackages = game:GetService("CorePackages")
local HttpService = game:GetService("HttpService")
local RunService = game:GetService("RunService")

local ErrorReporters = require(CorePackages.Workspace.Packages.ErrorReporters)
local SentryReporter = ErrorReporters.SentryReporter

local FFlagCoreScriptSentryReportDeviceContext =
	require(script.Parent.Parent.Flags.FFlagCoreScriptSentryReportDeviceContext)

local SystemInfoProtocol = if FFlagCoreScriptSentryReportDeviceContext
	then require(CorePackages.Workspace.Packages.SystemInfoProtocol).SystemInfoProtocol
	else nil :: never

local FFlagCoreScriptSentrySetUser = require(script.Parent.Parent.Flags.FFlagCoreScriptSentrySetUser)
local FFlagCoreScriptSentryReportTags = require(script.Parent.Parent.Flags.FFlagCoreScriptSentryReportTags)

export type Config = {
	dsn: string,
	processErrorReportMethod: (report: any) -> any,
	-- Defaults to the RunService instance; overridable for tests
	runService: {
		IsStudio: (self: any) -> boolean,
		GetCoreScriptVersion: (self: any) -> string?,
		GetControlAndVariantRolloutFlags: (self: unknown) -> (string?, string?),
	}?,
	-- Defaults to the AppStorageService instance; overridable for tests
	appStorageService: {
		GetItem: (self: unknown, key: string) -> string?,
	}?,
}

local CUSTOM_METADATA_GROUP = "CoreScripts"

local function getDeviceAttributes(runService): { [string]: string }
	local attributes: { [string]: string } = {}

	local systemInfoSuccess, systemInfo = pcall(function()
		return SystemInfoProtocol.default:getSystemInfo(SystemInfoProtocol.ALL_INFO_NAMES)
	end)
	if systemInfoSuccess and typeof(systemInfo) == "table" then
		for name, value in systemInfo do
			attributes[name] = value
		end
	end

	local rolloutFlagsSuccess, controlRolloutFlags, variantRolloutFlags = pcall(function()
		return runService:GetControlAndVariantRolloutFlags()
	end)
	if rolloutFlagsSuccess then
		if controlRolloutFlags ~= nil and controlRolloutFlags ~= "" then
			attributes.RolloutFlagsInControl = controlRolloutFlags
		end
		if variantRolloutFlags ~= nil and variantRolloutFlags ~= "" then
			attributes.RolloutFlagsInVariant = variantRolloutFlags
		end
	end

	return attributes
end

local function getSentryUserId(appStorageService): string
	local success, appInstallationId = pcall(function()
		return appStorageService:GetItem("AppInstallationId")
	end)
	if success and appInstallationId ~= nil and appInstallationId ~= "" then
		return appInstallationId
	end
	return HttpService:GenerateGUID(false)
end

local TAG_ATTRIBUTES = {
	client_platform = "Platform",
	place_id = "PlaceId",
	app_version = "LocalVersion",
	roblox_channel = "RobloxChannel",
}

local function getTags(attributes): { [string]: string }
	local tags = {}
	for tagName, attributeName in TAG_ATTRIBUTES do
		local value = attributes[attributeName]
		if value ~= nil then
			tags[tagName] = tostring(value)
		end
	end
	return tags
end

-- Returns nil rather than erroring so a bad DSN can't break Backtrace
-- reporting, which runs alongside Sentry during the migration.
local function createCoreScriptSentryReporter(config: Config)
	local runService = config.runService or RunService
	local appStorageService = config.appStorageService or AppStorageService
	local isStudio = false

	-- Sentry only forwards the attributes it has context mappings for, so copy
	-- them into a custom metadata group (sent as its own Sentry context) to keep
	-- fields like PlaceId and ServerVersion that Backtrace triage relies on.
	local function processErrorReport(report)
		local processedReport = config.processErrorReportMethod(report)
		processedReport:addCustomMetadata({
			[CUSTOM_METADATA_GROUP] = processedReport.attributes,
		})
		if FFlagCoreScriptSentryReportTags then
			processedReport.tags = getTags(processedReport.attributes)
		end
		if FFlagCoreScriptSentryReportDeviceContext then
			processedReport:addAttributes(getDeviceAttributes(runService))
		end
		return processedReport
	end

	local success, result = pcall(function()
		isStudio = runService:IsStudio()

		local reporter = SentryReporter.new({
			httpService = HttpService,
			processErrorReportMethod = processErrorReport,
			dsn = config.dsn,
			environment = if isStudio then "development" else "production",
			release = runService:GetCoreScriptVersion() or "unknown",
			-- CoreScripts run in every creator's Studio playtest, so keep
			-- SentryReporter's per-error debug output out of their Output window.
			disableDevelopmentLogging = true,
		})

		if FFlagCoreScriptSentrySetUser and reporter ~= nil then
			reporter:setUser({ id = getSentryUserId(appStorageService) })
		end

		return reporter
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
