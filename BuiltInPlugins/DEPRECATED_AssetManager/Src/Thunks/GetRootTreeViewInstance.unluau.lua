-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Src.Util.PreviewModelGetter)
local var2 = require(var0.Src.Actions.SetRootTreeViewInstance)
return function(arg1, arg2)
   return function(arg1)
      if type(arg1) == "string" then
         local var0 = arg1(arg2, nil)
         var1:dispatch()
      end
      local var0 = arg1(arg2, arg1)
      var1:dispatch()
   end
end
