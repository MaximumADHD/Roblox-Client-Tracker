--[[
	Studio Plugin Error Reporter

	An error reporter that automatically connects to the error signal and queues up error reports.
	Reports are sent periodically, or when the queue is full, or when the plugin unloads.

	Ex)
	-- observe all errors
	local reporter = StudioPluginErrorReporter.new({
		expectedSecurityLevel = 6,
		expectedPrefix = "builtin"
	})

	-- manually report an error
	local success, result = pcall(function()
		error("Some kind of error")
	end)
	if not success then
		reporter:report(result)
	end
]]

local FFlagStudioErrorReporterFilterJunkCallstacks = game:GetFastFlag("StudioErrorReporterFilterJunkCallstacks")

local AnalyticsService = game:GetService("RbxAnalyticsService")
local ContentProvider = game:GetService("ContentProvider")
local HttpService = game:GetService("HttpService")
local RunService = game:GetService("RunService")
local ScriptContext = game:GetService("ScriptContext")

local Plugin = script.Parent.Parent
local Framework = require(Plugin.Packages.Framework)

local Networking = Framework.Http.Networking
local t = Framework.Util.Typecheck.t
local BacktraceReporter = require(script.Parent.Backtrace.BacktraceReporter)

local FStringStudioPluginsBacktraceToken = settings():GetFVariable("StudioPluginsBacktraceToken")
local STUDIO_DEVELOPMENT_VERSION = "0.0.0.1"
local STUDIO_PLUGIN_ERRORS_DIAG_COLLECTOR = "StudioPluginErrors"
local STUDIO_PLUGIN_ERRORS_BY_SESSION_DIAG_COLLECTOR = "StudioPluginErrorsBySession"
local MODULE_ERROR_STRING = "Requested module experienced an error while loading"

local IStudioPluginErrorReporterArgs = t.strictInterface({
	expectedSecurityLevel = t.integer,
	expectedPrefix = t.string,

	networking = t.optional(t.interface({
		request = t.callback,
	})),
	errorSignal = t.optional(t.interface({
		Connect = t.callback,
	})),
	services = t.optional(t.interface({
		HttpService = t.optional(t.interface({
			GetUserAgent = t.callback,
		})),
		RunService = t.optional(t.interface({
			GetRobloxVersion = t.callback,
		})),
		ContentProvider = t.optional(t.interface({
			BaseUrl = t.string,
		})),
	})),
})

local function createCollectorName(namespace, pluginName)
	return string.format("%s.%s", namespace, pluginName)
end

local StudioPluginErrorReporter = {}
StudioPluginErrorReporter.__index = StudioPluginErrorReporter

function StudioPluginErrorReporter.new(args)
	assert(IStudioPluginErrorReporterArgs(args), "Expected the correct args")
	local expectedSecurityLevel = args.expectedSecurityLevel
	local expectedPrefix = args.expectedPrefix

	assert(expectedPrefix ~= "", "expectedPrefix must not be an empty string")

	-- optional overrides for minimal security tests
	local networking = args.networking or Networking.new({ isInternal = true })
	local errorSignal = args.errorSignal or ScriptContext.ErrorDetailed
	local services = args.services or {}
	local analyticsService = services.AnalyticsService or AnalyticsService
	local runService = services.RunService or RunService
	local httpService = services.HttpService or HttpService
	local contentProvider = services.ContentProvider or ContentProvider
	local studioVersion = runService:GetRobloxVersion()
	local userAgent = httpService:GetUserAgent()
	local baseUrl = contentProvider.BaseUrl

	local self = setmetatable({
		_hasReported = {},
	}, StudioPluginErrorReporter)

	self.errorSignal = errorSignal
	self.analyticsService = analyticsService
	self.staticAttributes = {
		StudioVersion = studioVersion,
		UserAgent = userAgent,
		BaseUrl = baseUrl,

		-- TODO DEVTOOLS-4152: add additional attributes based plugin context
		--PluginKind (built-in, standalone, user)
		--PluginVersion
	}

	self.reporter = BacktraceReporter.new({
		networking = networking,
		accessToken = FStringStudioPluginsBacktraceToken,
		processErrorReportMethod = function(report)
			report:addAttributes(self.staticAttributes)
			return report
		end,
	})

	local isProductionStudio = studioVersion ~= STUDIO_DEVELOPMENT_VERSION
	if isProductionStudio then
		self.errorToken = self.errorSignal:Connect(function(errorMessage, errorStack, _, details, threadSecurity)
			-- disregard all errors not from the expected security level
			if threadSecurity ~= expectedSecurityLevel then
				return
			end

			-- disregard any plugins that don't match the expected error stack
			local index = string.find(errorStack, expectedPrefix)
			if index ~= 1 then
				return
			end

			-- CLI-52354: Luau will signal multiple times for the same error
			-- if that error happens when a module is loading. The linked ticket
			-- is a long term fix, and we can delete this block when it's in
			if FFlagStudioErrorReporterFilterJunkCallstacks then
				local moduleError = string.match(errorMessage, MODULE_ERROR_STRING)

				if moduleError then
					return
				end
			end

			local expectedPluginPattern = string.format("^(%s_%%a+%%.rbxm)", expectedPrefix) -- ex) ^builtin_%a+%.rbxm
			local pluginName = string.match(errorStack, expectedPluginPattern)
			if pluginName == nil then
				return
			end

			-- report detailed information about the error
			self:_reportError(pluginName, errorMessage, errorStack, details)
		end)
	end

	return self
end

function StudioPluginErrorReporter:_reportError(pluginName, errorMessage, errorStack, details)
	local isFirstError = not self._hasReported[pluginName]
	self.reporter:updateSharedAttributes({
		PluginName = pluginName,
		FirstErrorInSession = isFirstError and "true" or "false",
	})
	self.reporter:reportErrorDeferred(errorMessage, errorStack, details, isFirstError)
	self.analyticsService:ReportCounter(createCollectorName(STUDIO_PLUGIN_ERRORS_DIAG_COLLECTOR, pluginName), 1)

	if not self._hasReported[pluginName] then
		self._hasReported[pluginName] = true
		-- This counter is only reported once per (plugin, session) to allow us to determine how many sessions are being impacted
		self.analyticsService:ReportCounter(
			createCollectorName(STUDIO_PLUGIN_ERRORS_BY_SESSION_DIAG_COLLECTOR, pluginName),
			1
		)
	end
end

function StudioPluginErrorReporter:report(pluginName, errorMessage)
	assert(type(pluginName) == "string", "Expected pluginName to be a string")
	assert(type(errorMessage) == "string", "Expected errorMessage to be a string")
	self:_reportError(pluginName, errorMessage, debug.traceback(), nil)
end

function StudioPluginErrorReporter:stop()
	self.reporter:stop()

	if self.errorToken ~= nil then
		self.errorToken:Disconnect()
		self.errorToken = nil
	end
end

return StudioPluginErrorReporter
