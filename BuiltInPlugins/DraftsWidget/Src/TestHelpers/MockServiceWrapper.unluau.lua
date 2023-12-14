-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Rodux)
local var3 = require(var0.Packages.Framework).ContextServices.Localization
local var4 = require(var0.Src.Reducers.MainReducer)
local var5 = require(var0.Src.TestHelpers.MockDraftsService)
local var6 = require(var0.Src.TestHelpers.MockPlugin)
local var7 = require(var0.Src.Resources.MakeTheme)
local var8 = require(var0.Src.Components.ServiceWrapper)
local var9 = var1.Component:extend("MockServiceWrapper")
function var9.render(arg1)
   local var0 = arg1.props.draftsService
   if not var0 then
      var0 = var5.new(var5.TestCases.DEFAULT)
   end
   local var1 = arg1.props.localization
   if not var1 then
      var1 = var3.mock()
   end
   local var2 = arg1.props.plugin
   if not var2 then
      var2 = var6.new()
   end
   local var282 = var2
   var282 = arg1.props.storeState
   local var288 = var2.thunkMiddleware
   local var4 = arg1.props.theme
   if not var4 then
      var4 = var7(true)
   end
   local var298 = {}
   var298.draftsService = var0
   var298.localization = var1
   var298.plugin = var2
   var298.store = var282.Store.new(var4, var282, {})
   var298.theme = var4
   return var1.createElement(var8, var298, arg1.props[var1.Children])
end

return var9
