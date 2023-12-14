-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("Workspace")
return function()
   local var0 = var0.CurrentCamera.CFrame.LookVector
   return Vector3.new(math.round(var0.X), math.round(var0.Y), math.round(var0.Z)).Unit
end
