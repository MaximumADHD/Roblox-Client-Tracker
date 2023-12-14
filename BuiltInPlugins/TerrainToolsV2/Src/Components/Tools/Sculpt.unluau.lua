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
local var10 = require(var1.SetBrushMode)
local var11 = require(var1.SetEditPlaneMode)
local var12 = require(var1.SetIgnoreWater)
local var13 = require(var1.SetIgnoreParts)
local var14 = require(var1.SetMaterial)
local var15 = require(var1.SetPlaneCFrame)
local var16 = require(var1.SetPlaneLock)
local var17 = require(var1.SetSnapToVoxels)
local var18 = require(var0.Src.Util.TerrainEnums)
return require(var0.Packages.RoactRodux).connect(function(arg1, arg2)
   local var0 = {}
   var0.toolName = var18.ToolId.Sculpt
   var0.autoMaterial = arg1.SculptTool.autoMaterial
   var0.baseSize = arg1.SculptTool.baseSize
   var0.baseSizeHeightLocked = arg1.SculptTool.baseSizeHeightLocked
   var0.brushMode = arg1.SculptTool.brushMode
   var0.brushShape = arg1.SculptTool.brushShape
   var0.height = arg1.SculptTool.height
   var0.ignoreWater = arg1.SculptTool.ignoreWater
   var0.ignoreParts = arg1.SculptTool.ignoreParts
   var0.material = arg1.SculptTool.material
   var0.pivot = arg1.SculptTool.pivot
   var0.planeLock = arg1.BaseTool.planeLock
   var0.snapToVoxels = arg1.SculptTool.snapToVoxels
   var0.strength = arg1.SculptTool.strength
   var0.editPlaneMode = arg1.BaseTool.editPlaneMode
   var0.planeCFrame = arg1.BaseTool.planeCFrame
   return var0
end, function(arg1)
   local function fun0(arg1, arg2)
      local var0 = {}
      var0.toolName = var18.ToolId.Sculpt
      var0.autoMaterial = arg1.SculptTool.autoMaterial
      var0.baseSize = arg1.SculptTool.baseSize
      var0.baseSizeHeightLocked = arg1.SculptTool.baseSizeHeightLocked
      var0.brushMode = arg1.SculptTool.brushMode
      var0.brushShape = arg1.SculptTool.brushShape
      var0.height = arg1.SculptTool.height
      var0.ignoreWater = arg1.SculptTool.ignoreWater
      var0.ignoreParts = arg1.SculptTool.ignoreParts
      var0.material = arg1.SculptTool.material
      var0.pivot = arg1.SculptTool.pivot
      var0.planeLock = arg1.BaseTool.planeLock
      var0.snapToVoxels = arg1.SculptTool.snapToVoxels
      var0.strength = arg1.SculptTool.strength
      var0.editPlaneMode = arg1.BaseTool.editPlaneMode
      var0.planeCFrame = arg1.BaseTool.planeCFrame
      return var0
   end
   
   local function fun1(arg1)
      arg1(var2("SculptTool", arg1))
   end
   
   local var0 = {}
   function var0.dispatchSetAutoMaterial(arg1)
      var8(arg1("BaseTool", arg1))
   end
   
   function var0.dispatchChangeBaseSize(arg1)
      arg1(var2("SculptTool", var3(arg1)))
   end
   
   function var0.dispatchChangeHeight(arg1)
      arg1(var2("SculptTool", var4(arg1)))
   end
   
   function var0.dispatchChangePivot(arg1)
      arg1(var2("SculptTool", var5(arg1)))
   end
   
   function var0.dispatchChangeStrength(arg1)
      arg1(var2("SculptTool", var6(arg1)))
   end
   
   function var0.dispatchChooseBrushShape(arg1)
      arg1(var2("SculptTool", var7(arg1)))
   end
   
   function var0.dispatchSetBrushMode(arg1)
      arg1(var2("SculptTool", var10(arg1)))
   end
   
   function var0.dispatchSetBaseSizeHeightLocked(arg1)
      arg1(var2("SculptTool", var9(arg1)))
   end
   
   function var0.dispatchSetIgnoreWater(arg1)
      arg1(var2("SculptTool", var12(arg1)))
   end
   
   function var0.dispatchSetIgnoreParts(arg1)
      arg1(var2("SculptTool", var13(arg1)))
   end
   
   function var0.dispatchSetMaterial(arg1)
      arg1(var2("SculptTool", var14(arg1)))
   end
   
   function var0.dispatchSetPlaneLock(arg1)
      arg1(var2("SculptTool", var16(arg1)))
   end
   
   function var0.dispatchSetEditPlaneMode(arg1)
      arg1(var2("BaseTool", var11(arg1)))
   end
   
   function var0.dispatchSetPlaneCFrame(arg1)
      arg1(var2("BaseTool", var15(arg1)))
   end
   
   function var0.dispatchSetSnapToVoxels(arg1)
      arg1(var2("BaseTool", var17(arg1)))
   end
   
   return var0
end)(require(var0.Src.Components.Tools.BaseBrush))
