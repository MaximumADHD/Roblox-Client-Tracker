-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Src.Reducers.RootReducer)
local var2 = require(var0.Src.Contexts.Telemetry.Types)
local var3 = require(var0.Src.Thunks.Types)
return function(arg1)
   return function(arg1, arg2)
      arg2.Telemetry:logTelemetryEvent(arg1)
   end
end
