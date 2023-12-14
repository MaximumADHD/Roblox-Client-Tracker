-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = var0.Src.Actions
local var2 = require(var1.ApplyToolAction)
local var3 = require(var1.ChangeBaseSize)
local var4 = require(var1.ChangeHeight)
local var5 = require(var1.ChangePivot)
local var6 = require(var1.ChangeStrength)
local var7 = require(var1.ChooseBrushShape)
local var8 = require(var1.SetAutoMaterial)
local var9 = require(var1.SetBaseSizeHeightLocked)
local var10 = require(var1.SetEditPlaneMode)
local var11 = require(var1.SetIgnoreWater)
local var12 = require(var1.SetIgnoreParts)
local var13 = require(var1.SetMaterial)
local var14 = require(var1.SetPlaneCFrame)
local var15 = require(var1.SetPlaneLock)
local var16 = require(var1.SetSnapToVoxels)
local var17 = require(var0.Src.Util.TerrainEnums)
return require(var0.Packages.RoactRodux).connect(function(arg1, arg2)
   local var0 = {}
   var0.toolName = var17.ToolId.Grow
   var0.autoMaterial = arg1.GrowTool.autoMaterial
   var0.baseSize = arg1.GrowTool.baseSize
   var0.baseSizeHeightLocked = arg1.GrowTool.baseSizeHeightLocked
   var0.brushShape = arg1.GrowTool.brushShape
   var0.height = arg1.GrowTool.height
   var0.ignoreWater = arg1.GrowTool.ignoreWater
   var0.ignoreParts = arg1.GrowTool.ignoreParts
   var0.material = arg1.GrowTool.material
   var0.pivot = arg1.GrowTool.pivot
   var0.planeLock = arg1.BaseTool.planeLock
   var0.snapToVoxels = arg1.GrowTool.snapToVoxels
   var0.strength = arg1.GrowTool.strength
   var0.editPlaneMode = arg1.BaseTool.editPlaneMode
   var0.planeCFrame = arg1.BaseTool.planeCFrame
   return var0
end, function(arg1)
   local function fun0(arg1, arg2)
      local var0 = {}
      var0.toolName = var17.ToolId.Grow
      var0.autoMaterial = arg1.GrowTool.autoMaterial
      var0.baseSize = arg1.GrowTool.baseSize
      var0.baseSizeHeightLocked = arg1.GrowTool.baseSizeHeightLocked
      var0.brushShape = arg1.GrowTool.brushShape
      var0.height = arg1.GrowTool.height
      var0.ignoreWater = arg1.GrowTool.ignoreWater
      var0.ignoreParts = arg1.GrowTool.ignoreParts
      var0.material = arg1.GrowTool.material
      var0.pivot = arg1.GrowTool.pivot
      var0.planeLock = arg1.BaseTool.planeLock
      var0.snapToVoxels = arg1.GrowTool.snapToVoxels
      var0.strength = arg1.GrowTool.strength
      var0.editPlaneMode = arg1.BaseTool.editPlaneMode
      var0.planeCFrame = arg1.BaseTool.planeCFrame
      return var0
   end
   
   local function fun1(arg1)
      arg1(var2("GrowTool", arg1))
   end
   
   local var0 = {}
   function var0.dispatchChangeBaseSize(arg1)
      var3(arg1("BaseTool", arg1))
   end
   
   function var0.dispatchChangeHeight(arg1)
      arg1(var2("GrowTool", var4(arg1)))
   end
   
   function var0.dispatchChangePivot(arg1)
      arg1(var2("GrowTool", var5(arg1)))
   end
   
   function var0.dispatchChangeStrength(arg1)
      arg1(var2("GrowTool", var6(arg1)))
   end
   
   function var0.dispatchChooseBrushShape(arg1)
      arg1(var2("GrowTool", var7(arg1)))
   end
   
   function var0.dispatchSetAutoMaterial(arg1)
      arg1(var2("GrowTool", var8(arg1)))
   end
   
   function var0.dispatchSetBaseSizeHeightLocked(arg1)
      arg1(var2("GrowTool", var9(arg1)))
   end
   
   function var0.dispatchSetIgnoreWater(arg1)
      arg1(var2("GrowTool", var11(arg1)))
   end
   
   function var0.dispatchSetIgnoreParts(arg1)
      arg1(var2("GrowTool", var12(arg1)))
   end
   
   function var0.dispatchSetMaterial(arg1)
      arg1(var2("GrowTool", var13(arg1)))
   end
   
   function var0.dispatchSetPlaneLock(arg1)
      arg1(var2("GrowTool", var15(arg1)))
   end
   
   function var0.dispatchSetEditPlaneMode(arg1)
      arg1(var2("BaseTool", var10(arg1)))
   end
   
   function var0.dispatchSetPlaneCFrame(arg1)
      arg1(var2("BaseTool", var14(arg1)))
   end
   
   function var0.dispatchSetSnapToVoxels(arg1)
      arg1(var2("BaseTool", var16(arg1)))
   end
   
   return var0
end)(require(var0.Src.Components.Tools.BaseBrush))
