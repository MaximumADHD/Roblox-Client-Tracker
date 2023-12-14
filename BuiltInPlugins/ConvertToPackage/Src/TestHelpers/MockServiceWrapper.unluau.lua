-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Rodux)
local var3 = require(var0.Src.Components.ServiceWrapper)
local var4 = require(var0.Src.Resources.MakeTheme)
local var5 = require(var0.Src.Reducers.MainReducer)
local var6 = require(var0.Src.Networking.NetworkInterfaceMock)
local var7 = require(var0.Packages.Framework).ContextServices.Localization
local var8 = var1.Component:extend("MockServiceWrapper")
function var8.render(arg1)
   local var0 = arg1.props.localization
   if not var0 then
      var0 = var7.mock()
   end
   local var50 = var2
   var50 = arg1.props.storeState
   local var56 = var2.thunkMiddleware
   local var3 = arg1.props.theme
   if not var3 then
      var3 = var4(true)
   end
   local var84 = {}
   var84.localization = var0
   var84.plugin = arg1.props.plugin or {}
   var84.focusGui = arg1.props.focusGui or {}
   var84.networkInterface = arg1.props.networkInterface or var6.new()
   var84.store = var50.Store.new(var5, var50, {})
   var84.theme = var3
   return var1.createElement(var3, var84, arg1.props[var1.Children])
end

return var8
