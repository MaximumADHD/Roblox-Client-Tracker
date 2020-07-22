--[[
	Studio Plugin Error Reporter

	An error reporter that automatically connects to the error signal and queues up error reports.
	Reports are sent periodically, or when the queue is full, or when the plugin unloads.

	Ex)
	-- observe all errors
	local reporter = StudioPluginErrorReporter.new({
		plugin = plugin,
	})

	-- manually report an error
	local success, result = pcall(function()
		error("Some kind of error")
	end)
	if not success then
		reporter:report(result)
	end
]]

local AnalyticsService = game:GetService("RbxAnalyticsService")
local ContentProvider = game:GetService("ContentProvider")
local HttpService = game:GetService("HttpService")
local RunService = game:GetService("RunService")
local ScriptContext = game:GetService("ScriptContext")

local Framework = script.Parent.Parent
local Networking = require(Framework.Http.Networking)
local t = require(Framework.Util.Typecheck.t)
local BacktraceReporter = require(script.Parent.Backtrace.BacktraceReporter)

local FStringStudioPluginsBacktraceToken = settings():GetFVariable("StudioPluginsBacktraceToken")
local STUDIO_DEVELOPMENT_VERSION = "0.0.0.1"
local STUDIO_PLUGIN_ERRORS_DIAG_COLLECTOR = "StudioPluginErrors"

local IStudioPluginErrorReporterArgs = t.strictInterface({
	plugin = t.any,

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
	}))
})

local StudioPluginErrorReporter = {}
StudioPluginErrorReporter.__index = StudioPluginErrorReporter

function StudioPluginErrorReporter.new(args)
	assert(IStudioPluginErrorReporterArgs(args), "Expected the correct args")
	local pluginName = args.plugin.Name

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

	local self = setmetatable({}, StudioPluginErrorReporter)
	
	self.errorSignal = errorSignal
	self.diagCollectorName = string.format("%s.%s", STUDIO_PLUGIN_ERRORS_DIAG_COLLECTOR, pluginName)
	self.analyticsService = analyticsService
	self.staticAttributes = {
		StudioVersion = studioVersion,
		UserAgent = userAgent,
		BaseUrl = baseUrl,
		PluginName = pluginName,

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
		self.errorToken = self.errorSignal:Connect(function(errorMessage, errorStack, _, details)
			-- disregard all errors not from this plugin
			if string.find(errorStack, pluginName) ~= nil then
				-- report detailed information about the error
				self.reporter:reportErrorDeferred(errorMessage, errorStack, details)

				-- keep track of the total errors
				self.analyticsService:ReportCounter(self.diagCollectorName, 1)
			end
		end)

		self.unloadingToken = args.plugin.Unloading:Connect(function()
			self:stop()
		end)
	end

	return self
end

function StudioPluginErrorReporter:report(errorMessage)
	assert(type(errorMessage) == "string", "Expected errorMessage to be a string")
	self.reporter:reportErrorDeferred(errorMessage, debug.traceback())
	self.analyticsService:ReportCounter(self.diagCollectorName, 1)
end

function StudioPluginErrorReporter:stop()
	self.reporter:stop()

	if self.errorToken ~= nil then
		self.errorToken:Disconnect()
		self.errorToken = nil
	end

	if self.unloadingToken ~= nil then
		self.unloadingToken:Disconnect()
		self.unloadingToken = nil
	end
end

return StudioPluginErrorReporter
