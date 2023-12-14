-- Generated with Unluau (https://github.com/valencefun/unluau)
return function(arg1)
   local var22 = Vector2.new(1, 1).Unit
   local var1 = Vector2.new(65535, 65535).Unit
   local var2 = -∞
   local var3 = nil
   var22 = { Vector2.new(1, 0), Vector2.new(65535, 0), Vector2.new(0, 1), Vector2.new(0, 65535), Vector2.new(1, 1).Unit, Vector2.new(65535, 1).Unit, Vector2.new(1, 65535).Unit, Vector2.new(65535, 65535).Unit }
   local var42 = ipairs(var22)
   local var5 = var1:Dot(arg1.Unit)
   if var2 < var5 then
      var2 = var5
      var3 = var1
   end
   return var3 * arg1.Magnitude
end
