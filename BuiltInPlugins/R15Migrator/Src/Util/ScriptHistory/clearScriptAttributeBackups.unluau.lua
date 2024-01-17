-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Src.Util.ScriptAnalysis.Constants)
local var2 = require(var0.Src.Util.findAllInServices)
local var3 = require(var0.Src.Util.ScriptHistory.ChunkUtil)
return function()
   local var0 = var2(function(arg1)
      return arg1:IsA("LuaSourceContainer")
   end)
   local var1 = nil
   local var2 = nil
   var3:RemoveScriptBackupChunks(var33)
end
