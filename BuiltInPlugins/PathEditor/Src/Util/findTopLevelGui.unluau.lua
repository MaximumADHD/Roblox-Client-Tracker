-- Generated with Unluau (https://github.com/valencefun/unluau)
return function(arg1)
   local var0 = arg1
   while var0 == "ScreenGui" do
      if not var0:IsA("ScreenGui") then
         if var0:IsA("SurfaceGui") then
            return var0
         end
      end
      return var0
      local var0 = var0.Parent
   end
   return nil
end
