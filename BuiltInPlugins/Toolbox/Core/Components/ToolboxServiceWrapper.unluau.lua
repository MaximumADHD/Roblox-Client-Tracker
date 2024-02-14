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
   local var398 = var3.API.new()
   local var400 = var3.Plugin
   var400 = var1
   local var402 = var400.new(var400)
   local var403 = var0.localization
   local var7 = var5()
   local var407 = var3.Store
   var407 = var0.store
   local var9 = var407.new(var407)
   local var410 = var4
   var410 = var0.settings
   local var11 = var410.new(var410)
   local var414 = var3.Mouse
   var414 = var1:GetMouse()
   local var13 = var414.new(var414)
   local var14 = var0.analytics
   local var15 = var0.assetAnalytics
   local var16 = var0.ixp
   return var3.provide({}, var0[var2.Children])
end

return var6
