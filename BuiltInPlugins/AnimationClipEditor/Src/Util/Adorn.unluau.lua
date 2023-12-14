-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = {}
function var0.Sphere(arg1, arg2, arg3, arg4, arg5, arg6)
   local var0 = Instance.new("SphereHandleAdornment", arg3)
   var0.Name = "Sphere"
   var0.AlwaysOnTop = true
   var0.Color3 = arg5
   var0.Adornee = arg3
   var0.ZIndex = arg6
   var0.Transparency = arg4
   var0.Archivable = false
   return var0
end

function var0.Line(arg1, arg2, arg3, arg4, arg5, arg6, arg7)
   local var0 = Instance.new("LineHandleAdornment", arg3)
   var0.Name = "Line"
   var0.AlwaysOnTop = true
   var0.Thickness = arg4
   var0.Color3 = arg5
   var0.Adornee = arg3
   var0.ZIndex = arg7
   var0.Transparency = arg6
   var0.Archivable = false
   return var0
end

function var0.Cone(arg1, arg2, arg3, arg4, arg5, arg6)
   local var0 = Instance.new("ConeHandleAdornment", arg3)
   var0.Name = "Cone"
   var0.AlwaysOnTop = true
   var0.Color3 = arg5
   var0.Adornee = arg3
   var0.ZIndex = arg6
   var0.Transparency = arg4
   var0.Archivable = false
   return var0
end

return var0
