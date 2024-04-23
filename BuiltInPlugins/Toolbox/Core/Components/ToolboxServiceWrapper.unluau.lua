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
   local var392 = var3.API.new()
   local var394 = var3.Plugin
   var394 = var1
   local var396 = var394.new(var394)
   local var397 = var0.localization
   local var7 = var5()
   local var401 = var3.Store
   var401 = var0.store
   local var9 = var401.new(var401)
   local var404 = var4
   var404 = var0.settings
   local var11 = var404.new(var404)
   local var408 = var3.Mouse
   var408 = var1:GetMouse()
   local var13 = var408.new(var408)
   local var14 = var0.analytics
   local var15 = var0.assetAnalytics
   local var16 = var0.ixp
   return var3.provide({}, var0[var2.Children])
end

return var6
