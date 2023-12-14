-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = var0.Core.Util
local var2 = require(var1.Analytics.Analytics)
local var3 = require(var0.Core.Types.AnalyticsTypes)
local var4 = require(var1.DebugFlags)
local var5 = require(var1.PageInfoHelper)
local var6 = require(var0.Core.Actions.UpdateLastLoggedSearchId)
local var7 = require(var0.Core.Types.AutocorrectTypes)
local var8 = require(var0.Core.Types.Category)
local var9 = require(var0.Core.Util.SharedFlags.getFFlagToolboxAddAutocorrect)
local var10 = require(var0.Core.Util.SharedFlags.getFFlagToolboxAddCreationsFilterToListView)
local function fun0(arg1)
   local var0 = {}
   local var50 = arg1
   local var51 = nil
   local var52 = nil
   table.insert(var0, var54)
   var51 = var0
   return table.concat(var51, ",")
end

return function(arg1, arg2, arg3, arg4, arg5)
   return function(arg1)
      local var0 = {}
      local var66 = arg1
      local var67 = nil
      local var68 = nil
      table.insert(var0, var70)
      var67 = var0
      return table.concat(var67, ",")
   end
end
