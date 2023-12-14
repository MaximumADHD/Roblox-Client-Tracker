-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AvatarCompatibilityPreviewer")
local var1 = require(var0.Packages.Dash)
local var2 = require(var0.Packages.React)
local var3 = require(var0.Src.Types)
return function(arg1)
   local var0 = arg1
   return var2.useCallback(function(arg1)
      if arg1.palette.OverrideEquipKey or arg1.palette.Key ~= arg1.palette.OverrideEquipKey or arg1.palette.Key then
         local var0 = false
      end
      return true
   end, {})
end
