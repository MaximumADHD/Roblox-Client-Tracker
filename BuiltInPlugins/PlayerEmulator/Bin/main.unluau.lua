-- Generated with Unluau (https://github.com/valencefun/unluau)
return function(arg1, arg2)
   if not arg1 then
   end
   local var0 = script.Parent.Parent
   local var1 = require(var0.Packages.Roact)
   local var11 = var0.Src.Components
   local var2 = require(var11.PlayerEmulatorPlugin)
   function var11()
      if var1 then
         var2.unmount(var1)
      end
   end
   
   var11()
end
