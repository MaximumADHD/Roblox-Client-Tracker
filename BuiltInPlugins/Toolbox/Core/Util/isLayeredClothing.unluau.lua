-- Generated with Unluau (https://github.com/valencefun/unluau)
return function(arg1)
   if arg1 then
      if typeof(arg1) == "Instance" then
         if arg1:IsA("Accessory") then
            local var0 = arg1:FindFirstChild("Handle")
            if var0 then
               if var0:IsA("MeshPart") then
                  if var0:FindFirstChildOfClass("WrapLayer") then
                     return true
                  end
               end
            end
         end
      end
   end
   return false
end
