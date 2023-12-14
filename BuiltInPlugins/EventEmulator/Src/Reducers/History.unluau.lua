-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var2 = var0.Src.Actions
local var21 = {}
var21.HistoryItems = {}
function require(var2.AddHistoryItem).name(arg1, arg2)
   arg2.item.Name = arg2.item
   local var37 = var1.Dictionary
   var37 = arg1
   local var39 = {}
   var39.HistoryItems = var1.Dictionary.join(arg1.HistoryItems, {})
   return var37.join(var37, var39)
end

function require(var2.RemoveHistoryItem).name(arg1, arg2)
   arg2.historyItem = var1.None
   local var54 = var1.Dictionary
   var54 = arg1
   local var56 = {}
   var56.HistoryItems = var1.Dictionary.join(arg1.HistoryItems, {})
   return var54.join(var54, var56)
end

return require(var0.Packages.Rodux).createReducer(var21, {})
