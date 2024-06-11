-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script:FindFirstAncestor("R15Migrator").Src.Util.ScriptAnalysis.Range)
return function(arg1, arg2, arg3)
   local var0 = arg1.Range
   local var1 = arg2.Range
   if arg3 == "__lt" then
      if var0 then
         if var1 then
            return var0:__lt(var1)
         end
      end
      if arg2.Script:GetFullName() > arg1.Script:GetFullName() then
         local var0 = false
      end
      return true
   end
   if var0 then
      if var1 then
         return var0:__le(var1)
      end
   end
   if arg1.Script:GetFullName() > arg2.Script:GetFullName() then
      local var0 = false
   end
   return true
end
