-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var2 = require(var0.Src.Util.Constants)
local var3 = require(var0.Src.Util.TerrainEnums)
local var27 = {}
var27.brushMode = var3.BrushMode.Add
var27.brushShape = var3.BrushShape.Sphere
var27.baseSize = var2.INITIAL_BRUSH_SIZE
var27.height = var2.INITIAL_BRUSH_SIZE
var27.baseSizeHeightLocked = true
var27.pivot = var3.PivotType.Center
var27.planeLock = var3.PlaneLockType.Auto
var27.editPlaneMode = false
var27.snapToVoxels = false
var27.ignoreWater = false
var27.ignoreParts = true
var27.autoMaterial = false
var27.material = Enum.Material.Grass
local var41 = {}
function var41.ChooseBrushShape(arg1, arg2)
   local var46 = var1.Dictionary
   var46 = arg1
   local var48 = {}
   var48.brushShape = arg2.brushShape
   return var46.join(var46, var48)
end

function var41.ChangeBaseSize(arg1, arg2)
   local var54 = var1.Dictionary
   var54 = arg1
   local var56 = {}
   var56.baseSize = arg2.baseSize
   return var54.join(var54, var56)
end

function var41.ChangeHeight(arg1, arg2)
   local var62 = var1.Dictionary
   var62 = arg1
   local var64 = {}
   var64.height = arg2.height
   return var62.join(var62, var64)
end

function var41.ChangePivot(arg1, arg2)
   local var70 = var1.Dictionary
   var70 = arg1
   local var72 = {}
   var72.pivot = arg2.pivot
   return var70.join(var70, var72)
end

function var41.SetBrushMode(arg1, arg2)
   local var78 = var1.Dictionary
   var78 = arg1
   local var80 = {}
   var80.brushMode = arg2.brushMode
   return var78.join(var78, var80)
end

function var41.SetPlaneLock(arg1, arg2)
   local var86 = var1.Dictionary
   var86 = arg1
   local var88 = {}
   var88.planeLock = arg2.planeLock
   return var86.join(var86, var88)
end

function var41.SetEditPlaneMode(arg1, arg2)
   local var94 = var1.Dictionary
   var94 = arg1
   local var96 = {}
   var96.editPlaneMode = arg2.editPlaneMode
   return var94.join(var94, var96)
end

function var41.SetPlaneCFrame(arg1, arg2)
   local var102 = var1.Dictionary
   var102 = arg1
   local var104 = {}
   var104.planeCFrame = arg2.planeCFrame
   return var102.join(var102, var104)
end

function var41.SetSnapToVoxels(arg1, arg2)
   local var110 = var1.Dictionary
   var110 = arg1
   local var112 = {}
   var112.snapToVoxels = arg2.snapToVoxels
   return var110.join(var110, var112)
end

function var41.SetAutoMaterial(arg1, arg2)
   local var118 = var1.Dictionary
   var118 = arg1
   local var120 = {}
   var120.autoMaterial = arg2.autoMaterial
   return var118.join(var118, var120)
end

function var41.SetIgnoreWater(arg1, arg2)
   local var126 = var1.Dictionary
   var126 = arg1
   local var128 = {}
   var128.ignoreWater = arg2.ignoreWater
   return var126.join(var126, var128)
end

function var41.SetIgnoreParts(arg1, arg2)
   local var134 = var1.Dictionary
   var134 = arg1
   local var136 = {}
   var136.ignoreParts = arg2.ignoreParts
   return var134.join(var134, var136)
end

function var41.SetMaterial(arg1, arg2)
   local var142 = var1.Dictionary
   var142 = arg1
   local var144 = {}
   var144.material = arg2.material
   return var142.join(var142, var144)
end

function var41.SetBaseSizeHeightLocked(arg1, arg2)
   local var150 = var1.Dictionary
   var150 = arg1
   local var152 = {}
   var152.baseSizeHeightLocked = arg2.locked
   return var150.join(var150, var152)
end

return require(var0.Packages.Rodux).createReducer(var27, var41)
