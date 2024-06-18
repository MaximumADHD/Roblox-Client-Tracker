-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("CoreGui")
return function(arg1, arg2)
   if not arg1 then
      arg1 = Instance.new("Highlight")
      arg1.Parent = var0
      arg1.FillTransparency = 1
   end
   if arg2 then
      if arg2:IsA("BasePart") then
         arg1.Adornee = arg2
         return arg1
      end
   end
   arg1.Adornee = nil
   return arg1
end
