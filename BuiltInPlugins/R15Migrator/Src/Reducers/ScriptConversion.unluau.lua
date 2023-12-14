-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var13 = {}
var13.diagnostics = {}
var13.completedScripts = {}
var13.selection = {}
var13.expansion = {}
var13.initialIssueCounts = {}
var13.revertedScripts = {}
var13.filter = nil
local var22 = {}
var22.FromText = "Left Arm"
var22.ToText = ""
var22.Enabled = true
local var3 = {}
var3.FromText = "Right Arm"
var3.ToText = ""
var3.Enabled = true
local var4 = {}
var4.FromText = "Left Leg"
var4.ToText = ""
var4.Enabled = true
local var5 = {}
var5.FromText = "Right Leg"
var5.ToText = ""
var5.Enabled = true
local var6 = {}
var6.FromText = "Torso"
var6.ToText = ""
var6.Enabled = true
var13.replaceRules = { {} }
var13.replaceProgress = nil
var13.messageKey = ""
var13.processResult = {}
local var45 = {}
function var45.SetDiagnostics(arg1, arg2)
   local var49 = var1.Dictionary
   var49 = arg1
   local var51 = {}
   var51.diagnostics = arg2.diagnostics
   return var49.join(var49, var51)
end

function var45.SetFilter(arg1, arg2)
   local var57 = var1.Dictionary
   var57 = arg1
   local var59 = {}
   var59.filter = arg2.filter
   return var57.join(var57, var59)
end

function var45.SetScriptSelection(arg1, arg2)
   local var65 = var1.Dictionary
   var65 = arg1
   local var67 = {}
   var67.selection = arg2.selection
   return var65.join(var65, var67)
end

function var45.SetScriptExpansion(arg1, arg2)
   local var73 = var1.Dictionary
   var73 = arg1
   local var75 = {}
   var75.expansion = arg2.expansion
   return var73.join(var73, var75)
end

function var45.SetCompletedScripts(arg1, arg2)
   local var81 = var1.Dictionary
   var81 = arg1
   local var83 = {}
   var83.completedScripts = arg2.completedScripts
   return var81.join(var81, var83)
end

function var45.SetInitialIssueCounts(arg1, arg2)
   local var89 = var1.Dictionary
   var89 = arg1
   local var91 = {}
   var91.initialIssueCounts = arg2.initialIssueCounts
   return var89.join(var89, var91)
end

function var45.SetRevertedScripts(arg1, arg2)
   local var97 = var1.Dictionary
   var97 = arg1
   local var99 = {}
   var99.revertedScripts = arg2.revertedScripts
   return var97.join(var97, var99)
end

function var45.SetReplaceRules(arg1, arg2)
   local var105 = var1.Dictionary
   var105 = arg1
   local var107 = {}
   var107.replaceRules = arg2.replaceRules
   return var105.join(var105, var107)
end

function var45.SetReplaceProgress(arg1, arg2)
   local var113 = var1.Dictionary
   var113 = arg1
   local var115 = {}
   var115.replaceProgress = arg2.progress
   return var113.join(var113, var115)
end

function var45.SetProgressBarMessageKey(arg1, arg2)
   local var121 = var1.Dictionary
   var121 = arg1
   local var123 = {}
   var123.messageKey = arg2.messageKey
   return var121.join(var121, var123)
end

function var45.SetProcessResult(arg1, arg2)
   local var129 = var1.Dictionary
   var129 = arg1
   local var131 = {}
   var131.processResult = arg2.processResult
   return var129.join(var129, var131)
end

return require(var0.Packages.Rodux).createReducer(var13, var45)
