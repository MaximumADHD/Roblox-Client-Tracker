-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Core.Util.PreviewModelGetter)
local var2 = require(var0.Core.Actions.SetPreviewModel)
return function(arg1, arg2)
   return function(arg1)
      local var0 = arg1(arg1)
      var1:dispatch()
   end
end
