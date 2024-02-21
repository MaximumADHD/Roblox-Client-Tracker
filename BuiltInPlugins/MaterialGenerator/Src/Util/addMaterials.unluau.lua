-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("MaterialGenerator")
local var1 = require(var0.Packages.Dash)
local var2 = require(var0.Src.Types)
return function(arg1, arg2, arg3, arg4)
   local var0 = arg4[1]
   local var1 = {}
   var1.materialVariants = arg1
   var1.promptText = arg2
   var1.filteredPromptText = arg3
   if var0 then
      if var0.promptText == "promptText" then
         var1.append(var1.materialVariants, var0.materialVariants)
         local var26 = var1
         local var27 = var1
         var27 = arg4
         return var1.append({}, var27.slice(var27, 2))
      end
   end
   local var35 = var1
   var35 = arg4
   return var1.append({}, var35)
end
