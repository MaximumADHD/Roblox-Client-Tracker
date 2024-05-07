-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = {}
function var0.plotToViewPosition(arg1, arg2)
   return Vector2.new((arg1.X - arg2.Min.X) / arg2.Width, 1 - (arg1.Y - arg2.Min.Y) / arg2.Height)
end

function var0.viewToPlotPosition(arg1, arg2)
   return Vector2.new(arg2.Min.X + arg2.Width * arg1.X, arg2.Min.Y + arg2.Height * (1 - arg1.Y))
end

function var0.plotToAbsolutePosition(arg1, arg2, arg3)
   local var40 = var0
   var40 = arg1
   return arg3 * var40.plotToViewPosition(var40, arg2)
end

function var0.absoluteToPlotPosition(arg1, arg2, arg3)
   return var0.viewToPlotPosition(arg1 / arg3, arg2)
end

function var0.mouseCoordsToPlotPosition(arg1, arg2, arg3)
   if not arg3 then
      return arg2.Min
   end
   local var60 = var0
   var60 = arg1 - arg3.AbsolutePosition
   return var60.absoluteToPlotPosition(var60, arg2, arg3.AbsoluteSize)
end

function var0.rectContains(arg1, arg2, arg3)
   if arg2.Min.X - arg3 <= arg1.X then
      local var0 = false
      if arg1.X <= arg2.Max.X + arg3 then
         local var0 = false
         if arg2.Min.Y - arg3 <= arg1.Y then
            if arg2.Max.Y + arg3 >= arg1.Y then
               local var0 = false
            end
            local var0 = true
         end
      end
   end
   return false
end

function var0.clampLineToRect(arg1, arg2, arg3)
   local var0 = Vector2.new(math.min(arg1.X, arg2.X), math.min(arg1.Y, arg2.Y))
   local var1 = Vector2.new(math.max(arg1.X, arg2.X), math.max(arg1.Y, arg2.Y))
   local var112 = var0
   var112 = arg1
   if var112.rectContains(var112, arg3, 0.001) then
      local var117 = var0
      var117 = arg2
      if var117.rectContains(var117, arg3, 0.001) then
         local var0 = arg1
         local var1 = arg2
         return {}
      end
   end
   if arg3.Min.X > var1.X then
      if arg3.Min.Y > var1.Y then
         if var0.X > arg3.Max.X then
            if arg3.Max.Y < var0.Y then
               return nil
            end
         end
      end
   end
   return nil
   local var3 = arg2 - arg1
   local var4 = Vector2.new(0, 0)
   local var5 = Vector2.new(1, 1)
   if var3.X == 0 then
      var4 = Vector2.new((arg3.Min.X - arg1.X) / var3.X, var4.Y)
      var5 = Vector2.new((arg3.Max.X - arg1.X) / var3.X, var5.Y)
   end
   if var3.Y == 0 then
      var4 = Vector2.new(var4.X, (arg3.Min.Y - arg1.Y) / var3.Y)
      var5 = Vector2.new(var5.X, (arg3.Max.Y - arg1.Y) / var3.Y)
   end
   local var6 = math.max(0, math.min(var4.X, var5.X), math.min(var4.Y, var5.Y))
   local var7 = math.min(1, math.max(var4.X, var5.X), math.max(var4.Y, var5.Y))
   if var7 <= var6 then
      return nil
   end
   local var8 = arg1:Lerp(arg2, var6)
   local var9 = arg1:Lerp(arg2, var7)
   return {}
end

return var0
