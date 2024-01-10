-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var18 = {}
var18.diagnostics = {}
var18.completedScripts = {}
var18.selection = {}
var18.expansion = {}
var18.initialIssueCounts = {}
var18.revertedScripts = {}
var18.filter = nil
local var27 = require(var0.Src.Util.SaveInterface).getScriptConversionRules()
if not var27 then
   local var0 = {}
   local var1 = {}
   var1.FromText = "Left Arm"
   var1.ToText = ""
   var1.Enabled = true
   local var2 = {}
   var2.FromText = "Right Arm"
   var2.ToText = ""
   var2.Enabled = true
   local var3 = {}
   var3.FromText = "Left Leg"
   var3.ToText = ""
   var3.Enabled = true
   local var4 = {}
   var4.FromText = "Right Leg"
   var4.ToText = ""
   var4.Enabled = true
   local var5 = {}
   var5.FromText = "Torso"
   var5.ToText = ""
   var5.Enabled = true
end
var18.replaceRules = var27
var18.replaceProgress = nil
var18.messageKey = ""
var18.processResult = {}
local var52 = {}
function var52.SetDiagnostics(arg1, arg2)
   local var56 = var1.Dictionary
   var56 = arg1
   local var58 = {}
   var58.diagnostics = arg2.diagnostics
   return var56.join(var56, var58)
end

function var52.SetFilter(arg1, arg2)
   local var64 = var1.Dictionary
   var64 = arg1
   local var66 = {}
   var66.filter = arg2.filter
   return var64.join(var64, var66)
end

function var52.SetScriptSelection(arg1, arg2)
   local var72 = var1.Dictionary
   var72 = arg1
   local var74 = {}
   var74.selection = arg2.selection
   return var72.join(var72, var74)
end

function var52.SetScriptExpansion(arg1, arg2)
   local var80 = var1.Dictionary
   var80 = arg1
   local var82 = {}
   var82.expansion = arg2.expansion
   return var80.join(var80, var82)
end

function var52.SetCompletedScripts(arg1, arg2)
   local var88 = var1.Dictionary
   var88 = arg1
   local var90 = {}
   var90.completedScripts = arg2.completedScripts
   return var88.join(var88, var90)
end

function var52.SetInitialIssueCounts(arg1, arg2)
   local var96 = var1.Dictionary
   var96 = arg1
   local var98 = {}
   var98.initialIssueCounts = arg2.initialIssueCounts
   return var96.join(var96, var98)
end

function var52.SetRevertedScripts(arg1, arg2)
   local var104 = var1.Dictionary
   var104 = arg1
   local var106 = {}
   var106.revertedScripts = arg2.revertedScripts
   return var104.join(var104, var106)
end

function var52.SetReplaceRules(arg1, arg2)
   local var112 = var1.Dictionary
   var112 = arg1
   local var114 = {}
   var114.replaceRules = arg2.replaceRules
   return var112.join(var112, var114)
end

function var52.SetReplaceProgress(arg1, arg2)
   local var120 = var1.Dictionary
   var120 = arg1
   local var122 = {}
   var122.replaceProgress = arg2.progress
   return var120.join(var120, var122)
end

function var52.SetProgressBarMessageKey(arg1, arg2)
   local var128 = var1.Dictionary
   var128 = arg1
   local var130 = {}
   var130.messageKey = arg2.messageKey
   return var128.join(var128, var130)
end

function var52.SetProcessResult(arg1, arg2)
   local var136 = var1.Dictionary
   var136 = arg1
   local var138 = {}
   var138.processResult = arg2.processResult
   return var136.join(var136, var138)
end

return require(var0.Packages.Rodux).createReducer(var18, var52)
