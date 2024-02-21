-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("R15Migrator")
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
   return var0
end

local var55 = {}
function var55.SetDiagnostics(arg1, arg2)
   local var59 = var1.Dictionary
   var59 = arg1
   local var61 = {}
   var61.diagnostics = arg2.diagnostics
   return var59.join(var59, var61)
end

function var55.SetFilter(arg1, arg2)
   local var67 = var1.Dictionary
   var67 = arg1
   local var69 = {}
   var69.filter = arg2.filter
   return var67.join(var67, var69)
end

function var55.SetScriptSelection(arg1, arg2)
   local var75 = var1.Dictionary
   var75 = arg1
   local var77 = {}
   var77.selection = arg2.selection
   return var75.join(var75, var77)
end

function var55.SetScriptExpansion(arg1, arg2)
   local var83 = var1.Dictionary
   var83 = arg1
   local var85 = {}
   var85.expansion = arg2.expansion
   return var83.join(var83, var85)
end

function var55.SetCompletedScripts(arg1, arg2)
   local var91 = var1.Dictionary
   var91 = arg1
   local var93 = {}
   var93.completedScripts = arg2.completedScripts
   return var91.join(var91, var93)
end

function var55.SetInitialIssueCounts(arg1, arg2)
   local var99 = var1.Dictionary
   var99 = arg1
   local var101 = {}
   var101.initialIssueCounts = arg2.initialIssueCounts
   return var99.join(var99, var101)
end

function var55.SetRevertedScripts(arg1, arg2)
   local var107 = var1.Dictionary
   var107 = arg1
   local var109 = {}
   var109.revertedScripts = arg2.revertedScripts
   return var107.join(var107, var109)
end

function var55.SetReplaceRules(arg1, arg2)
   local var115 = var1.Dictionary
   var115 = arg1
   local var117 = {}
   var117.replaceRules = arg2.replaceRules
   return var115.join(var115, var117)
end

function var55.SetReplaceProgress(arg1, arg2)
   local var123 = var1.Dictionary
   var123 = arg1
   local var125 = {}
   var125.replaceProgress = arg2.progress
   return var123.join(var123, var125)
end

function var55.SetProgressBarMessageKey(arg1, arg2)
   local var131 = var1.Dictionary
   var131 = arg1
   local var133 = {}
   var133.messageKey = arg2.messageKey
   return var131.join(var131, var133)
end

function var55.SetProcessResult(arg1, arg2)
   local var139 = var1.Dictionary
   var139 = arg1
   local var141 = {}
   var141.processResult = arg2.processResult
   return var139.join(var139, var141)
end

function var55.ResetAllScriptConversion(arg1)
   local var146 = var1.Dictionary
   var146 = arg1
   return var146.join(var146, var3())
end

return require(var0.Packages.Rodux).createReducer(var3(), var55)
