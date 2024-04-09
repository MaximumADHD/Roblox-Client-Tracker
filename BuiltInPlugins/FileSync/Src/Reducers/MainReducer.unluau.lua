-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("FileSync")
local var1 = require(var0.Packages.Cryo)
local var2 = var0.Src.Actions
local function fun0()
   local var0 = {}
   var0.redrawSignal = false
   var0.warningText = nil
   var0.syncPath = nil
   var0.lastOperation = ""
   var0.lastOperationTime = ""
   return var0
end

local var26 = {}
var26.redrawSignal = false
var26.warningText = nil
var26.syncPath = nil
var26.lastOperation = ""
var26.lastOperationTime = ""
function var2.SetWarningText.Name(arg1, arg2)
   local var37 = var1.Dictionary
   var37 = arg1
   local var39 = {}
   var39.warningText = arg2.warningText
   return var37.join(var37, var39)
end

function var2.ClearWarningText.Name(arg1, arg2)
   local var46 = var1.Dictionary
   var46 = arg1
   local var48 = {}
   var48.warningText = arg2.warningText
   return var46.join(var46, var48)
end

function var2.SetSyncPath.Name(arg1, arg2)
   local var55 = var1.Dictionary
   var55 = arg1
   local var57 = {}
   var57.syncPath = arg2.syncPath
   return var55.join(var55, var57)
end

function var2.SetLastOperation.Name(arg1, arg2)
   local var64 = var1.Dictionary
   var64 = arg1
   local var66 = {}
   var66.lastOperation = arg2.lastOperation
   return var64.join(var64, var66)
end

function var2.SetLastOperationTime.Name(arg1, arg2)
   local var73 = var1.Dictionary
   var73 = arg1
   local var75 = {}
   var75.lastOperationTime = arg2.lastOperationTime
   return var73.join(var73, var75)
end

return require(var0.Packages.Rodux).createReducer(var26, {})
