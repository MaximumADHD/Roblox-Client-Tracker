-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var2 = require(var0.Src.Util.SaveInterface)
local function var3()
   local var0 = {}
   var0.diagnostics = {}
   var0.completedScripts = {}
   var0.selection = {}
   var0.expansion = {}
   var0.initialIssueCounts = {}
   var0.revertedScripts = {}
   var0.filter = nil
   local var27 = var2.getScriptConversionRules()
   if not var27 then
      local var0 = { {}, {}, {}, {}, {} }
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
   var0.replaceRules = var27
   var0.replaceProgress = nil
   var0.messageKey = ""
   var0.processResult = {}
   var0.backedupScripts = {}
   return var0
end

local var56 = {}
function var56.SetDiagnostics(arg1, arg2)
   local var60 = var1.Dictionary
   var60 = arg1
   local var62 = {}
   var62.diagnostics = arg2.diagnostics
   return var60.join(var60, var62)
end

function var56.SetFilter(arg1, arg2)
   local var68 = var1.Dictionary
   var68 = arg1
   local var70 = {}
   var70.filter = arg2.filter
   return var68.join(var68, var70)
end

function var56.SetScriptSelection(arg1, arg2)
   local var76 = var1.Dictionary
   var76 = arg1
   local var78 = {}
   var78.selection = arg2.selection
   return var76.join(var76, var78)
end

function var56.SetScriptExpansion(arg1, arg2)
   local var84 = var1.Dictionary
   var84 = arg1
   local var86 = {}
   var86.expansion = arg2.expansion
   return var84.join(var84, var86)
end

function var56.SetCompletedScripts(arg1, arg2)
   local var92 = var1.Dictionary
   var92 = arg1
   local var94 = {}
   var94.completedScripts = arg2.completedScripts
   return var92.join(var92, var94)
end

function var56.SetInitialIssueCounts(arg1, arg2)
   local var100 = var1.Dictionary
   var100 = arg1
   local var102 = {}
   var102.initialIssueCounts = arg2.initialIssueCounts
   return var100.join(var100, var102)
end

function var56.SetRevertedScripts(arg1, arg2)
   local var108 = var1.Dictionary
   var108 = arg1
   local var110 = {}
   var110.revertedScripts = arg2.revertedScripts
   return var108.join(var108, var110)
end

function var56.SetReplaceRules(arg1, arg2)
   local var116 = var1.Dictionary
   var116 = arg1
   local var118 = {}
   var118.replaceRules = arg2.replaceRules
   return var116.join(var116, var118)
end

function var56.SetReplaceProgress(arg1, arg2)
   local var124 = var1.Dictionary
   var124 = arg1
   local var126 = {}
   var126.replaceProgress = arg2.progress
   return var124.join(var124, var126)
end

function var56.SetProgressBarMessageKey(arg1, arg2)
   local var132 = var1.Dictionary
   var132 = arg1
   local var134 = {}
   var134.messageKey = arg2.messageKey
   return var132.join(var132, var134)
end

function var56.SetProcessResult(arg1, arg2)
   local var140 = var1.Dictionary
   var140 = arg1
   local var142 = {}
   var142.processResult = arg2.processResult
   return var140.join(var140, var142)
end

function var56.SetScriptBackups(arg1, arg2)
   local var148 = var1.Dictionary
   var148 = arg1
   local var150 = {}
   var150.backedupScripts = arg2.backedupScripts
   return var148.join(var148, var150)
end

function var56.ResetScriptBackups(arg1, arg2)
   local var156 = var1.Dictionary
   var156 = arg1
   local var158 = {}
   var158.backedupScripts = {}
   return var156.join(var156, var158)
end

function var56.ResetAllScriptConversion(arg1)
   local var163 = var1.Dictionary
   var163 = arg1
   return var163.join(var163, var3())
end

return require(var0.Packages.Rodux).createReducer(var3(), var56)
