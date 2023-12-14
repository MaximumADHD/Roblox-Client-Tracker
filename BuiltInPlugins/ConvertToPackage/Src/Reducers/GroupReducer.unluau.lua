-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = var0.Packages
local var2 = require(var1.Cryo)
local var3 = var0.Src.Actions
local var4 = {}
var4.assetGroupData = {}
var4.groupsArray = {}
function require(var3.SetMyGroups).name(arg1, arg2)
   local var29 = var2.Dictionary
   var29 = arg1
   local var31 = {}
   var31.groupsArray = arg2.groupsArray
   return var29.join(var29, var31)
end

function require(var3.SetAssetGroupData).name(arg1, arg2)
   local var38 = var2.Dictionary
   var38 = arg1
   local var40 = {}
   var40.assetGroupData = arg2.assetGroupData
   return var38.join(var38, var40)
end

return require(var1.Rodux).createReducer(var4, {})
