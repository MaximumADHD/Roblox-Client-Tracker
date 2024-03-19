-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.React).useContext
local var2 = require(var0.Packages.Framework).ContextServices
local var3 = require(var0.Src.Contexts.Telemetry.TelemetryContext)
local var4 = require(var0.Src.Contexts.Telemetry.Types)
local var5 = require(var0.Src.Types)
return function()
   local var0 = var1(var2.Context)
   local var1 = {}
   var1.Focus = var0[var2.Focus.Key]
   var1.Localization = var0[var2.Localization.Key]
   var1.Plugin = var0[var2.Plugin.Key]
   var1.Telemetry = var0[var3.Key]
   return var1
end
