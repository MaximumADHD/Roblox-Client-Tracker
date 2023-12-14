-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var2 = require(var0.Src.Util.Constants)
local var3 = require(var0.Src.Util.TerrainEnums)
local var4 = var3.PlaneLockType
local var5 = var4.Off
local var28 = {}
local var29 = {}
var29.X = 0
var29.Y = 0
var29.Z = 0
var28.position = var29
local var33 = {}
var33.X = 1024
var33.Y = 512
var33.Z = 1024
var28.size = var33
var28.SourceMaterial = Enum.Material.Brick
var28.TargetMaterial = Enum.Material.CrackedLava
var28.ReplaceMode = var3.ReplaceMode.Box
var28.brushShape = var3.BrushShape.Sphere
var28.baseSize = var2.INITIAL_BRUSH_SIZE
var28.height = var2.INITIAL_BRUSH_SIZE
var28.baseSizeHeightLocked = true
var28.pivot = var3.PivotType.Center
var28.planeLock = var4.Off
var28.editPlaneMode = false
var28.snapToVoxels = false
var28.ignoreWater = true
var28.ignoreParts = true
local var50 = {}
function var50.ChangePosition(arg1, arg2)
   local var55 = var1.Dictionary
   var55 = arg1
   local var57 = {}
   var57.position = arg2.position
   return var55.join(var55, var57)
end

function var50.ChangeSize(arg1, arg2)
   local var63 = var1.Dictionary
   var63 = arg1
   local var65 = {}
   var65.size = arg2.size
   return var63.join(var63, var65)
end

function var50.SetSourceMaterial(arg1, arg2)
   local var71 = var1.Dictionary
   var71 = arg1
   local var73 = {}
   var73.SourceMaterial = arg2.SourceMaterial
   return var71.join(var71, var73)
end

function var50.SetTargetMaterial(arg1, arg2)
   local var79 = var1.Dictionary
   var79 = arg1
   local var81 = {}
   var81.TargetMaterial = arg2.TargetMaterial
   return var79.join(var79, var81)
end

function var50.SetReplaceMode(arg1, arg2)
   local var87 = var1.Dictionary
   var87 = arg1
   local var89 = {}
   var89.ReplaceMode = arg2.ReplaceMode
   return var87.join(var87, var89)
end

function var50.ChooseBrushShape(arg1, arg2)
   local var95 = var1.Dictionary
   var95 = arg1
   local var97 = {}
   var97.brushShape = arg2.brushShape
   return var95.join(var95, var97)
end

function var50.ChangeBaseSize(arg1, arg2)
   local var103 = var1.Dictionary
   var103 = arg1
   local var105 = {}
   var105.baseSize = arg2.baseSize
   return var103.join(var103, var105)
end

function var50.ChangeHeight(arg1, arg2)
   local var111 = var1.Dictionary
   var111 = arg1
   local var113 = {}
   var113.height = arg2.height
   return var111.join(var111, var113)
end

function var50.ChangePivot(arg1, arg2)
   local var119 = var1.Dictionary
   var119 = arg1
   local var121 = {}
   var121.pivot = arg2.pivot
   return var119.join(var119, var121)
end

function var50.SetPlaneLock(arg1, arg2)
   local var127 = var1.Dictionary
   var127 = arg1
   local var129 = {}
   var129.planeLock = arg2.planeLock
   return var127.join(var127, var129)
end

function var50.SetPlaneCFrame(arg1, arg2)
   local var135 = var1.Dictionary
   var135 = arg1
   local var137 = {}
   var137.planeCFrame = arg2.planeCFrame
   return var135.join(var135, var137)
end

function var50.SetEditPlaneMode(arg1, arg2)
   local var143 = var1.Dictionary
   var143 = arg1
   local var145 = {}
   var145.editPlaneMode = arg2.editPlaneMode
   return var143.join(var143, var145)
end

function var50.SetSnapToVoxels(arg1, arg2)
   local var151 = var1.Dictionary
   var151 = arg1
   local var153 = {}
   var153.snapToVoxels = arg2.snapToVoxels
   return var151.join(var151, var153)
end

function var50.SetIgnoreWater(arg1, arg2)
   local var159 = var1.Dictionary
   var159 = arg1
   local var161 = {}
   var161.ignoreWater = arg2.ignoreWater
   return var159.join(var159, var161)
end

function var50.SetIgnoreParts(arg1, arg2)
   local var167 = var1.Dictionary
   var167 = arg1
   local var169 = {}
   var169.ignoreParts = arg2.ignoreParts
   return var167.join(var167, var169)
end

function var50.SetBaseSizeHeightLocked(arg1, arg2)
   local var175 = var1.Dictionary
   var175 = arg1
   local var177 = {}
   var177.baseSizeHeightLocked = arg2.locked
   return var175.join(var175, var177)
end

return require(var0.Packages.Rodux).createReducer(var28, var50)
