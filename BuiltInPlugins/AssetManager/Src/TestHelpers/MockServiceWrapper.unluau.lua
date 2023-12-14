-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Rodux)
local var3 = require(var0.Src.TestHelpers.MockPlugin)
local var4 = require(var0.Src.Components.ServiceWrapper)
local var5 = require(var0.Src.Reducers.MainReducer)
local var6 = require(var0.Packages.Framework).ContextServices.Localization
local var7 = var1.Component:extend("MockServiceWrapper")
function var7.getMockGlobals(arg1)
   local var0 = arg1 or {}
   local var1 = var0.localization
   if not var1 then
      var1 = var6.mock()
   end
   local var2 = var0.focusGui
   if not var2 then
      var2 = Instance.new("ScreenGui")
   end
   local var3 = var0.plugin
   if not var3 then
      var3 = var3.new()
   end
   local var4 = var0.mouse
   if not var4 then
      var4 = var3:GetMouse()
   end
   local var138 = var2
   var138 = var0.storeState
   local var6 = var2.thunkMiddleware
   local var7 = var0.theme
   if not var7 then
      var7 = require(var0.Src.Resources.Theme)(true)
   end
   local var8 = {}
   var8.focusGui = var2
   var8.plugin = var3
   var8.localization = var1
   var8.theme = var7
   var8.mouse = var4
   var8.store = var138.Store.new(var5, var138, {})
   return var8
end

function var7.render(arg1)
   return var1.createElement(var4, var7.getMockGlobals(arg1.props), arg1.props[var1.Children])
end

return var7
