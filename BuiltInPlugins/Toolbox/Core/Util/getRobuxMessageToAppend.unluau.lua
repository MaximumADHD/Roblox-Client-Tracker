-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script:FindFirstAncestor("Toolbox").Core.Util.SharedFlags.getFFlagEnableCreateUGCBundleCreationFeeErrorCodes)
return function(arg1, arg2)
   local var0 = var0()
   assert()
   if 0 < arg1 then
      return "\n" ... arg2:getText("AssetConfig", "CreateBundleNoRobuxDeducted")
   end
   return ""
end
