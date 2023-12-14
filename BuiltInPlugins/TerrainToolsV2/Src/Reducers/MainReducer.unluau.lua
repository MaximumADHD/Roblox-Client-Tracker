-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var2 = var0.Src.Reducers
local var3 = require(var2.Tools)
local var4 = require(var2.AddTool)
local var5 = require(var2.BaseTool)
local var6 = require(var2.DrawTool)
local var7 = require(var2.ErodeTool)
local var8 = require(var2.FillTool)
local var9 = require(var2.FlattenTool)
local var10 = require(var2.GenerateTool)
local var11 = require(var2.GrowTool)
local var12 = require(var2.ImportLocalTool)
local var13 = require(var2.MaterialTool)
local var14 = require(var2.PaintTool)
local var15 = require(var2.RegionTool)
local var16 = require(var2.SeaLevelTool)
local var17 = require(var2.ReplaceTool)
local var18 = require(var2.SculptTool)
local var19 = require(var2.SmoothTool)
local var20 = require(var2.SubtractTool)
local var21 = {}
var21.GenerateTool = var10
var21.ImportLocalTool = var12
var21.RegionTool = var15
var21.FillTool = var8
var21.AddTool = var4
var21.SubtractTool = var20
var21.GrowTool = var11
var21.MaterialTool = var13
var21.ErodeTool = var7
var21.SmoothTool = var19
var21.FlattenTool = var9
var21.SeaLevelTool = var16
var21.ReplaceTool = var17
var21.PaintTool = var14
var21.DrawTool = var6
var21.SculptTool = var18
var21.BaseTool = var5
local var22 = var0.Src.Actions.ApplyToolAction
return function(arg1, arg2)
   local var0 = arg1
   if not var0 then
      local var0 = {}
      var0.Tools = var3(arg1, arg2)
      var0.GenerateTool = var10(arg1, arg2)
      var0.ImportLocalTool = var12(arg1, arg2)
      var0.RegionTool = var15(arg1, arg2)
      var0.FillTool = var8(arg1, arg2)
      var0.MaterialTool = var13(arg1, arg2)
      var0.AddTool = var4(arg1, arg2)
      var0.SubtractTool = var20(arg1, arg2)
      var0.GrowTool = var11(arg1, arg2)
      var0.ErodeTool = var7(arg1, arg2)
      var0.SmoothTool = var19(arg1, arg2)
      var0.FlattenTool = var9(arg1, arg2)
      var0.SeaLevelTool = var16(arg1, arg2)
      var0.ReplaceTool = var17(arg1, arg2)
      var0.PaintTool = var14(arg1, arg2)
      var0.DrawTool = var6(arg1, arg2)
      var0.SculptTool = var18(arg1, arg2)
      var0.BaseTool = var5(arg1, arg2)
   end
   if arg2.type == "FillTool" then
      local var0 = arg2.toolName
      local var149 = var1.Dictionary
      var149 = var0
      arg2.toolName = var21[var0](var0[var0], arg2.toolAction)
      var0 = var149.join(var149, {})
      return var0
   end
   local var159 = var1.Dictionary
   var159 = var0
   local var161 = {}
   var161.Tools = var3(var0.Tools, arg2)
   var0 = var159.join(var159, var161)
   return var0
end
