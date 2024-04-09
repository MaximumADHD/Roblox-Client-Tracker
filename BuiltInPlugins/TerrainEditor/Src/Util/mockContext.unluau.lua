-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Framework)
local var2 = require(var0.Packages.MaterialFramework)
local var3 = var1.TestHelpers
local var4 = var1.ContextServices
local var5 = require(var0.Src.Util.mockResourceTable)
local var6 = {}
local var163 = {}
var163.stringResourceTable = var5
var163.translationResourceTable = var5
var2.Resources.LOCALIZATION_PROJECT_NAME = var163
local var166 = {}
var166.stringResourceTable = var5
var166.translationResourceTable = var5
var1.Resources.LOCALIZATION_PROJECT_NAME = var166
var6.libraries = {}
local var9 = var3.Instances.MockPlugin.new("TerrainEditor")
var9:GetMouse().UnitRay = Ray.new(Vector3.zero, Vector3.xAxis)
var9:GetMouse().X = 0
var9:GetMouse().Y = 0
local var10 = var4.Analytics.mock()
local var185 = var4.Localization
var185 = var6
local var12 = var185.mock(var185)
local var13 = require(var0.Src.Controllers.PluginController).mock(var9)
local var14 = require(var0.Src.Controllers.ShortcutController).new(var9, var12)
local var15 = require(var0.Src.Resources.MakeTheme)(true)
local var16 = {}
local var208 = var15
local var18 = var10
local var19 = var12
local var20 = var13
local var21 = var14
local var22 = var2.Context.StudioServices.mock()
local var23 = require(var0.Src.Controllers.ToolController).mock(var13, var14, var10, var12, var15)
return function(arg1, arg2)
   if type(arg1) == "table" then
      local var0 = false
   end
   assert(true, "Expected story to be a table")
   local var224 = var3
   var224 = arg2
   return var224.provideMockContext(var224 or var16, arg1)
end
