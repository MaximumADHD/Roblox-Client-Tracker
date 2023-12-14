-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = var0.Packages
local var2 = require(var1.Roact)
local var3 = require(var1.Framework).ContextServices
local var4 = require(var0.Core.ContextServices.Settings)
local var5 = require(var0.Core.Util.makeTheme)
local var6 = var2.PureComponent:extend("ToolboxServiceWrapper")
function var6.render(arg1)
   local var0 = arg1.props
   local var1 = var0.plugin
   local var2 = var0.theme
   local var3 = var0.ixp
   local var414 = var3.API.new()
   local var416 = var3.Plugin
   var416 = var1
   local var418 = var416.new(var416)
   local var419 = var0.localization
   local var7 = var5()
   local var423 = var3.Store
   var423 = var0.store
   local var9 = var423.new(var423)
   local var426 = var4
   var426 = var0.settings
   local var11 = var426.new(var426)
   local var430 = var3.Mouse
   var430 = var1:GetMouse()
   local var13 = var430.new(var430)
   local var14 = var0.analytics
   local var15 = var0.assetAnalytics
   local var16 = var0.ixp
   return var3.provide({}, var0[var2.Children])
end

return var6
