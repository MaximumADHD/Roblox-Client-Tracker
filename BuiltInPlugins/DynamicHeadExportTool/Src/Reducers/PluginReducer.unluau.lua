-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("DynamicHeadExportTool")
local var1 = require(var0.Packages.Cryo)
local var2 = var0.Src.Actions
local var42 = {}
var42.enabled = false
var42.mode = nil
var42.screen = nil
var42.rig = nil
var42.errorText = nil
var42.accessoryType = Enum.AccessoryType.Unknown
var42.animationId = nil
var42.colorMap = nil
var42.metalnessMap = nil
var42.normalMap = nil
var42.roughnessMap = nil
var42.ownershipTransferText = ""
function require(var2.SetEnabled).name(arg1, arg2)
   local var60 = var1.Dictionary
   var60 = arg1
   local var62 = {}
   var62.enabled = arg2.enabled
   return var60.join(var60, var62)
end

function require(var2.SetErrorText).name(arg1, arg2)
   local var69 = var1.Dictionary
   var69 = arg1
   local var71 = {}
   var71.errorText = arg2.errorText
   return var69.join(var69, var71)
end

function require(var2.SetMode).name(arg1, arg2)
   local var78 = var1.Dictionary
   var78 = arg1
   local var80 = {}
   var80.mode = arg2.mode
   return var78.join(var78, var80)
end

function require(var2.SetScreen).name(arg1, arg2)
   local var87 = var1.Dictionary
   var87 = arg1
   local var89 = {}
   var89.screen = arg2.screen
   return var87.join(var87, var89)
end

function require(var2.SetRig).name(arg1, arg2)
   local var96 = var1.Dictionary
   var96 = arg1
   local var98 = {}
   var98.rig = arg2.rig
   return var96.join(var96, var98)
end

function require(var2.SetSurfaceAppearanceIds).name(arg1, arg2)
   local var105 = var1.Dictionary
   var105 = arg1
   local var107 = {}
   var107.colorMap = arg2.colorMap
   var107.metalnessMap = arg2.metalnessMap
   var107.normalMap = arg2.normalMap
   var107.roughnessMap = arg2.roughnessMap
   return var105.join(var105, var107)
end

function require(var2.SetAccessoryType).name(arg1, arg2)
   local var117 = var1.Dictionary
   var117 = arg1
   local var119 = {}
   var119.accessoryType = arg2.accessoryType
   return var117.join(var117, var119)
end

function require(var2.SetAnimationId).name(arg1, arg2)
   local var126 = var1.Dictionary
   var126 = arg1
   local var128 = {}
   var128.animationId = arg2.animationId
   return var126.join(var126, var128)
end

function require(var2.SetOwnershipTransferText).name(arg1, arg2)
   local var135 = var1.Dictionary
   var135 = arg1
   local var137 = {}
   var137.ownershipTransferText = arg2.ownershipTransferText
   return var135.join(var135, var137)
end

return require(var0.Packages.Rodux).createReducer(var42, {})
