-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = var0.Src.Actions
local var2 = require(var1.ApplyToolAction)
local var3 = require(var1.ChangeBaseSize)
local var4 = require(var1.ChangeHeight)
local var5 = require(var1.ChangePivot)
local var6 = require(var1.ChangePlanePositionY)
local var7 = require(var1.ChangeStrength)
local var8 = require(var1.ChooseBrushShape)
local var9 = require(var1.ChooseFlattenMode)
local var10 = require(var1.SetBaseSizeHeightLocked)
local var11 = require(var1.SetFixedPlane)
local var12 = require(var1.SetHeightPicker)
local var13 = require(var1.SetIgnoreWater)
local var14 = require(var1.SetIgnoreParts)
local var15 = require(var1.SetSnapToVoxels)
local var16 = require(var0.Src.Util.TerrainEnums).ToolId
return require(var0.Packages.RoactRodux).connect(function(arg1, arg2)
   local var0 = {}
   var0.toolName = var16.Flatten
   var0.baseSize = arg1.FlattenTool.baseSize
   var0.baseSizeHeightLocked = arg1.FlattenTool.baseSizeHeightLocked
   var0.brushShape = arg1.FlattenTool.brushShape
   var0.fixedPlane = arg1.FlattenTool.fixedPlane
   var0.flattenMode = arg1.FlattenTool.flattenMode
   var0.height = arg1.FlattenTool.height
   var0.heightPicker = arg1.FlattenTool.heightPicker
   var0.ignoreWater = arg1.FlattenTool.ignoreWater
   var0.ignoreParts = arg1.FlattenTool.ignoreParts
   var0.pivot = arg1.FlattenTool.pivot
   var0.planePositionY = arg1.FlattenTool.planePositionY
   var0.snapToVoxels = arg1.FlattenTool.snapToVoxels
   var0.strength = arg1.FlattenTool.strength
   return var0
end, function(arg1)
   local function fun0(arg1, arg2)
      local var0 = {}
      var0.toolName = var16.Flatten
      var0.baseSize = arg1.FlattenTool.baseSize
      var0.baseSizeHeightLocked = arg1.FlattenTool.baseSizeHeightLocked
      var0.brushShape = arg1.FlattenTool.brushShape
      var0.fixedPlane = arg1.FlattenTool.fixedPlane
      var0.flattenMode = arg1.FlattenTool.flattenMode
      var0.height = arg1.FlattenTool.height
      var0.heightPicker = arg1.FlattenTool.heightPicker
      var0.ignoreWater = arg1.FlattenTool.ignoreWater
      var0.ignoreParts = arg1.FlattenTool.ignoreParts
      var0.pivot = arg1.FlattenTool.pivot
      var0.planePositionY = arg1.FlattenTool.planePositionY
      var0.snapToVoxels = arg1.FlattenTool.snapToVoxels
      var0.strength = arg1.FlattenTool.strength
      return var0
   end
   
   local var0 = {}
   function var0.dispatchChangeBaseSize(arg1)
      var3(arg1("FlattenTool", arg1))
   end
   
   function var0.dispatchChangeHeight(arg1)
      arg1(var2("FlattenTool", var4(arg1)))
   end
   
   function var0.dispatchChangePivot(arg1)
      arg1(var2("FlattenTool", var5(arg1)))
   end
   
   function var0.dispatchChangePlanePositionY(arg1)
      arg1(var2("FlattenTool", var6(arg1)))
   end
   
   function var0.dispatchChangeStrength(arg1)
      arg1(var2("FlattenTool", var7(arg1)))
   end
   
   function var0.dispatchChooseBrushShape(arg1)
      arg1(var2("FlattenTool", var8(arg1)))
   end
   
   function var0.dispatchChooseFlattenMode(arg1)
      arg1(var2("FlattenTool", var9(arg1)))
   end
   
   function var0.dispatchSetBaseSizeHeightLocked(arg1)
      arg1(var2("FlattenTool", var10(arg1)))
   end
   
   function var0.dispatchSetFixedPlane(arg1)
      arg1(var2("FlattenTool", var11(arg1)))
   end
   
   function var0.dispatchSetHeightPicker(arg1)
      arg1(var2("FlattenTool", var12(arg1)))
   end
   
   function var0.dispatchSetIgnoreWater(arg1)
      arg1(var2("FlattenTool", var13(arg1)))
   end
   
   function var0.dispatchSetIgnoreParts(arg1)
      arg1(var2("FlattenTool", var14(arg1)))
   end
   
   function var0.dispatchSetSnapToVoxels(arg1)
      arg1(var2("FlattenTool", var15(arg1)))
   end
   
   return var0
end)(require(var0.Src.Components.Tools.BaseBrush))
