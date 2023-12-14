-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Src.Actions.SetCagesTransparency)
local var2 = require(var0.Packages.Framework).Util.deepCopy
return function(arg1, arg2)
   return function(arg1)
      arg1 = arg2
      local var0 = var1(var2(arg1:getState().selectItem.cagesTransparency))
      arg1:dispatch()
   end
end
