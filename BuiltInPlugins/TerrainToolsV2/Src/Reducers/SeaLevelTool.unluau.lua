-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var13 = {}
local var14 = {}
var14.X = 0
var14.Y = 0
var14.Z = 0
var13.position = var14
local var18 = {}
var18.X = 1024
var18.Y = 512
var18.Z = 1024
var13.size = var18
var13.planePositionY = 0
var13.heightPicker = false
var13.SelectionTransform = CFrame.new()
var13.SelectionSize = Vector3.new(64, 32, 64)
var13.SnapToVoxels = true
local var32 = {}
function var32.ChangeSelection(arg1, arg2)
   local var38 = var1.Dictionary
   var38 = arg1
   local var40 = {}
   var40.SelectionTransform = arg2.selectionTransform
   var40.SelectionSize = arg2.selectionSize
   return var38.join(var38, var40)
end

function var32.ChangePosition(arg1, arg2)
   local var46 = var1.Dictionary
   var46 = arg1
   local var48 = {}
   var48.position = arg2.position
   return var46.join(var46, var48)
end

function var32.ChangeSize(arg1, arg2)
   local var54 = var1.Dictionary
   var54 = arg1
   local var56 = {}
   var56.size = arg2.size
   return var54.join(var54, var56)
end

function var32.ChangePlanePositionY(arg1, arg2)
   local var62 = var1.Dictionary
   var62 = arg1
   local var64 = {}
   var64.planePositionY = arg2.planePositionY
   return var62.join(var62, var64)
end

function var32.SetHeightPicker(arg1, arg2)
   local var70 = var1.Dictionary
   var70 = arg1
   local var72 = {}
   var72.heightPicker = arg2.heightPicker
   return var70.join(var70, var72)
end

function var32.SetSnapToVoxels(arg1, arg2)
   local var78 = var1.Dictionary
   var78 = arg1
   local var80 = {}
   var80.SnapToVoxels = arg2.snapToVoxels
   return var78.join(var78, var80)
end

return require(var0.Packages.Rodux).createReducer(var13, var32)
