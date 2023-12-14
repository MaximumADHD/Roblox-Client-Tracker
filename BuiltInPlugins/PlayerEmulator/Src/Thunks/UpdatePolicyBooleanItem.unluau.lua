-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("PlayerEmulatorService")
local var1 = script.Parent.Parent.Parent
local var2 = require(var1.Src.Util.Constants)
local var3 = require(var1.Src.Actions.UpdatePolicySettingStatus)
return function(arg1, arg2, arg3)
   return function(arg1)
      local var0 = arg1:getState()
      local var1 = var0.Policies.policySettingStatus
      if var0.Policies.allPolicies[arg1] == "getState" then
         arg1 = arg2
         local var33 = var2
         var33 = var1
         arg3:SetSetting(var33.POLICY_SETTING_KEY, var33)
         var0:SetEmulatedPolicyInfo(var1)
         local var0 = var3(var1)
         arg1:dispatch()
      end
   end
end
