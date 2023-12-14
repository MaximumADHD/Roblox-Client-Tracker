-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("RbxAnalyticsService")
local var1 = {}
local var2 = game:GetFastInt("StudioAudioDiscoveryOpenAnalyticThrottle")
local var3 = game:GetFastInt("StudioAudioDiscoverySelectAnalyticsThrottle")
local var4 = game:GetFastInt("StudioAudioDiscoveryBreakdownAnalyticsThrottle")
local var5 = game:getFastInt("StudioAudioDiscoveryPermissionCheckAnalyticsThrottle")
function var1._sendToKibana(arg1, arg2, arg3, arg4)
   task.spawn(var0.ReportInfluxSeries, var0, arg2, arg3, arg4)
end

ReportedOpen = false
function var1.reportOpen(arg1)
   if not ReportedOpen then
      ReportedOpen = true
      arg1:_sendToKibana("StudioAudioDiscoveryOpen", {}, var2)
   end
end

ReportedSelect = false
function var1.reportSelect(arg1)
   if not ReportedSelect then
      ReportedSelect = true
      arg1:_sendToKibana("StudioAudioDiscoverySelect", {}, var3)
   end
end

function var1.reportBreakdown(arg1, arg2, arg3)
   local var0 = {}
   var0.good = arg2
   var0.bad = arg3
   arg1:_sendToKibana("StudioAudioDiscoveryBreakdown", var0, var4)
end

function var1.reportPermissionCheck(arg1, arg2)
   local var0 = {}
   var0.responseCode = arg2.responseCode
   var0.responseBody = arg2.responseBody
   var0.responseTimeMs = arg2.responseTimeMs
   arg1:_sendToKibana("StudioAudioDiscoveryPermissionCheck", var0, var5)
end

return var1
