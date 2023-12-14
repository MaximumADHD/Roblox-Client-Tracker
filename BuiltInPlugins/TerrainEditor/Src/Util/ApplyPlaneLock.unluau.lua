-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("TerrainEditor")
local var1 = require(var0.Src.Util.getPlaneIntersection)
local var2 = require(var0.Src.Types)
local var3 = var2.BrushSettings
local var4 = var2.Categories
local var5 = var2.PlaneLock
local var6 = var2.Tools
return function(arg1, arg2, arg3, arg4)
   local var0 = arg4.Origin.Position
   local var1 = arg2[var4.BrushSettings][var3.PlaneTransform]
   local var2 = arg4.UnitRay.Direction
   local var75 = var3
   local var78 = var5
   if arg2[var4.BrushSettings][var75.PlaneLock] == "LookVector" then
      local var0 = arg3.LookVector
      var78 = var0
      var75 = var2
      local var1 = var1(var78, var75, arg3.Position, var0)
      local var2 = {}
      var2.Distance = var1 - var0.Magnitude
      var2.Normal = var0
      var2.Position = var1
      return var2
   end
   local var5 = var5
   local var6 = var5.Manual
   if arg2[var4.BrushSettings][var3.PlaneLock] == "LookVector" then
      var6 = var0
      var5 = var2
      local var0 = var1(var6, var5, var1.Position, var1.LookVector)
      local var1 = {}
      var1.Distance = var0 - var0.Magnitude
      var1.Normal = var1.LookVector
      var1.Position = var0
      return var1
   end
   return nil
end
