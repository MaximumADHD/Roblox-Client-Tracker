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
var26.snapToVoxels = false
var26.ignoreWater = true
var26.ignoreParts = true
local var37 = {}
function var37.ChooseBrushShape(arg1, arg2)
   local var42 = var1.Dictionary
   var42 = arg1
   local var44 = {}
   var44.brushShape = arg2.brushShape
   return var42.join(var42, var44)
end

function var37.ChangeBaseSize(arg1, arg2)
   local var50 = var1.Dictionary
   var50 = arg1
   local var52 = {}
   var52.baseSize = arg2.baseSize
   return var50.join(var50, var52)
end

function var37.ChangeHeight(arg1, arg2)
   local var58 = var1.Dictionary
   var58 = arg1
   local var60 = {}
   var60.height = arg2.height
   return var58.join(var58, var60)
end

function var37.ChangePivot(arg1, arg2)
   local var66 = var1.Dictionary
   var66 = arg1
   local var68 = {}
   var68.pivot = arg2.pivot
   return var66.join(var66, var68)
end

function var37.SetPlaneLock(arg1, arg2)
   local var74 = var1.Dictionary
   var74 = arg1
   local var76 = {}
   var76.planeLock = arg2.planeLock
   return var74.join(var74, var76)
end

function var37.SetEditPlaneMode(arg1, arg2)
   local var82 = var1.Dictionary
   var82 = arg1
   local var84 = {}
   var84.editPlaneMode = arg2.editPlaneMode
   return var82.join(var82, var84)
end

function var37.SetPlaneCFrame(arg1, arg2)
   local var90 = var1.Dictionary
   var90 = arg1
   local var92 = {}
   var92.planeCFrame = arg2.planeCFrame
   return var90.join(var90, var92)
end

function var37.SetSnapToVoxels(arg1, arg2)
   local var98 = var1.Dictionary
   var98 = arg1
   local var100 = {}
   var100.snapToVoxels = arg2.snapToVoxels
   return var98.join(var98, var100)
end

function var37.SetIgnoreWater(arg1, arg2)
   local var106 = var1.Dictionary
   var106 = arg1
   local var108 = {}
   var108.ignoreWater = arg2.ignoreWater
   return var106.join(var106, var108)
end

function var37.SetIgnoreParts(arg1, arg2)
   local var114 = var1.Dictionary
   var114 = arg1
   local var116 = {}
   var116.ignoreParts = arg2.ignoreParts
   return var114.join(var114, var116)
end

function var37.SetBaseSizeHeightLocked(arg1, arg2)
   local var122 = var1.Dictionary
   var122 = arg1
   local var124 = {}
   var124.baseSizeHeightLocked = arg2.locked
   return var122.join(var122, var124)
end

return require(var0.Packages.Rodux).createReducer(var26, var37)
