-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = var0.Packages
local var2 = require(var1.Cryo)
local var3 = var0.Core.Actions
local var20 = {}
var20.allowedAssetTypesForRelease = {}
var20.allowedAssetTypesForUpload = {}
var20.allowedAssetTypesForFree = {}
var20.allowedBundleTypeSettings = {}
function require(var3.SetAllowedAssetTypes).name(arg1, arg2)
   local var30 = var2.Dictionary
   var30 = arg1
   local var32 = {}
   var32.allowedAssetTypesForRelease = arg2.allowedAssetTypesForRelease
   var32.allowedAssetTypesForUpload = arg2.allowedAssetTypesForUpload
   var32.allowedAssetTypesForFree = arg2.allowedAssetTypesForFree
   return var30.join(var30, var32)
end

function require(var3.SetAllowedBundleTypes).name(arg1, arg2)
   local var41 = var2.Dictionary
   var41 = arg1
   local var43 = {}
   var43.allowedBundleTypeSettings = arg2.allowedBundleTypeSettings
   return var41.join(var41, var43)
end

return require(var1.Rodux).createReducer(var20, {})
