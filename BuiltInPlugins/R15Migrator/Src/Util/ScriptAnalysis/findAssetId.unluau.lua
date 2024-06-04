-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script:FindFirstAncestor("R15Migrator").Src.Util.parseAssetURL)
local var1 = require(script.Parent.StringUtil)
return function(arg1, arg2, arg3)
   local var0 = var0(arg1)
   if not var0 then
      return false
   end
   local var83 = var1
   var83 = arg1
   local var1 = var83.MatchBeforeAndAfter(var83, var0, var86, "[\"]", "[\"]")
   if not var1 then
      local var90 = var1
      var90 = arg1
      if not var90.MatchBeforeAndAfter(var90, var0, var93, "[\']", "[\']") then
         return false
      end
   end
   if arg3 then
      var1 = arg3
      var1(var0, var99, var100, arg1, arg2)
   end
   return 
end
