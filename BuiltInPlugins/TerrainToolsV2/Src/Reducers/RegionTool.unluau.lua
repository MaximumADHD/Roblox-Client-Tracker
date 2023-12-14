-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var2 = require(var0.Src.Util.Constants)
local var67 = {}
var67.LiveEdit = true
var67.mergeEmpty = false
var67.SelectionTransform = CFrame.new()
var67.SelectionSize = Vector3.one * var2.VOXEL_RESOLUTION
var67.SourceTransform = CFrame.new()
var67.SourceSize = Vector3.one * var2.VOXEL_RESOLUTION
var67.TargetTransform = CFrame.new()
var67.TargetSize = Vector3.one * var2.VOXEL_RESOLUTION
var67.TransformMode = require(var0.Src.Util.TerrainEnums).TransformMode.Select
local var87 = {}
function var87.ChangeSelection(arg1, arg2)
   local var0 = arg2.selectionTransform
   local var1 = arg2.selectionSize
   local var93 = var1.Dictionary
   var93 = arg1
   local var95 = {}
   var95.SelectionTransform = var0
   var95.SelectionSize = var1
   var95.SourceTransform = var0
   var95.SourceSize = var1
   return var93.join(var93, var95)
end

function var87.ChangeSource(arg1, arg2)
   local var0 = arg2.sourceTransform
   local var1 = arg2.sourceSize
   local var102 = var1.Dictionary
   var102 = arg1
   local var104 = {}
   var104.SourceTransform = var0
   var104.SourceSize = var1
   var104.TargetTransform = var0
   var104.TargetSize = var1
   return var102.join(var102, var104)
end

function var87.ChangeTarget(arg1, arg2)
   local var111 = var1.Dictionary
   var111 = arg1
   local var113 = {}
   var113.TargetTransform = arg2.targetTransform
   var113.TargetSize = arg2.targetSize
   return var111.join(var111, var113)
end

function var87.SetLiveEdit(arg1, arg2)
   local var119 = var1.Dictionary
   var119 = arg1
   local var121 = {}
   var121.LiveEdit = arg2.liveEdit
   return var119.join(var119, var121)
end

function var87.SetMergeEmpty(arg1, arg2)
   local var127 = var1.Dictionary
   var127 = arg1
   local var129 = {}
   var129.mergeEmpty = arg2.mergeEmpty
   return var127.join(var127, var129)
end

function var87.SetTransformMode(arg1, arg2)
   local var135 = var1.Dictionary
   var135 = arg1
   local var137 = {}
   var137.TransformMode = arg2.TransformMode
   return var135.join(var135, var137)
end

return require(var0.Packages.Rodux).createReducer(var67, var87)
