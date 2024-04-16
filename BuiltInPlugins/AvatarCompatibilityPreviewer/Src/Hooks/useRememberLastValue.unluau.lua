-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AvatarCompatibilityPreviewer")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Src.Util.shallowEqual)
return function()
   local var0 = var1.useRef(nil)
   return var1.useCallback(function(arg1)
      if var0.current == "current" then
         local var194 = var0
         var194 = arg1
         if var2(var194.current, var194) then
            return var0.current
         end
      end
      var0.current = arg1
      return arg1
   end, {})
end
