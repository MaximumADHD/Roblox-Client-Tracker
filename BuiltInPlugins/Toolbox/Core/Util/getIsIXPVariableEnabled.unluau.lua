-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script:FindFirstAncestor("Toolbox").Core.Util.DebugFlags)
return function(arg1, arg2, arg3)
   if not arg1 then
      if var0.shouldDebugWarnings() then
         warn("ixp was undefined")
      end
      return nil
   end
   if not arg1:isReady() then
      return nil
   end
   local var0 = arg1:getVariables()[arg2]
   if var0 then
      if var0[arg3] then
         return true
      end
   end
   return false
end
