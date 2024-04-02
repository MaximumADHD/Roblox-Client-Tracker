-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script:FindFirstAncestor("MaterialPicker").Packages.MaterialFramework).Util.applyToInstances
function applyToSelectionByIdentifier(arg1, arg2)
   local var0 = string.split(arg1, "__")
   local var1 = arg2:Get()
   if var0 == 2 then
      var0(var1, var0[2], var0[1])
   end
   var0(var1, arg1)
end

return applyToSelectionByIdentifier
