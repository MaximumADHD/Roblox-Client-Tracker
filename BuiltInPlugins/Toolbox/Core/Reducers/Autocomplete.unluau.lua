-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = var0.Packages
local var2 = require(var1.Cryo)
local var17 = {}
var17.autocompleteResults = {}
function require(var0.Core.Actions.SetAutocompleteResults).name(arg1, arg2)
   local var24 = var2.Dictionary
   var24 = arg1
   local var26 = {}
   var26.autocompleteResults = arg2.autocompleteResults
   return var24.join(var24, var26)
end

return require(var1.Rodux).createReducer(var17, {})
