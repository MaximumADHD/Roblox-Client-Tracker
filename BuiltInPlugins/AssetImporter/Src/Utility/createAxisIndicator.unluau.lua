-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = Vector3.new(2, 0.1, 0.1)
local var1 = Color3.new(1, 0, 0)
local var2 = Color3.new(0, 1, 0)
local var3 = Color3.new(0, 0, 1)
local function fun0(arg1, arg2)
   local var0 = Instance.new("Part")
   var0.Shape = Enum.PartType.Cylinder
   var0.TopSurface = Enum.SurfaceType.Smooth
   var0.BottomSurface = Enum.SurfaceType.Smooth
   var0.Parent = arg1
   var0.Size = var0
   var0.Color = arg2
   return var0
end

return function()
   local var0 = Instance.new("Model")
   local var41 = Instance.new("Part")
   var41.Shape = Enum.PartType.Cylinder
   var41.TopSurface = Enum.SurfaceType.Smooth
   var41.BottomSurface = Enum.SurfaceType.Smooth
   var41.Parent = var0
   var41.Size = var0
   var41.Color = var1
   local var2 = CFrame.new(var0.X / 2, 0, 0)
   var41.CFrame = var2
   local var57 = Instance.new("Part")
   var57.Shape = Enum.PartType.Cylinder
   var57.TopSurface = Enum.SurfaceType.Smooth
   var57.BottomSurface = Enum.SurfaceType.Smooth
   var57.Parent = var0
   var57.Size = var0
   var57.Color = var2
   var2 = var57
   local var4 = CFrame.new(0, var0.X / 2, 0) * CFrame.Angles(0, 0, 1.5707963267949)
   var2.CFrame = var4
   local var78 = Instance.new("Part")
   var78.Shape = Enum.PartType.Cylinder
   var78.TopSurface = Enum.SurfaceType.Smooth
   var78.BottomSurface = Enum.SurfaceType.Smooth
   var78.Parent = var0
   var78.Size = var0
   var78.Color = var3
   var4 = var78
   var4.CFrame = CFrame.new(0, 0, var0.X / 2) * CFrame.Angles(0, 1.5707963267949, 0)
   local var6 = Instance.new("Part")
   var6.Size = Vector3.new(4, 4, 4)
   var6.Transparency = 1
   var6.Parent = var0
   return var0
end
