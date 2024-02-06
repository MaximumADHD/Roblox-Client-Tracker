-- Generated with Unluau (https://github.com/valencefun/unluau)
return function(arg1, arg2)
   if not arg1 then
      return Vector2.new(0, 0)
   end
   assert(arg1, "element should be valid")
   local var0 = arg1.AbsoluteSize
   local var1 = arg2 - arg1.AbsolutePosition
   return Vector2.new(math.clamp(var1.X / var0.X, 0, 1), math.clamp(var1.Y / var0.Y, 0, 1))
end
