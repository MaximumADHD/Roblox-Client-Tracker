-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Rodux)
local var3 = require(var0.Src.Reducers.createMainReducer)
local var4 = require(var0.Packages.Http)
local var5 = require(var0.Src.ContextServices.NetworkingContext)
local var6 = require(var0.Src.Resources.MakeTheme)
local var7 = require(var0.Packages.Framework)
local var8 = var7.TestHelpers.Instances.MockPlugin
local var9 = var7.ContextServices
local var10 = var1.Component:extend("MockServiceWrapper")
local function fun0()
   return Instance.new("ScreenGui")
end

function var10.render(arg1)
   local var0 = arg1.props.localization
   if not var0 then
      var0 = var9.Localization.mock()
   end
   local var1 = arg1.props.plugin
   if not var1 then
      var1 = var8.new()
   end
   local var66 = var2
   var66 = arg1.props.storeState
   local var73 = var2.thunkMiddleware
   local var83 = var9.Plugin
   var83 = var1
   local var85 = var83.new(var83)
   local var86 = var9
   local var87 = var86.Focus
   var87 = arg1.props.focusGui or Instance.new("ScreenGui")
   local var89 = var87.new(var87)
   local var91 = var6()
   var86 = var0
   local var93 = var9.Store
   var93 = var66.Store.new(var3(), var66, {})
   local var9 = var93.new(var93)
   local var96 = var5
   var96 = var4.Networking.mock()
   local var11 = var96.new(var96)
   local var12 = var9.Mouse.new(var1:GetMouse())
   return var9.provide({}, arg1.props[var1.Children])
end

return var10
