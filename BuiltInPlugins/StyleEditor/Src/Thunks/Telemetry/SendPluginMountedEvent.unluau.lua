-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Src.Resources.Telemetry.PluginMountedEvent)
local var2 = require(var0.Src.Actions.SessionStats.SetSessionStartTimestamp)
local var3 = require(var0.Src.Types)
local var4 = require(var0.Src.Reducers.RootReducer)
local var5 = require(var0.Src.Thunks.Types)
return function(arg1)
   return function(arg1, arg2)
      local var96 = {}
      local var97 = arg1
      var96.loadTimeMillis = var97
      local var1 = var1(var96)
      arg2.Telemetry:logTelemetryEvent()
      var97 = os.time()
      local var2 = var2(var97)
      arg1:dispatch()
   end
end
