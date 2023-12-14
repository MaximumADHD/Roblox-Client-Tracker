-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Src.Actions.SetProcessResult)
local var2 = require(var0.Src.Util.ScriptHistory.undoRevert)
local var3 = require(var0.Src.Util.ScriptConversionProgressTracker)
return function(arg1, arg2, arg3)
   return function()
      var3:updateProgress()
   end
end
