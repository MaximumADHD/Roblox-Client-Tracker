-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Src.Util.ConvertTransformToRegion)
return function(arg1, arg2, arg3, arg4, arg5)
   if not arg5 then
      arg2:ApplyTransform(arg3.Rotation, arg4)
   end
   arg1:PasteRegion(arg2, var0(arg3, arg4).Min, false)
end
