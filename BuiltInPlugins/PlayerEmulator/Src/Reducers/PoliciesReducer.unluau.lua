-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var2 = require(var0.Packages.Framework).Util.deepJoin
local var19 = {}
var19.allPolicies = {}
var19.allPolicySortedKeys = {}
var19.policySettingStatus = {}
var19.policyListItemsModuleExpanded = true
local var24 = {}
function var24.LoadAllPolicyValues(arg1, arg2)
   local var30 = var1.Dictionary
   var30 = arg1
   local var32 = {}
   var32.allPolicies = arg2.allPolicies
   var32.allPolicySortedKeys = arg2.allPolicySortedKeys
   return var30.join(var30, var32)
end

function var24.UpdatePolicySettingStatus(arg1, arg2)
   local var39 = {}
   var39.policySettingStatus = arg2.policySettingStatus
   return var2(arg1, var39)
end

function var24.UpdatePolicySettingListItemsModuleExpanded(arg1, arg2)
   local var46 = {}
   var46.policyListItemsModuleExpanded = arg2.policyListItemsModuleExpanded
   return var2(arg1, var46)
end

return require(var0.Packages.Rodux).createReducer(var19, var24)
