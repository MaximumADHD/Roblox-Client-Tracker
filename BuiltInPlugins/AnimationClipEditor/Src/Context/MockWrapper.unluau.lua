-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Rodux)
local var3 = require(var0.Packages.Framework)
local var4 = var3.ContextServices
local var5 = var3.TestHelpers.ServiceWrapper
local var6 = var3.TestHelpers.Instances.MockPlugin
local var7 = require(var0.Src.Context.MainProvider)
local var8 = require(var0.Src.Util.Theme)
local var9 = require(var0.Src.Reducers.MainReducer)
local var10 = var4.Localization
local var11 = require(var0.Src.Context.Signals)
local var12 = require(var0.Src.Util.Constants)
local var13 = require(var0.Src.Util.CalloutController)
local var14 = var1.Component:extend("MockWrapper")
function var14.getMockGlobals(arg1)
   local var0 = arg1 or {}
   local var1 = var0.localization
   if not var1 then
      var1 = var10.mock()
   end
   local var2 = var0.focusGui
   if not var2 then
      var2 = Instance.new("ScreenGui")
   end
   var2.Name = "FocusGuiMock"
   if var0.Container then
      var2.Parent = var0.Container
   end
   local var3 = var0.plugin
   if not var3 then
      var3 = var6.new()
   end
   local var4 = var0.mouse
   if not var4 then
      var4 = var3:GetMouse()
   end
   local var79 = var2
   var79 = var0.storeState
   local var85 = var2.thunkMiddleware
   local var7 = var0.theme
   if not var7 then
      var7 = var8(true)
   end
   local var92 = var4.PluginActions
   var92 = var3
   local var95 = {}
   var95.id = "rerunLastStory"
   var95.text = "MOCK"
   local var10 = {}
   var10.focusGui = var2
   var10.plugin = var3
   var10.localization = var1
   var10.theme = var7
   var10.mouse = var4
   var10.store = var79.Store.new(var9, var79, {})
   var10.analytics = var4.Analytics.mock()
   var10.pluginActions = var92.new(var92, {})
   var10.signals = var11.new(var12.SIGNAL_KEYS)
   var10.calloutController = var13.new(var5.new("CalloutService", true):asService())
   return var10
end

function var14.render(arg1)
   return var1.createElement(var7, var14.getMockGlobals(arg1.props), arg1.props[var1.Children])
end

return var14
