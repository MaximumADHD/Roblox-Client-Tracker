-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("FileSync")
local var1 = require(var0.Packages.Framework).ContextServices
local var2 = require(var0.Packages.React).PureComponent:extend("ServiceWrapper")
function var2.render(arg1)
   local var468 = arg1.props.analytics
   local var470 = var1.Focus
   var470 = arg1.props.focusGui
   local var1 = var470.new(var470)
   local var2 = var1
   local var474 = var2.Plugin
   var474 = arg1.props.plugin
   local var4 = var474.new(var474)
   local var5 = arg1.props.localization
   var2 = arg1.props.theme
   local var479 = var1.Store
   var479 = arg1.props.store
   local var7 = var479.new(var479)
   local var8 = var1.API.new()
   local var9 = var1
   local var487 = var9.Mouse
   var487 = arg1.props.mouse
   local var11 = var487.new(var487)
   local var12 = arg1.props.calloutController
   var9 = arg1.props.insertAsset
   local var13 = arg1.props.pluginActions
   var468 = arg1.props.children
   return var1.provide({}, var468)
end

return var2
