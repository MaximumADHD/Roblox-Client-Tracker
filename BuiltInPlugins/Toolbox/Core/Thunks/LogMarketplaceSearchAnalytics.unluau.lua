-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = var0.Core.Util
local var2 = require(var1.Analytics.Analytics)
local var3 = require(var0.Core.Types.AnalyticsTypes)
local var4 = require(var1.DebugFlags)
local var5 = require(var1.PageInfoHelper)
local var6 = require(var1.AssetQualityUtil)
local var7 = require(var0.Core.Actions.UpdateLastLoggedSearchId)
local var8 = require(var0.Core.Types.AutocorrectTypes)
local var9 = require(var0.Core.Types.Category)
local var10 = require(var0.Core.Util.SharedFlags.getFFlagToolboxAddAutocorrect)
local var11 = require(var0.Core.Util.SharedFlags.getFFlagToolboxAddCreationsFilterToListView)
local var12 = require(var0.Core.Flags.getFFlagQualityFiltersInToolboxSearch)
local function fun0(arg1)
   local var0 = {}
   local var58 = arg1
   local var59 = nil
   local var60 = nil
   table.insert(var0, var62)
   var59 = var0
   return table.concat(var59, ",")
end

return function(arg1, arg2, arg3, arg4, arg5)
   return function(arg1)
      local var0 = {}
      local var74 = arg1
      local var75 = nil
      local var76 = nil
      table.insert(var0, var78)
      var75 = var0
      return table.concat(var75, ",")
   end
end
