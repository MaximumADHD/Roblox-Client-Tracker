-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("ChangeHistoryService")
local var1 = script.Parent.Parent.Parent
local var2 = require(var1.Packages.React)
local var3 = require(var1.Packages.Framework)
local var4 = var3.Http.Networking
local var5 = var3.TestHelpers
local var6 = var3.ContextServices
local var7 = require(var1.Src.Contexts.Telemetry.TelemetryProtocol)
local var8 = require(var1.Src.Contexts.Telemetry.TelemetryContext)
local var9 = require(var1.Src.Testing.createMockPluginGui)
local var10 = require(var1.Src.Util.createStore)
local var11 = require(var1.Src.Util.recordChange)
local var12 = require(var1.Src.Resources.MakeTheme)
local var13 = require(var1.Src.Thunks.Types)
return function(arg1)
   if type(arg1) == "table" then
      local var0 = false
   end
   assert(true, "Expected children to be a table")
   local var0 = var5.Instances.MockPlugin.new("StyleEditor")
   local var72 = var6.Plugin
   var72 = var0
   local var2 = var7.new()
   local var3 = var6.Localization.mock()
   local var4 = {}
   var4.Plugin = var72.new(var72)
   var4.Localization = var3
   var4.Networking = var4.mock()
   var4.Telemetry = var2
   var4.recordChange = var11(var0)
   local var91 = var6
   local var92 = var91.Focus
   var92 = var9()
   var91 = var4
   local var99 = var6.Store
   var99 = var10(var91)
   local var101 = var99.new(var99)
   local var107 = var6.Mouse.new(var0:GetMouse())
   local var108 = var8
   var108 = var2
   local var110 = var108.new(var108)
   local var9 = var3
   local var10 = var92.new(var92)
   local var11 = var12(true)
   local var116 = var5
   var116 = {}
   var110 = arg1
   return var116.provideMockContext(var116, var110)
end
