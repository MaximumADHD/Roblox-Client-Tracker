-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script:FindFirstAncestor("MaterialPicker").Packages.MaterialFramework).Util.getSerializedMaterialIdentifier
return function(arg1, arg2)
   local var0 = arg1:GetSetting("RecentlyUsed")
   if not var0 then
      local var0 = {}
      local var1 = "Plastic"
   end
   local var1 = var0(arg2)
   local var2 = table.find(var0, var1)
   if var2 then
      table.remove(var0, var2)
   end
   table.insert(var0, var1)
   local var3 = 9999
   if var3 < var0 then
      var3 = var0
      table.remove(var3, 1)
   end
   arg1:SetSetting("RecentlyUsed", var0)
end
