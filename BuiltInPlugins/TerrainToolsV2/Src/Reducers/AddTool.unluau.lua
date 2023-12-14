-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var2 = require(var0.Src.Util.Constants)
local var3 = require(var0.Src.Util.TerrainEnums)
local var26 = {}
var26.brushShape = var3.BrushShape.Sphere
var26.baseSize = var2.INITIAL_BRUSH_SIZE
var26.height = var2.INITIAL_BRUSH_SIZE
var26.baseSizeHeightLocked = true
var26.pivot = var3.PivotType.Center
var26.planeLock = var3.PlaneLockType.Auto
var26.editPlaneMode = false
var26.planeCFrame = nil
var26.snapToVoxels = false
var26.ignoreWater = false
var26.ignoreParts = true
var26.autoMaterial = false
var26.material = Enum.Material.Grass
local var40 = {}
function var40.ChooseBrushShape(arg1, arg2)
   local var45 = var1.Dictionary
   var45 = arg1
   local var47 = {}
   var47.brushShape = arg2.brushShape
   return var45.join(var45, var47)
end

function var40.ChangeBaseSize(arg1, arg2)
   local var53 = var1.Dictionary
   var53 = arg1
   local var55 = {}
   var55.baseSize = arg2.baseSize
   return var53.join(var53, var55)
end

function var40.ChangeHeight(arg1, arg2)
   local var61 = var1.Dictionary
   var61 = arg1
   local var63 = {}
   var63.height = arg2.height
   return var61.join(var61, var63)
end

function var40.ChangePivot(arg1, arg2)
   local var69 = var1.Dictionary
   var69 = arg1
   local var71 = {}
   var71.pivot = arg2.pivot
   return var69.join(var69, var71)
end

function var40.SetPlaneLock(arg1, arg2)
   local var77 = var1.Dictionary
   var77 = arg1
   local var79 = {}
   var79.planeLock = arg2.planeLock
   return var77.join(var77, var79)
end

function var40.SetEditPlaneMode(arg1, arg2)
   local var85 = var1.Dictionary
   var85 = arg1
   local var87 = {}
   var87.editPlaneMode = arg2.editPlaneMode
   return var85.join(var85, var87)
end

function var40.SetPlaneCFrame(arg1, arg2)
   local var93 = var1.Dictionary
   var93 = arg1
   local var95 = {}
   var95.planeCFrame = arg2.planeCFrame
   return var93.join(var93, var95)
end

function var40.SetSnapToVoxels(arg1, arg2)
   local var101 = var1.Dictionary
   var101 = arg1
   local var103 = {}
   var103.snapToVoxels = arg2.snapToVoxels
   return var101.join(var101, var103)
end

function var40.SetAutoMaterial(arg1, arg2)
   local var109 = var1.Dictionary
   var109 = arg1
   local var111 = {}
   var111.autoMaterial = arg2.autoMaterial
   return var109.join(var109, var111)
end

function var40.SetIgnoreWater(arg1, arg2)
   local var117 = var1.Dictionary
   var117 = arg1
   local var119 = {}
   var119.ignoreWater = arg2.ignoreWater
   return var117.join(var117, var119)
end

function var40.SetIgnoreParts(arg1, arg2)
   local var125 = var1.Dictionary
   var125 = arg1
   local var127 = {}
   var127.ignoreParts = arg2.ignoreParts
   return var125.join(var125, var127)
end

function var40.SetMaterial(arg1, arg2)
   local var133 = var1.Dictionary
   var133 = arg1
   local var135 = {}
   var135.material = arg2.material
   return var133.join(var133, var135)
end

function var40.SetBaseSizeHeightLocked(arg1, arg2)
   local var141 = var1.Dictionary
   var141 = arg1
   local var143 = {}
   var143.baseSizeHeightLocked = arg2.locked
   return var141.join(var141, var143)
end

return require(var0.Packages.Rodux).createReducer(var26, var40)
