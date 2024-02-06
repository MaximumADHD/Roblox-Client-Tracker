-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("R15Migrator")
local var1 = require(var0.Src.Util.findAllInServices)
local var2 = require(var0.Src.Util.ScriptHistory.ChunkUtil)
return function()
   local var0 = var1(function(arg1)
      return arg1:IsA("LuaSourceContainer")
   end)
   local var1 = nil
   local var2 = nil
   var2:RemoveScriptBackupChunks(var26)
end
