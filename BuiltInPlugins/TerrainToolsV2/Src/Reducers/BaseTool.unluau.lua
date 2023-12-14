-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var2 = require(var0.Src.Util.Constants)
local var3 = require(var0.Src.Util.TerrainEnums)
local var28 = {}
var28.autoMaterial = false
var28.baseSize = var2.INITIAL_BRUSH_SIZE
var28.baseSizeHeightLocked = true
var28.brushShape = var3.BrushShape.Sphere
var28.editPlaneMode = false
var28.fixedPlane = false
var28.flattenMode = var3.FlattenMode.Both
var28.height = var2.INITIAL_BRUSH_SIZE
var28.heightPicker = false
var28.ignoreParts = true
var28.ignoreWater = false
var28.material = Enum.Material.Grass
var28.pivot = var3.PivotType.Center
var28.planeCFrame = nil
var28.planeLock = var3.PlaneLockType.Off
var28.planePositionY = var2.INITIAL_PLANE_POSITION_Y
var28.planeLockActive = true
local var46 = {}
var46.X = 0
var46.Y = 0
var46.Z = 0
var28.position = var46
var28.ReplaceMode = var3.ReplaceMode.Box
local var51 = {}
var51.X = 1024
var51.Y = 512
var51.Z = 1024
var28.size = var51
var28.snapToVoxels = false
var28.strength = var2.INITIAL_BRUSH_STRENGTH
var28.SourceMaterial = Enum.Material.Brick
var28.TargetMaterial = Enum.Material.CrackedLava
local var59 = {}
function var59.ChangeBaseSize(arg1, arg2)
   local var64 = var1.Dictionary
   var64 = arg1
   local var66 = {}
   var66.baseSize = arg2.baseSize
   return var64.join(var64, var66)
end

function var59.ChangeHeight(arg1, arg2)
   local var72 = var1.Dictionary
   var72 = arg1
   local var74 = {}
   var74.height = arg2.height
   return var72.join(var72, var74)
end

function var59.ChangePivot(arg1, arg2)
   local var80 = var1.Dictionary
   var80 = arg1
   local var82 = {}
   var82.pivot = arg2.pivot
   return var80.join(var80, var82)
end

function var59.ChangePlanePositionY(arg1, arg2)
   local var88 = var1.Dictionary
   var88 = arg1
   local var90 = {}
   var90.planePositionY = arg2.planePositionY
   return var88.join(var88, var90)
end

function var59.ChangePosition(arg1, arg2)
   local var96 = var1.Dictionary
   var96 = arg1
   local var98 = {}
   var98.position = arg2.position
   return var96.join(var96, var98)
end

function var59.ChangeSize(arg1, arg2)
   local var104 = var1.Dictionary
   var104 = arg1
   local var106 = {}
   var106.size = arg2.size
   return var104.join(var104, var106)
end

function var59.ChangeStrength(arg1, arg2)
   local var112 = var1.Dictionary
   var112 = arg1
   local var114 = {}
   var114.strength = arg2.strength
   return var112.join(var112, var114)
end

function var59.ChooseBrushShape(arg1, arg2)
   local var120 = var1.Dictionary
   var120 = arg1
   local var122 = {}
   var122.brushShape = arg2.brushShape
   return var120.join(var120, var122)
end

function var59.ChooseFlattenMode(arg1, arg2)
   local var128 = var1.Dictionary
   var128 = arg1
   local var130 = {}
   var130.flattenMode = arg2.flattenMode
   return var128.join(var128, var130)
end

function var59.SetAutoMaterial(arg1, arg2)
   local var136 = var1.Dictionary
   var136 = arg1
   local var138 = {}
   var138.autoMaterial = arg2.autoMaterial
   return var136.join(var136, var138)
end

function var59.SetBaseSizeHeightLocked(arg1, arg2)
   local var144 = var1.Dictionary
   var144 = arg1
   local var146 = {}
   var146.baseSizeHeightLocked = arg2.locked
   return var144.join(var144, var146)
end

function var59.SetEditPlaneMode(arg1, arg2)
   local var152 = var1.Dictionary
   var152 = arg1
   local var154 = {}
   var154.editPlaneMode = arg2.editPlaneMode
   return var152.join(var152, var154)
end

function var59.SetFixedPlane(arg1, arg2)
   local var160 = var1.Dictionary
   var160 = arg1
   local var162 = {}
   var162.fixedPlane = arg2.fixedPlane
   return var160.join(var160, var162)
end

function var59.SetHeightPicker(arg1, arg2)
   local var168 = var1.Dictionary
   var168 = arg1
   local var170 = {}
   var170.heightPicker = arg2.heightPicker
   return var168.join(var168, var170)
end

function var59.SetIgnoreParts(arg1, arg2)
   local var176 = var1.Dictionary
   var176 = arg1
   local var178 = {}
   var178.ignoreParts = arg2.ignoreParts
   return var176.join(var176, var178)
end

function var59.SetIgnoreWater(arg1, arg2)
   local var184 = var1.Dictionary
   var184 = arg1
   local var186 = {}
   var186.ignoreWater = arg2.ignoreWater
   return var184.join(var184, var186)
end

function var59.SetMaterial(arg1, arg2)
   local var192 = var1.Dictionary
   var192 = arg1
   local var194 = {}
   var194.material = arg2.material
   return var192.join(var192, var194)
end

function var59.SetPlaneCFrame(arg1, arg2)
   local var200 = var1.Dictionary
   var200 = arg1
   local var202 = {}
   var202.planeCFrame = arg2.planeCFrame
   return var200.join(var200, var202)
end

function var59.SetPlaneLock(arg1, arg2)
   local var208 = var1.Dictionary
   var208 = arg1
   local var210 = {}
   var210.planeLock = arg2.planeLock
   return var208.join(var208, var210)
end

function var59.SetPlaneLockActive(arg1, arg2)
   local var216 = var1.Dictionary
   var216 = arg1
   local var218 = {}
   var218.planeLockActive = arg2.planeLockActive
   return var216.join(var216, var218)
end

function var59.SetReplaceMode(arg1, arg2)
   local var224 = var1.Dictionary
   var224 = arg1
   local var226 = {}
   var226.ReplaceMode = arg2.ReplaceMode
   return var224.join(var224, var226)
end

function var59.SetSnapToVoxels(arg1, arg2)
   local var232 = var1.Dictionary
   var232 = arg1
   local var234 = {}
   var234.snapToVoxels = arg2.snapToVoxels
   return var232.join(var232, var234)
end

function var59.SetSourceMaterial(arg1, arg2)
   local var240 = var1.Dictionary
   var240 = arg1
   local var242 = {}
   var242.SourceMaterial = arg2.SourceMaterial
   return var240.join(var240, var242)
end

function var59.SetTargetMaterial(arg1, arg2)
   local var248 = var1.Dictionary
   var248 = arg1
   local var250 = {}
   var250.TargetMaterial = arg2.TargetMaterial
   return var248.join(var248, var250)
end

return require(var0.Packages.Rodux).createReducer(var28, var59)
