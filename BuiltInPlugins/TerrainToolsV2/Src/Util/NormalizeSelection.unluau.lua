-- Generated with Unluau (https://github.com/valencefun/unluau)
return function(arg1, arg2)
   local var0 = arg1.Rotation * arg2
   var0 = Vector3.new(math.abs(var0.x), math.abs(var0.y), math.abs(var0.z))
   return CFrame.new(arg1.Position)var0,
end
