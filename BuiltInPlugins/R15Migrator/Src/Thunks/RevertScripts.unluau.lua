-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("R15Migrator")
local var1 = require(var0.Packages.Cryo)
local var2 = require(var0.Src.Thunks.OnScriptsReverted)
local var3 = require(var0.Src.Actions.SetProcessResult)
local var4 = require(var0.Src.Util.ScriptHistory.revertScripts)
local var5 = require(var0.Src.Util.ScriptIssueSorting)
local var6 = require(var0.Src.Util.ScriptConversionProgressTracker)
return function(arg1, arg2, arg3)
   return function()
      var1:updateProgress()
   end
end
