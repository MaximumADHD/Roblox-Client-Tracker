-- Generated with Unluau (https://github.com/valencefun/unluau)
return function(arg1, arg2)
   if arg2 == "GuiBase2d" then
      if arg2:IsA("GuiBase2d") then
         return Vector2.new(arg1.X.Offset + arg1.X.Scale * arg2.AbsoluteSize.X, arg1.Y.Offset + arg1.Y.Scale * arg2.AbsoluteSize.Y)
      end
   end
   return Vector2.zero
end
