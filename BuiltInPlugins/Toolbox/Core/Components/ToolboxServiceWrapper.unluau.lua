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
   local var386 = var3.API.new()
   local var388 = var3.Plugin
   var388 = var1
   local var390 = var388.new(var388)
   local var391 = var0.localization
   local var7 = var5()
   local var395 = var3.Store
   var395 = var0.store
   local var9 = var395.new(var395)
   local var398 = var4
   var398 = var0.settings
   local var11 = var398.new(var398)
   local var402 = var3.Mouse
   var402 = var1:GetMouse()
   local var13 = var402.new(var402)
   local var14 = var0.analytics
   local var15 = var0.assetAnalytics
   local var16 = var0.ixp
   return var3.provide({}, var0[var2.Children])
end

return var6
