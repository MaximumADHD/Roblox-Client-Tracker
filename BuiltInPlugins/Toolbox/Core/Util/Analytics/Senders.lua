local Plugin = script.Parent.Parent.Parent.Parent

local AnalyticsLogs = require(Plugin.Core.Util.Analytics.Logs)
local sendResultToKibana = require(Plugin.Libs.Framework).Util.sendResultToKibana

local RbxAnalyticsService = game:GetService("RbxAnalyticsService")

local FFlagNewPackageAnalyticsWithRefactor2 = game:GetFastFlag("NewPackageAnalyticsWithRefactor2")
local FFlagInfluxReportingPackageAnalyticsHundrethsPercent = game:GetFastInt("InfluxReportingPackageAnalyticsHundrethsPercent")

local function makeSettingName(counter)
	return "ToolboxAnalytics_" .. counter
end

local Senders = {}

function Senders.sendEventImmediately(target, context, name, args)
	AnalyticsLogs.logAnalytics("sendEventImmediately", target, context, name, args)
	RbxAnalyticsService:SendEventImmediately(target, context, name, args)
end

function Senders.sendEventDeferred(target, context, name, args)
	AnalyticsLogs.logAnalytics("sendEventDeferred", target, context, name, args)
	RbxAnalyticsService:SendEventDeferred(target, context, name, args)
end

function Senders.reportCounter(counter, amount)
	amount = amount or 1
	AnalyticsLogs.logCounterEvent("reportCounter", counter, amount)
	RbxAnalyticsService:ReportCounter(counter, amount)
end

function Senders.sendResultToKibana(result)
	assert(FFlagNewPackageAnalyticsWithRefactor2)
	sendResultToKibana(result)
end

return Senders
