-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("TextService")
return function(arg1, arg2, arg3, arg4)
   local var0 = ""
   local var1 = string.len(arg1)
   local var136 = arg1
   local var137 = arg2
   local var138 = arg3
   local var140 = Vector2.new()
   local var6 = var0:GetTextSize().X
   if var6 < arg4 then
      return arg1
   end
   local var7 = 1
   var6 = math.ceil(var1 / 2)
   local var8 = 1
   local var153 = var7 - 1
   var153 = var1
   local var159 = arg1:sub(var1 - var153, var153)
   local var11 = arg1:sub(1, var7) ... "..." ... var159
   var159 = var11
   local var12 = arg2
   local var13 = arg3
   local var14 = Vector2.new()
   if var0:GetTextSize().X + 2 < arg4 then
      var0 = var11
      return var0
   end
   return var0
end
