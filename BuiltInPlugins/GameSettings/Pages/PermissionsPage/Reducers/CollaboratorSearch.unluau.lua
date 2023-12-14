-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var2 = require(script.Parent.Parent.Keys.loadingInProgress)
local var3 = {}
var3.CachedSearchResults = {}
var3.SearchText = ""
local var234 = {}
function var234.ResetStore(arg1, arg2)
   return var3
end

function var234.LoadedWebResults(arg1, arg2)
   local var241 = var1.Dictionary
   var241 = arg1
   local var243 = {}
   if arg2.success then
      local var0 = arg2.results or nil
   end
   arg2.key = nil
   var243.CachedSearchResults = var1.Dictionary.join(arg1.CachedSearchResults, {})
   return var241.join(var241, var243)
end

function var234.LoadingWebResults(arg1, arg2)
   local var260 = var1.Dictionary
   var260 = arg1
   local var262 = {}
   arg2.searchTerm = var2
   var262.CachedSearchResults = var1.Dictionary.join(arg1.CachedSearchResults, {})
   return var260.join(var260, var262)
end

function var234.SearchTextChanged(arg1, arg2)
   local var275 = var1.Dictionary
   var275 = arg1
   local var277 = {}
   var277.SearchText = arg2.text
   return var275.join(var275, var277)
end

return require(var0.Packages.Rodux).createReducer(var3, var234)
