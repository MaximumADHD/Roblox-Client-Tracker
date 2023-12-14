-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var13 = var0.Src
local var2 = require(var13.Keys.loadingInProgress)
local var3 = {}
var3.CachedSearchResults = {}
var3.SearchText = ""
var13 = var3
local var21 = {}
function var21.ResetStore(arg1, arg2)
   return var3
end

function var21.LoadedWebResults(arg1, arg2)
   local var28 = var1.Dictionary
   var28 = arg1
   local var30 = {}
   if arg2.success then
      local var0 = arg2.results or nil
   end
   arg2.key = nil
   var30.CachedSearchResults = var1.Dictionary.join(arg1.CachedSearchResults, {})
   return var28.join(var28, var30)
end

function var21.LoadWebResults(arg1, arg2)
   local var47 = var1.Dictionary
   var47 = arg1
   local var49 = {}
   arg2.searchTerm = var2
   var49.CachedSearchResults = var1.Dictionary.join(arg1.CachedSearchResults, {})
   return var47.join(var47, var49)
end

function var21.SearchTextChanged(arg1, arg2)
   local var62 = var1.Dictionary
   var62 = arg1
   local var64 = {}
   var64.SearchText = arg2.text
   return var62.join(var62, var64)
end

return require(var0.Packages.Rodux).createReducer(var13, var21)
