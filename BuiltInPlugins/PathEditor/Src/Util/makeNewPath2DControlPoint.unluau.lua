-- Generated with Unluau (https://github.com/valencefun/unluau)
return function(arg1, arg2, arg3)
   if not game:GetFastFlag("Path2DControlPointAtomicClass4") then
      return {}
   end
   if not arg1 then
      return Path2DControlPoint.new()
   end
   if not arg3 then
      return Path2DControlPoint.new(arg1)
   end
   return Path2DControlPoint.new(arg1, arg2, arg3)
end
