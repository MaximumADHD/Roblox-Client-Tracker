-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script:FindFirstAncestor("R15Migrator").Src.Util.parseAssetURL)
local var1 = require(script.Parent.StringUtil)
return function(arg1, arg2, arg3)
   local var0 = var0(arg1)
   if not var0 then
      return false
   end
   local var67 = var1
   var67 = arg1
   local var1 = var67.MatchBeforeAndAfter(var67, var0, var70, "[\"]", "[\"]")
   if not var1 then
      local var74 = var1
      var74 = arg1
      if not var74.MatchBeforeAndAfter(var74, var0, var77, "[\']", "[\']") then
         return false
      end
   end
   if arg3 then
      var1 = arg3
      var1(var0, var83, var84, arg1, arg2)
   end
   return 
end
