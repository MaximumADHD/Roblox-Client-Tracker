-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = settings().Studio
local var1 = {}
function var1.setImageColor(arg1, arg2, arg3)
   arg1:_set(arg2, "ImageColor3", arg3, Enum.StudioStyleGuideModifier.Default)
end

function var1.setTextColor(arg1, arg2, arg3)
   arg1:_set(arg2, "TextColor3", arg3, Enum.StudioStyleGuideModifier.Default)
end

function var1.setBackgroundColor(arg1, arg2, arg3)
   arg1:_set(arg2, "BackgroundColor3", arg3, Enum.StudioStyleGuideModifier.Default)
end

function var1.setBorderColor(arg1, arg2, arg3)
   arg1:_set(arg2, "BorderColor3", arg3, Enum.StudioStyleGuideModifier.Default)
end

function var1.setCustom(arg1, arg2, arg3, arg4)
   arg1:_hook(function(arg1, arg2, arg3)
      arg1:_set(arg2, "ImageColor3", arg3, Enum.StudioStyleGuideModifier.Default)
   end)
end

function var1._set(arg1, arg2, arg3, arg4, arg5)
   arg1:_hook(function(arg1, arg2, arg3)
      arg1:_set(arg2, "ImageColor3", arg3, Enum.StudioStyleGuideModifier.Default)
   end)
end

function var1._hook(arg1, arg2)
   arg2()
   var0.ThemeChanged:Connect(arg2)
end

return var1
