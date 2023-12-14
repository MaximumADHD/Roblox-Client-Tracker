-- Generated with Unluau (https://github.com/valencefun/unluau)
return function(arg1, arg2)
   if arg1:IsA("BasePart") then
      arg1.PivotOffset = arg1.CFrame:ToObjectSpace(arg2)
   end
   if arg1:IsA("Model") then
      if arg1.PrimaryPart then
         arg1.PrimaryPart.PivotOffset = arg1.PrimaryPart.CFrame:ToObjectSpace(arg2)
      end
      arg1.WorldPivot = arg2
   end
   error("Unexpected instance type: " ... arg1.ClassName)
end
