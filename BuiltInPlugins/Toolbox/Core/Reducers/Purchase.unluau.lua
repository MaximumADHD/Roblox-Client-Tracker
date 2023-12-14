-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = var0.Packages
local var2 = require(var1.Cryo)
local var3 = var0.Core.Actions
local var4 = require(var0.Core.Types.PurchaseStatus)
local var31 = {}
var31.robuxBalance = 0
var31.status = var4.None
var31.cachedOwnedAssets = {}
var31.assetId = nil
function require(var3.SetRobuxBalance).name(arg1, arg2)
   local var41 = var2.Dictionary
   var41 = arg1
   local var43 = {}
   var43.robuxBalance = arg2.robuxBalance
   return var41.join(var41, var43)
end

function require(var3.ClearPurchaseFlow).name(arg1, arg2)
   local var51 = var2.Dictionary
   var51 = arg1
   local var53 = {}
   var53.assetId = arg2.assetId
   var53.status = var4.None
   return var51.join(var51, var53)
end

function require(var3.SetOwnsAsset).name(arg1, arg2)
   tostring(arg2.assetId) = arg2.ownsAsset
   local var72 = var2.Dictionary
   var72 = arg1
   local var74 = {}
   var74.cachedOwnedAssets = var2.Dictionary.join(arg1.cachedOwnedAssets, {})
   return var72.join(var72, var74)
end

function require(var3.SetPurchaseStatus).name(arg1, arg2)
   local var81 = var2.Dictionary
   var81 = arg1
   local var83 = {}
   var83.status = arg2.status
   return var81.join(var81, var83)
end

return require(var1.Rodux).createReducer(var31, {})
