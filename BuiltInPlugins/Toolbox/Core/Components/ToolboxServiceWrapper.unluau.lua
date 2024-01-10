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
   local var408 = var3.API.new()
   local var410 = var3.Plugin
   var410 = var1
   local var412 = var410.new(var410)
   local var413 = var0.localization
   local var7 = var5()
   local var417 = var3.Store
   var417 = var0.store
   local var9 = var417.new(var417)
   local var420 = var4
   var420 = var0.settings
   local var11 = var420.new(var420)
   local var424 = var3.Mouse
   var424 = var1:GetMouse()
   local var13 = var424.new(var424)
   local var14 = var0.analytics
   local var15 = var0.assetAnalytics
   local var16 = var0.ixp
   return var3.provide({}, var0[var2.Children])
end

return var6
