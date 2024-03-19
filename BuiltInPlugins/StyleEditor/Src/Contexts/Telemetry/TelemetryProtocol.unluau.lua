-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("MessageBusService")
local var1 = script.Parent.Parent.Parent.Parent
local var2 = require(var1.Packages.Framework).Util.Typecheck.t
local var3 = require(var1.Src.Util.DebugFlags)
local var4 = require(script.Parent.Types)
local var5 = {}
var5.RobloxTelemetry = "RobloxTelemetry"
var5.EphemeralCounter = "EphemeralCounter"
var5.EphemeralStat = "EphemeralStat"
local var6 = {}
var6.UNSPECIFIED = "UNSPECIFIED"
var6.EventIngest = "EventIngest"
var6.Points = "Points"
var6.EphemeralCounter = "EphemeralCounter"
var6.EphemeralStat = "EphemeralStat"
local var7 = {}
var7.addPlaceId = "addPlaceId"
var7.addUniverseId = "addUniverseId"
var7.addPlaceInstanceId = "addPlaceInstanceId"
var7.addSessionId = "addSessionId"
local var42 = {}
var42.eventName = var2.string
var42.backends = var2.array(var2.valueOf(var6))
local var51 = {}
var51.eventType = var2.valueOf(var5)
var51.config = var2.interface(var42)
local var58 = {}
var58.customFields = var2.optional(var2.keys(var2.string))
local var66 = {}
var66.incrementValue = var2.number
local var70 = {}
var70.statValue = var2.number
var51.data = var2.union(var2.none, var2.interface(var58), var2.interface(var66), var2.interface(var70))
local var10 = var2.interface(var51)
local var11 = {}
var11.EventTypes = var5
var11.Backends = var6
var11.StandardizedFields = var7
var11.LOG_EVENT_WITH_TIMESTAMP = var0:GetMessageId("Logging", "logEventWithTimestamp")
var11.GET_TIMESTAMP = var0:GetMessageId("Logging", "getTimestamp")
var11.LOG_EVENT_FROM_LUA = var0:GetMessageId("Logging", "logEventFromLua")
var11.ONE_HUNDRED_PERCENT = 10000
var11.__index = var11
function var11.new(arg1)
   local var0 = {}
   var0._messageBus = arg1 or var0
   setmetatable(var0, var11)
   return var0
end

function var11.logEventWithTimestamp(arg1, arg2, arg3, arg4)
   local var0 = {}
   var0.eventName = arg2
   var0.timestamp = arg3
   var0.metadata = arg4
   arg1._messageBus:Call(arg1.LOG_EVENT_WITH_TIMESTAMP, var0)
end

function var11.logEvent(arg1, arg2, arg3)
   arg1:logEventWithTimestamp(arg2, 0, arg3)
end

function var11.getTimestamp(arg1)
   return arg1._messageBus:Call(arg1.GET_TIMESTAMP, {})
end

function var11.logTelemetryEvent(arg1, arg2)
   local var123 = var10(arg2)
   assert()
   local var1 = var3
   if var1.LogTelemetry() then
      local var133 = `StyleEditor logged telemetry event \\'%*\\':`
      var1 = var133
      var133 = arg2
      print(var1, var133)
   end
   arg1._messageBus:Call(arg1.LOG_EVENT_FROM_LUA, arg2)
end

return var11
