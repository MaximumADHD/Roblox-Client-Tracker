-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var2 = game:GetService("PlayerEmulatorService")
local var17 = {}
var17.customPolicySwitchEnabled = false
var17.customPolicySwitchActive = false
var17.customPoliciesEnabled = false
local var21 = {}
function var21.OnCustomPolicySwitchEnabledChanged(arg1, arg2)
   local var26 = var1.Dictionary
   var26 = arg1
   local var28 = {}
   var28.customPolicySwitchEnabled = arg2.enabled
   return var26.join(var26, var28)
end

function var21.OnCustomPolicyEnabledChanged(arg1, arg2)
   local var34 = var1.Dictionary
   var34 = arg1
   local var36 = {}
   var36.customPoliciesEnabled = arg2.enabled
   return var34.join(var34, var36)
end

function var21.OnEmulatedCountryRegionChanged(arg1, arg2)
   local var46 = var1.Dictionary
   var46 = arg1
   local var48 = {}
   var48.customPolicySwitchActive = var2:regionCodeWillHaveAutomaticNonCustomPolicies(arg2.countryRegionCode)
   return var46.join(var46, var48)
end

return require(var0.Packages.Rodux).createReducer(var17, var21)
