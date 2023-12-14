-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Src.Actions.CollaboratorSearchActions)
local var2 = require(var0.Src.Selectors.IsGame17Plus)
return function(arg1, arg2)
   return function()
      local var0 = arg1
      local var1 = arg2(var2)
      return var1:search()
   end
end
