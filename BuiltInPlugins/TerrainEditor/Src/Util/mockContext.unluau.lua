-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Framework)
local var2 = var1.TestHelpers
local var3 = var1.ContextServices
local var4 = var2.Instances.MockPlugin.new("TerrainEditor")
local var5 = var3.Analytics.mock()
local var6 = var3.Localization.mock()
local var7 = require(var0.Src.Controllers.PluginController).new(var4)
local var8 = require(var0.Src.Controllers.ShortcutController).new(var4, var6)
local var9 = require(var0.Src.Resources.MakeTheme)(true)
local var10 = {}
local var59 = var9
local var12 = var5
local var13 = var6
local var14 = var7
local var15 = var8
local var16 = require(var0.Src.Controllers.ToolController).mock(var7, var8, var5, var6, var9)
return function(arg1)
   if type(arg1) == "table" then
      local var0 = false
   end
   assert(true, "Expected story to be a table")
   return var2.provideMockContext(var10, arg1)
end
