-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("FileSync")
local var1 = require(var0.Packages.Framework).ContextServices
local var2 = require(var0.Packages.React).PureComponent:extend("ServiceWrapper")
function var2.render(arg1)
   local var357 = arg1.props.analytics
   local var359 = var1.Focus
   var359 = arg1.props.focusGui
   local var1 = var359.new(var359)
   local var2 = var1
   local var363 = var2.Plugin
   var363 = arg1.props.plugin
   local var4 = var363.new(var363)
   local var5 = arg1.props.localization
   var2 = arg1.props.theme
   local var368 = var1.Store
   var368 = arg1.props.store
   local var7 = var368.new(var368)
   local var8 = var1.API.new()
   local var9 = var1
   local var376 = var9.Mouse
   var376 = arg1.props.mouse
   local var11 = var376.new(var376)
   local var12 = arg1.props.calloutController
   var9 = arg1.props.insertAsset
   local var13 = arg1.props.pluginActions
   var357 = arg1.props.children
   return var1.provide({}, var357)
end

return var2
