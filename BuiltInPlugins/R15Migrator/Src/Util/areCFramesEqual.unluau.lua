-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script:FindFirstAncestor("R15Migrator").Packages.Framework).Util.Math
return function(arg1, arg2, arg3)
   local var32 = arg1:GetComponents()
   local var35 = arg2:GetComponents()
   local var2 = 1
   local var37 = 12
   local var4 = 1
   if not var0.fuzzyEq({}[var2], {}[var2], arg3) then
      return false
   end
   return true
end
