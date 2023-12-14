-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = var0.Packages
local var2 = require(var1.Cryo)
local var17 = {}
var17.isItemTagsFeatureEnabled = false
var17.enabledAssetTypesForItemTags = {}
var17.maximumItemTagsPerItem = 0
function require(var0.Core.Actions.SetTagsMetadata).name(arg1, arg2)
   local var26 = var2.Dictionary
   var26 = arg1
   local var28 = {}
   var28.isItemTagsFeatureEnabled = arg2.isItemTagsFeatureEnabled
   var28.enabledAssetTypesForItemTags = arg2.enabledAssetTypesForItemTags
   var28.maximumItemTagsPerItem = arg2.maximumItemTagsPerItem
   return var26.join(var26, var28)
end

return require(var1.Rodux).createReducer(var17, {})
