-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Framework)
local var2 = var1.ContextServices.Analytics
local var3 = var1.ContextServices.Localization
local var4 = var1.TestHelpers.Instances.MockPlugin
local var5 = require(var0.Src.Resources.MakeTheme)
local var6 = require(var0.Src.Controllers.PluginController)
local var7 = require(var0.Src.Controllers.ShortcutController)
local var8 = require(var0.Src.Controllers.ToolController)
return function()
   local var0 = var4.new("TerrainEditor")
   local var39 = var6
   var39 = var0
   local var2 = var39.mock(var39)
   local var3 = var3.mock()
   local var4 = var2.mock()
   local var48 = var7
   var48 = var0
   local var6 = var48.new(var48, var3)
   local var7 = var5(true)
   local var55 = var8
   var55 = var2
   local var9 = {}
   var9.Analytics = var4
   var9.Localization = var3
   var9.PluginController = var2
   var9.ShortcutController = var6
   var9.Stylizer = var7
   var9.ToolController = var55.mock(var55, var6, var4, var3, var7)
   return var9
end
