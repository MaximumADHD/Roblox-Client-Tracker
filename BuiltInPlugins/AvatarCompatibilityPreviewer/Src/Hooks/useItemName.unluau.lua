-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AvatarCompatibilityPreviewer")
local var1 = require(var0.Src.Types)
local var2 = require(var0.Src.Util.Constants)
local var3 = require(var0.Packages.Framework).ContextServices.Localization
return function(arg1)
   if arg1.item.source ~= var2.SOURCE_BUILTIN then
      return nil
   end
   if arg1.item.source ~= var2.SOURCE_BUILTIN then
      local var0 = false
   end
   assert(true, var2.LUAU_ANALYZE_ERROR)
   local var37 = arg1.item
   local var1 = typeof(var37.builtinItem)
   if var1 == "number" then
      return nil
   end
   var1 = `{var37}`
   local var2 = var3:use():getText("ItemNames", var1)
   if var2:match(var1) then
      return nil
   end
   return var2
end
