-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var18 = {}
var18.Material = Enum.Material.Grass
var18.ReplaceMaterial = false
var18.SourceMaterial = Enum.Material.Grass
var18.TargetMaterial = Enum.Material.Brick
var18.TargetTransform = CFrame.new()
var18.TargetSize = Vector3.one * require(var0.Src.Util.Constants).VOXEL_RESOLUTION
local var28 = {}
function var28.SetMaterial(arg1, arg2)
   local var33 = var1.Dictionary
   var33 = arg1
   local var35 = {}
   var35.Material = arg2.material
   return var33.join(var33, var35)
end

function var28.SetReplaceMaterial(arg1, arg2)
   local var41 = var1.Dictionary
   var41 = arg1
   local var43 = {}
   var43.ReplaceMaterial = arg2.replaceMaterial
   return var41.join(var41, var43)
end

function var28.SetSourceMaterial(arg1, arg2)
   local var49 = var1.Dictionary
   var49 = arg1
   local var51 = {}
   var51.SourceMaterial = arg2.SourceMaterial
   return var49.join(var49, var51)
end

function var28.SetTargetMaterial(arg1, arg2)
   local var57 = var1.Dictionary
   var57 = arg1
   local var59 = {}
   var59.TargetMaterial = arg2.TargetMaterial
   return var57.join(var57, var59)
end

function var28.ChangeTarget(arg1, arg2)
   local var66 = var1.Dictionary
   var66 = arg1
   local var68 = {}
   var68.TargetTransform = arg2.targetTransform
   var68.TargetSize = arg2.targetSize
   return var66.join(var66, var68)
end

return require(var0.Packages.Rodux).createReducer(var18, var28)
