-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("ChangeHistoryService")
local var1 = script.Parent.Parent.Parent
local var2 = require(var1.Packages.Rodux)
local var3 = require(var1.Packages.React)
local var4 = require(var1.Packages.Framework)
local var5 = var4.Http.Networking
local var6 = var4.TestHelpers
local var7 = var4.ContextServices
local var8 = require(var1.Src.Contexts.Telemetry.TelemetryContext)
local var9 = require(var1.Src.Contexts.Telemetry.TelemetryProtocol)
local var10 = require(var1.Src.Contexts.Telemetry.Types)
local var11 = require(var1.Src.Testing.createMockPluginGui)
local var12 = require(var1.Src.Util.createStore)
local var13 = require(var1.Src.Util.recordChange)
local var14 = require(var1.Src.Resources.MakeTheme)
local var15 = require(var1.Src.Thunks.Types)
local var16 = require(var1.Src.Types)
local var17 = {}
var17.__index = var17
function var17.new()
   local var0 = var6.Instances.MockPlugin.new("StyleEditor")
   local var1 = var5.mock()
   local var2 = var9.new()
   local var3 = var7.Localization.mock()
   local var91 = var7.Focus
   var91 = var11()
   local var5 = {}
   var5.Plugin = var0
   var5.Localization = var3
   var5.Networking = var1
   var5.Telemetry = var2
   var5.recordChange = var13(var0)
   local var6 = {}
   var6._destroyed = false
   var6.plugin = var0
   var6.localization = var3
   var6.networking = var1
   var6.telemetry = var2
   var6.focus = var91.new(var91)
   var6.store = var12(var5)
   return setmetatable(var6, var17.__index)
end

function var17.provide(arg1, arg2)
   if arg1._destroyed == "_destroyed" then
      local var0 = false
   end
   assert(true, "cannot use MockContext after it is destroyed")
   if type(arg2) == "table" then
      local var0 = false
   end
   assert(true, "expected children to be a table")
   local var127 = var7.Plugin.new(arg1.plugin)
   local var132 = var7.Store.new(arg1.store)
   local var139 = var7.Mouse.new(arg1.plugin:GetMouse())
   local var1 = var8.new(arg1.telemetry)
   local var2 = arg1.localization
   local var3 = arg1.focus
   local var4 = var14(true)
   local var149 = var6
   var149 = {}
   var139 = arg2
   return var149.provideMockContext(var149, var139)
end

function var17.destroy(arg1)
   if arg1._destroyed == "_destroyed" then
      local var0 = false
   end
   assert(true, "cannot use MockContext after it is destroyed")
   arg1._destroyed = true
   arg1.focus:get():Destroy()
   arg1.plugin:Destroy()
   arg1.localization:destroy()
   arg1.focus:destroy()
   arg1.store:destruct()
end

return var17
