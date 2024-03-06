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
   local var183 = var2
   var183 = arg1.props.storeState
   local var190 = var2.thunkMiddleware
   local var200 = var9.Plugin
   var200 = var1
   local var202 = var200.new(var200)
   local var203 = var9
   local var204 = var203.Focus
   var204 = arg1.props.focusGui or Instance.new("ScreenGui")
   local var206 = var204.new(var204)
   local var208 = var6()
   var203 = var0
   local var210 = var9.Store
   var210 = var183.Store.new(var3(), var183, {})
   local var9 = var210.new(var210)
   local var213 = var5
   var213 = var4.Networking.mock()
   local var11 = var213.new(var213)
   local var12 = var9.Mouse.new(var1:GetMouse())
   return var9.provide({}, arg1.props[var1.Children])
end

return var10
