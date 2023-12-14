-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Src.Types)
return function(arg1)
   local var0 = Instance.new("MaterialVariant")
   var0.Name = arg1.Name
   var0.Archivable = false
   local var1 = arg1.Textures
   var0.ColorMap = var1.ColorMap
   if var1.NormalMap then
      var0.NormalMap = var1.NormalMap
   end
   if var1.MetalnessMap then
      var0.MetalnessMap = var1.MetalnessMap
   end
   if var1.RoughnessMap then
      var0.RoughnessMap = var1.RoughnessMap
   end
   return var0
end
