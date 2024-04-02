-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AvatarCompatibilityPreviewer")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Src.Types)
local var3 = require(var0.Src.Util.equippedItemDataEquals)
return function(arg1)
   local var0 = arg1
   return var1.useCallback(function(arg1)
      local var0 = arg1
      local var1 = nil
      local var2 = nil
      if arg1(var360, var3) then
         local var0 = table.clone(arg1)
         table.remove(var0, var368)
         return var0
      end
      return arg1
   end, {})
end
