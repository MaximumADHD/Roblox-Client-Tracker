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
var18.backedupScripts = {}
local var53 = {}
function var53.SetDiagnostics(arg1, arg2)
   local var57 = var1.Dictionary
   var57 = arg1
   local var59 = {}
   var59.diagnostics = arg2.diagnostics
   return var57.join(var57, var59)
end

function var53.SetFilter(arg1, arg2)
   local var65 = var1.Dictionary
   var65 = arg1
   local var67 = {}
   var67.filter = arg2.filter
   return var65.join(var65, var67)
end

function var53.SetScriptSelection(arg1, arg2)
   local var73 = var1.Dictionary
   var73 = arg1
   local var75 = {}
   var75.selection = arg2.selection
   return var73.join(var73, var75)
end

function var53.SetScriptExpansion(arg1, arg2)
   local var81 = var1.Dictionary
   var81 = arg1
   local var83 = {}
   var83.expansion = arg2.expansion
   return var81.join(var81, var83)
end

function var53.SetCompletedScripts(arg1, arg2)
   local var89 = var1.Dictionary
   var89 = arg1
   local var91 = {}
   var91.completedScripts = arg2.completedScripts
   return var89.join(var89, var91)
end

function var53.SetInitialIssueCounts(arg1, arg2)
   local var97 = var1.Dictionary
   var97 = arg1
   local var99 = {}
   var99.initialIssueCounts = arg2.initialIssueCounts
   return var97.join(var97, var99)
end

function var53.SetRevertedScripts(arg1, arg2)
   local var105 = var1.Dictionary
   var105 = arg1
   local var107 = {}
   var107.revertedScripts = arg2.revertedScripts
   return var105.join(var105, var107)
end

function var53.SetReplaceRules(arg1, arg2)
   local var113 = var1.Dictionary
   var113 = arg1
   local var115 = {}
   var115.replaceRules = arg2.replaceRules
   return var113.join(var113, var115)
end

function var53.SetReplaceProgress(arg1, arg2)
   local var121 = var1.Dictionary
   var121 = arg1
   local var123 = {}
   var123.replaceProgress = arg2.progress
   return var121.join(var121, var123)
end

function var53.SetProgressBarMessageKey(arg1, arg2)
   local var129 = var1.Dictionary
   var129 = arg1
   local var131 = {}
   var131.messageKey = arg2.messageKey
   return var129.join(var129, var131)
end

function var53.SetProcessResult(arg1, arg2)
   local var137 = var1.Dictionary
   var137 = arg1
   local var139 = {}
   var139.processResult = arg2.processResult
   return var137.join(var137, var139)
end

function var53.SetScriptBackups(arg1, arg2)
   local var145 = var1.Dictionary
   var145 = arg1
   local var147 = {}
   var147.backedupScripts = arg2.backedupScripts
   return var145.join(var145, var147)
end

function var53.ResetScriptBackups(arg1, arg2)
   local var153 = var1.Dictionary
   var153 = arg1
   local var155 = {}
   var155.backedupScripts = {}
   return var153.join(var153, var155)
end

return require(var0.Packages.Rodux).createReducer(var18, var53)
