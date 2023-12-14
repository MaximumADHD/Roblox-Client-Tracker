-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Rodux)
local var2 = require(var0.Src.Reducers.MainSwitchReducer)
local var3 = require(var0.Src.Reducers.CustomPolicySwitchReducer)
local var4 = require(var0.Src.Reducers.LanguagesReducer)
local var5 = require(var0.Src.Reducers.CountryRegionReducer)
local var6 = require(var0.Src.Reducers.PoliciesReducer)
return function()
   local var35 = {}
   var35.MainSwitch = var2
   var35.Languages = var4
   var35.CountryRegion = var5
   var35.CustomPolicySwitch = var3
   var35.Policies = var6
   return var1.combineReducers(var35)
end
