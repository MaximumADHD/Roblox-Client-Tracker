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
var27.strength = var2.INITIAL_BRUSH_STRENGTH
var27.pivot = var3.PivotType.Center
var27.planeLock = var3.PlaneLockType.Off
var27.editPlaneMode = false
var27.snapToVoxels = false
var27.ignoreWater = true
var27.ignoreParts = true
var27.autoMaterial = false
var27.material = Enum.Material.Grass
local var42 = {}
function var42.ChooseBrushShape(arg1, arg2)
   local var47 = var1.Dictionary
   var47 = arg1
   local var49 = {}
   var49.brushShape = arg2.brushShape
   return var47.join(var47, var49)
end

function var42.ChangeBaseSize(arg1, arg2)
   local var55 = var1.Dictionary
   var55 = arg1
   local var57 = {}
   var57.baseSize = arg2.baseSize
   return var55.join(var55, var57)
end

function var42.ChangeHeight(arg1, arg2)
   local var63 = var1.Dictionary
   var63 = arg1
   local var65 = {}
   var65.height = arg2.height
   return var63.join(var63, var65)
end

function var42.ChangePivot(arg1, arg2)
   local var71 = var1.Dictionary
   var71 = arg1
   local var73 = {}
   var73.pivot = arg2.pivot
   return var71.join(var71, var73)
end

function var42.ChangeStrength(arg1, arg2)
   local var79 = var1.Dictionary
   var79 = arg1
   local var81 = {}
   var81.strength = arg2.strength
   return var79.join(var79, var81)
end

function var42.SetBrushMode(arg1, arg2)
   local var87 = var1.Dictionary
   var87 = arg1
   local var89 = {}
   var89.brushMode = arg2.brushMode
   return var87.join(var87, var89)
end

function var42.SetPlaneLock(arg1, arg2)
   local var95 = var1.Dictionary
   var95 = arg1
   local var97 = {}
   var97.planeLock = arg2.planeLock
   return var95.join(var95, var97)
end

function var42.SetEditPlaneMode(arg1, arg2)
   local var103 = var1.Dictionary
   var103 = arg1
   local var105 = {}
   var105.editPlaneMode = arg2.editPlaneMode
   return var103.join(var103, var105)
end

function var42.SetPlaneCFrame(arg1, arg2)
   local var111 = var1.Dictionary
   var111 = arg1
   local var113 = {}
   var113.planeCFrame = arg2.planeCFrame
   return var111.join(var111, var113)
end

function var42.SetSnapToVoxels(arg1, arg2)
   local var119 = var1.Dictionary
   var119 = arg1
   local var121 = {}
   var121.snapToVoxels = arg2.snapToVoxels
   return var119.join(var119, var121)
end

function var42.SetIgnoreWater(arg1, arg2)
   local var127 = var1.Dictionary
   var127 = arg1
   local var129 = {}
   var129.ignoreWater = arg2.ignoreWater
   return var127.join(var127, var129)
end

function var42.SetIgnoreParts(arg1, arg2)
   local var135 = var1.Dictionary
   var135 = arg1
   local var137 = {}
   var137.ignoreParts = arg2.ignoreParts
   return var135.join(var135, var137)
end

function var42.SetAutoMaterial(arg1, arg2)
   local var143 = var1.Dictionary
   var143 = arg1
   local var145 = {}
   var145.autoMaterial = arg2.autoMaterial
   return var143.join(var143, var145)
end

function var42.SetMaterial(arg1, arg2)
   local var151 = var1.Dictionary
   var151 = arg1
   local var153 = {}
   var153.material = arg2.material
   return var151.join(var151, var153)
end

function var42.SetBaseSizeHeightLocked(arg1, arg2)
   local var159 = var1.Dictionary
   var159 = arg1
   local var161 = {}
   var161.baseSizeHeightLocked = arg2.locked
   return var159.join(var159, var161)
end

return require(var0.Packages.Rodux).createReducer(var27, var42)
