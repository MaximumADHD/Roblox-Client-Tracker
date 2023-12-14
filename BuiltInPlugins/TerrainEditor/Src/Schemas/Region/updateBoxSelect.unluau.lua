-- Generated with Unluau (https://github.com/valencefun/unluau)
local function fun0(arg1)
   local var0 = arg1.Position / 4
   return Vector3.new(math.floor(var0.X) * 4, math.floor(var0.Y) * 4, math.floor(var0.Z) * 4)
end

return function(arg1, arg2, arg3)
   local var23 = Vector2.new(arg2.X, arg2.Y)
   local var1 = arg1:viewportPointToRay()
   local var29 = Vector2.new(arg3.X, arg3.Y)
   local var3 = arg1:viewportPointToRay()
   local var4 = workspace:Raycast(var1.Origin, var1.Direction * 4096)
   local var5 = workspace:Raycast(var3.Origin, var3.Direction * 4096)
   if var4 then
      if not var5 then
      end
   end
   local var6 = arg1.selectionOnDragPoint
   if not var6 then
      arg1.selectionOnDragPoint = var4
   end
   local var7 = arg1.selectionOnDragPoint
   local var47 = var7.Position / 4
   var6 = Vector3.new(math.floor(var47.X) * 4, math.floor(var47.Y) * 4, math.floor(var47.Z) * 4)
   local var63 = var5.Position / 4
   var7 = Vector3.new(math.floor(var63.X) * 4, math.floor(var63.Y) * 4, math.floor(var63.Z) * 4)
   local var10 = var6:Min(var7)
   local var11 = var7:Max(var6)
   local var12 = var11 - var10
   var12 = var12:Max(Vector3.new(4, 4, 4))
   local var13 = {}
   var13.Size = var12
   var13.Transform = CFrame.new((var11 + var10) / 2)
   arg1.updateSelectionOnDrag(var13)
end
