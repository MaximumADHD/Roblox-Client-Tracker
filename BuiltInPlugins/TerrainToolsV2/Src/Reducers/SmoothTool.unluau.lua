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
var26.strength = var2.INITIAL_BRUSH_STRENGTH
var26.pivot = var3.PivotType.Center
var26.planeLock = var3.PlaneLockType.Off
var26.editPlaneMode = false
var26.snapToVoxels = false
var26.ignoreWater = false
var26.ignoreParts = true
local var38 = {}
function var38.ChooseBrushShape(arg1, arg2)
   local var43 = var1.Dictionary
   var43 = arg1
   local var45 = {}
   var45.brushShape = arg2.brushShape
   return var43.join(var43, var45)
end

function var38.ChangeBaseSize(arg1, arg2)
   local var51 = var1.Dictionary
   var51 = arg1
   local var53 = {}
   var53.baseSize = arg2.baseSize
   return var51.join(var51, var53)
end

function var38.ChangeHeight(arg1, arg2)
   local var59 = var1.Dictionary
   var59 = arg1
   local var61 = {}
   var61.height = arg2.height
   return var59.join(var59, var61)
end

function var38.ChangeStrength(arg1, arg2)
   local var67 = var1.Dictionary
   var67 = arg1
   local var69 = {}
   var69.strength = arg2.strength
   return var67.join(var67, var69)
end

function var38.ChangePivot(arg1, arg2)
   local var75 = var1.Dictionary
   var75 = arg1
   local var77 = {}
   var77.pivot = arg2.pivot
   return var75.join(var75, var77)
end

function var38.SetPlaneLock(arg1, arg2)
   local var83 = var1.Dictionary
   var83 = arg1
   local var85 = {}
   var85.planeLock = arg2.planeLock
   return var83.join(var83, var85)
end

function var38.SetEditPlaneMode(arg1, arg2)
   local var91 = var1.Dictionary
   var91 = arg1
   local var93 = {}
   var93.editPlaneMode = arg2.editPlaneMode
   return var91.join(var91, var93)
end

function var38.SetPlaneCFrame(arg1, arg2)
   local var99 = var1.Dictionary
   var99 = arg1
   local var101 = {}
   var101.planeCFrame = arg2.planeCFrame
   return var99.join(var99, var101)
end

function var38.SetSnapToVoxels(arg1, arg2)
   local var107 = var1.Dictionary
   var107 = arg1
   local var109 = {}
   var109.snapToVoxels = arg2.snapToVoxels
   return var107.join(var107, var109)
end

function var38.SetBaseSizeHeightLocked(arg1, arg2)
   local var115 = var1.Dictionary
   var115 = arg1
   local var117 = {}
   var117.baseSizeHeightLocked = arg2.locked
   return var115.join(var115, var117)
end

function var38.SetIgnoreWater(arg1, arg2)
   local var123 = var1.Dictionary
   var123 = arg1
   local var125 = {}
   var125.ignoreWater = arg2.ignoreWater
   return var123.join(var123, var125)
end

function var38.SetIgnoreParts(arg1, arg2)
   local var131 = var1.Dictionary
   var131 = arg1
   local var133 = {}
   var133.ignoreParts = arg2.ignoreParts
   return var131.join(var131, var133)
end

return require(var0.Packages.Rodux).createReducer(var26, var38)
