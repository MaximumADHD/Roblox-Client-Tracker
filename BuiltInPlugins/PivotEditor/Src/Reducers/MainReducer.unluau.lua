-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Dash)
local var2 = require(var0.Src.Utility.EditingMode)
local var3 = require(var0.Src.Utility.StatusMessage)
local var4 = var1.join
local var5 = {}
var5.targetObject = nil
var5.editingMode = var2.None
var5.statusMessage = var3.None
function require(var0.Src.Actions.BeginSelectingPivot).name(arg1, arg2)
   local var55 = {}
   var55.editingMode = arg2.editingMode
   var55.statusMessage = arg2.statusMessage
   return var4(arg1, var55)
end

function require(var0.Src.Actions.DoneSelectingPivot).name(arg1, arg2)
   local var64 = {}
   var64.editingMode = var2.Transform
   var64.statusMessage = var3.None
   return var4(arg1, var64)
end

function require(var0.Src.Actions.SelectObjectForEditing).name(arg1, arg2)
   local var75 = {}
   var75.targetObject = arg2.targetObject
   var75.editingMode = var2.Transform
   var75.statusMessage = var3.None
   return var4(arg1, var75)
end

function require(var0.Src.Actions.SelectInvalidSelection).name(arg1, arg2)
   local var87 = {}
   var87.targetObject = var1.None
   var87.editingMode = var2.None
   var87.statusMessage = arg2.statusMessage
   return var4(arg1, var87)
end

return require(var0.Packages.Rodux).createReducer(var5, {})
