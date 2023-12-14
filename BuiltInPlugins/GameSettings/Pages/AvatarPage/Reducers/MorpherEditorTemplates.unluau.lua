-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var2 = require(script.Parent.Parent.Util.UtilityFunctionsTable)
local var3 = {}
var3.templates = {}
local var24 = {}
function var24.ResetStore(arg1, arg2)
   return var3
end

function var24.TemplatesAdd(arg1, arg2)
   local var31 = var1.Dictionary
   var31 = arg1
   local var33 = {}
   var33.templates = arg2.templatesArrayToAdd
   return var31.join(var31, var33)
end

function var24.TemplatesClobberTemplate(arg1, arg2)
   local var39 = var1.Dictionary
   var39 = arg1
   local var41 = {}
   var41.templates = var2.immutableSetExistingDictionaryEntry(arg1.templates, arg2.templateToClobber, arg2.newTemplateModel)
   return var39.join(var39, var41)
end

return require(var0.Packages.Rodux).createReducer(var3, var24)
