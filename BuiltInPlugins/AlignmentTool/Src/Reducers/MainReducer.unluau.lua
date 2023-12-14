-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Dash).join
local var2 = {}
var2.toolEnabled = false
var2.alignEnabled = false
var2.disabledReason = {}
var2.alignableObjects = {}
var2.alignmentMode = require(var0.Src.Utility.AlignmentMode).Center
var2.alignmentSpace = require(var0.Src.Utility.AlignmentSpace).World
local var35 = {}
var35.X = false
var35.Y = false
local var38 = false
var35.Z = var38
var2.enabledAxes = var35
var2.relativeTo = require(var0.Src.Utility.RelativeTo).Selection
var2.previewVisible = false
var38 = var2
local var42 = {}
function var42.SetToolEnabled(arg1, arg2)
   local var47 = {}
   var47.toolEnabled = arg2.toolEnabled
   return var1(arg1, var47)
end

function var42.SetAlignEnabled(arg1, arg2)
   local var54 = {}
   var54.alignEnabled = arg2.alignEnabled
   var54.disabledReason = arg2.disabledReason
   return var1(arg1, var54)
end

function var42.SetAlignableObjects(arg1, arg2)
   local var62 = {}
   var62.alignableObjects = arg2.alignableObjects
   return var1(arg1, var62)
end

function var42.SetAlignmentMode(arg1, arg2)
   local var69 = {}
   var69.alignmentMode = arg2.alignmentMode
   return var1(arg1, var69)
end

function var42.SetAlignmentSpace(arg1, arg2)
   local var76 = {}
   var76.alignmentSpace = arg2.alignmentSpace
   return var1(arg1, var76)
end

function var42.SetEnabledAxes(arg1, arg2)
   local var83 = {}
   var83.enabledAxes = arg2.enabledAxes
   return var1(arg1, var83)
end

function var42.SetRelativeTo(arg1, arg2)
   local var90 = {}
   var90.relativeTo = arg2.relativeTo
   return var1(arg1, var90)
end

function var42.SetPreviewVisible(arg1, arg2)
   local var97 = {}
   var97.previewVisible = arg2.visible
   return var1(arg1, var97)
end

return require(var0.Packages.Rodux).createReducer(var38, var42)
