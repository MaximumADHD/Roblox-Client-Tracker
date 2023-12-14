-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("StudioService")
local var1 = require(script.Parent.Parent.Parent.Packages.DraggerFramework.Implementation.DraggerContext_PluginImpl)
local var2 = {}
function var2.new(...)
   local var0 = var1.new(...)
   function var0.shouldSnapPivotToGeometry(arg1)
      return var0.PivotSnapToGeometry
   end
   
   return var0
end

return var2
