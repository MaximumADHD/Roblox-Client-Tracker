-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Rodux)
local var3 = require(var0.Src.Components.ServiceWrapper)
local var4 = require(var0.Src.Resources.MakeTheme)
local var5 = require(var0.Src.Reducers.MainReducer)
local var6 = require(var0.Src.Middleware.MainMiddleware)
local var7 = require(var0.Packages.Framework).ContextServices.Localization
local var8 = var1.Component:extend("MockServiceWrapper")
function var8.render(arg1)
   local var0 = arg1.props.localization
   if not var0 then
      var0 = var7.mock()
   end
   local var50 = var2
   var50 = arg1.props.storeState
   local var2 = arg1.props.theme
   if not var2 then
      var2 = var4(true)
   end
   local var64 = {}
   var64.localization = var0
   var64.plugin = {}
   var64.focusGui = {}
   var64.store = var50.Store.new(var5, var50, var6)
   var64.theme = var2
   return var1.createElement(var3, var64, arg1.props[var1.Children])
end

return var8
