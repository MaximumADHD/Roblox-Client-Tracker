-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("TextService")
local var1 = {}
local var2 = Vector2.new(1000000, 50)
function var1.getTextWidth(arg1, arg2, arg3)
   return var0:GetTextSize(arg1, arg2, arg3, var2).X
end

return var1
