-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Packages.DraggerFramework.Utility.classifyPivot)
return function(arg1)
   if arg1:IsA("BasePart") then
      return var0(arg1.CFrame, arg1.PivotOffset.Position, arg1.Size)
   end
   if arg1:IsA("Model") then
      local var0 = arg1:GetPivot()
      return var0(var0, var0:ToObjectSpace(arg1:GetBoundingBox()).Position, var34)
   end
   return "None"
end
