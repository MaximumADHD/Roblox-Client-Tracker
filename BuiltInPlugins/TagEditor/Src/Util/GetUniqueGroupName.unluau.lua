-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Src.TagManager)
local var2 = require(var0.Src.Types)
return function(arg1)
   local var0 = 1
   local var1 = var1.Get():GetGroups()
   local var20 = " "
   while var1[arg1 ... var20 ... tostring(var0)] do
      local var0 = var0 + 1
   end
   var1 = arg1
   var20 = var0
   return var1 ... " " ... tostring(var20)
end
