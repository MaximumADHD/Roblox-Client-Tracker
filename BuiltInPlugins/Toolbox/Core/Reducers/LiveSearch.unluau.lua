-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = var0.Packages
local var2 = require(var1.Cryo)
local var17 = {}
var17.searchTerm = ""
var17.results = {}
function require(var0.Core.Actions.SetLiveSearch).name(arg1, arg2)
   local var25 = var2.Dictionary
   var25 = arg1
   local var27 = {}
   var27.results = arg2.results
   var27.searchTerm = arg2.searchTerm
   return var25.join(var25, var27)
end

return require(var1.Rodux).createReducer(var17, {})
