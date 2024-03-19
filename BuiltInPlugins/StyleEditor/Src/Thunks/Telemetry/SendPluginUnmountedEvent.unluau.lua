-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Src.Resources.Telemetry.PluginUnmountedEvent)
local var2 = require(var0.Src.Types)
local var3 = require(var0.Src.Reducers.RootReducer)
local var4 = require(var0.Src.Thunks.Types)
return function()
   return function(arg1, arg2)
      local var0 = arg1:getState()
      local var36 = {}
      var36.sessionLengthSeconds = os.time() - var0.SessionStats.SessionStartTimestamp
      var36.focusTimeSeconds = var0.SessionStats.TotalPluginFocusTimeSeconds
      local var1 = var1(var36)
      arg2.Telemetry:logTelemetryEvent()
   end
end
