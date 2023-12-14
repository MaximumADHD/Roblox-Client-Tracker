-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Src.Util.Constants)
return function(arg1, arg2, arg3)
   local var15 = Vector2.new(arg2.X, arg2.Y)
   local var1 = arg1:viewportPointToRay()
   local var21 = Vector2.new(arg3.X, arg3.Y)
   local var3 = arg1:viewportPointToRay()
   local var4 = workspace:Raycast(var1.Origin, var1.Direction * var0.RAY_CAST_LENGTH)
   local var5 = workspace:Raycast(var3.Origin, var3.Direction * var0.RAY_CAST_LENGTH)
   if var4 then
      if not var5 then
      end
   end
   arg1.updateSelectionOnDrag(var4, var5)
end
