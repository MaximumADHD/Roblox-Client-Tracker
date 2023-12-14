-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AvatarCompatibilityPreviewer")
local var1 = require(var0.Src.Util.Constants)
local var2 = require(var0.Src.Types)
return function(arg1, arg2)
   if arg1.palette ~= arg2.palette then
      return false
   end
   if arg1.item.source ~= arg2.item.source then
      return false
   end
   if arg1.item.source == "SOURCE_BUILTIN" then
      if arg2.item.source == "SOURCE_BUILTIN" then
         if arg1.item.builtinItem ~= arg2.item.builtinItem then
            local var0 = false
         end
         return true
      end
   end
   local var40 = var1.SOURCE_INSTANCE
   if arg1.item.source == "SOURCE_BUILTIN" then
      if arg2.item.source == "SOURCE_BUILTIN" then
         if arg1.item.instance ~= arg2.item.instance then
            local var0 = false
         end
         return true
      end
   end
   var40 = `Unknown item source: {arg1.item.source}`
   error(var40)
end
