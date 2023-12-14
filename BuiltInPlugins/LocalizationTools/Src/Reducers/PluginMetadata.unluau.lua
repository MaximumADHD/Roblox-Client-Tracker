-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var13 = {}
var13.AllLanguages = {}
var13.LocalesToLanguages = {}
var13.CanManageTranslation = nil
var13.CloudTableId = ""
local var18 = {}
function var18.LoadLanguagesAndLocalesInfo(arg1, arg2)
   local var22 = var1.Dictionary
   var22 = arg1
   local var24 = {}
   var24.AllLanguages = arg2.allLanguages
   var24.LocalesToLanguages = arg2.localesToLanguages
   return var22.join(var22, var24)
end

function var18.LoadManageTranslationPermission(arg1, arg2)
   local var31 = var1.Dictionary
   var31 = arg1
   local var33 = {}
   var33.CanManageTranslation = arg2.canManageTranslation
   return var31.join(var31, var33)
end

function var18.SetCloudTableId(arg1, arg2)
   local var39 = var1.Dictionary
   var39 = arg1
   local var41 = {}
   var41.CloudTableId = arg2.cloudTableId
   return var39.join(var39, var41)
end

return require(var0.Packages.Rodux).createReducer(var13, var18)
