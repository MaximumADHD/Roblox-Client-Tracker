-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Src.Types)
local var2 = require(var0.Src.Resources.StatusLevel)
local var3 = require(var0.Src.Utility.Status.GetRelevantStatuses)
return function(arg1, arg2)
   local var22 = nil
   local var23 = nil
   local var24 = ""
   local var29 = var3(arg1:GetStatuses_DEPRECATED(), arg2)
   if 0 < var29.Errors then
      local var0 = var2.Error
      local var1 = var29.Errors[1].StatusType
      local var2 = var29.Errors[1]
   elseif 0 < var29.Warnings then
      local var0 = var2.Warning
      local var1 = var29.Warnings[1].StatusType
      local var2 = var29.Warnings[1]
   end
   return var50var51,var52,
end
