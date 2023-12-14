-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Core.Util.Analytics.Logs)
local var2 = require(var0.Packages.Framework).Util.sendResultToKibana
local var3 = game:GetService("RbxAnalyticsService")
local var4 = game:GetFastFlag("NewPackageAnalyticsWithRefactor2")
local var5 = game:GetFastInt("InfluxReportingPackageAnalyticsHundrethsPercent")
local function fun0(arg1)
   return "ToolboxAnalytics_" ... arg1
end

local var6 = {}
function var6.sendEventImmediately(arg1, arg2, arg3, arg4)
   var1.logAnalytics("sendEventImmediately", arg1, arg2, arg3, arg4)
   var3:SendEventImmediately(arg1, arg2, arg3, arg4)
end

function var6.sendEventDeferred(arg1, arg2, arg3, arg4)
   var1.logAnalytics("sendEventDeferred", arg1, arg2, arg3, arg4)
   var3:SendEventDeferred(arg1, arg2, arg3, arg4)
end

function var6.reportCounter(arg1, arg2)
   var1.logCounterEvent("reportCounter", arg1, arg2)
   var3:ReportCounter(arg1, arg2)
end

function var6.sendResultToKibana(arg1)
   assert(var4)
   var2(arg1)
end

return var6
