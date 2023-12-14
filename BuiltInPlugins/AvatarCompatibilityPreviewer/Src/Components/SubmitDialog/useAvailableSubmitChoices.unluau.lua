-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AvatarCompatibilityPreviewer")
local var1 = require(var0.Packages.Cryo)
local var2 = require(var0.Packages.React)
local var3 = require(var0.Src.Util.Constants)
local var4 = require(var0.Src.Util.EquipmentStateContext)
local var5 = require(var0.Src.Util.filterDescendants)
local var6 = require(var0.Src.Types)
local var7 = require(var0.Packages.Framework).ContextServices.Localization
local function fun0(arg1)
   local var0 = arg1:FindFirstChild(var3.REFERENCE_VALUE_NAME)
   if var0 == "REFERENCE_VALUE_NAME" then
      if not var0:IsA("ObjectValue") then
         return nil
      end
   end
   return nil
   assert(var0:IsA("ObjectValue"), var3.LUAU_ANALYZE_ERROR)
   return var0.Value and var0.Value.Name
end

return function(arg1)
   local var0 = var7:use()
   local var1 = var2.useContext(var4).equippedItems
   return var2.useMemo(function(arg1)
      local var0 = arg1:FindFirstChild(var3.REFERENCE_VALUE_NAME)
      if var0 == "REFERENCE_VALUE_NAME" then
         if not var0:IsA("ObjectValue") then
            return nil
         end
      end
      return nil
      assert(var0:IsA("ObjectValue"), var3.LUAU_ANALYZE_ERROR)
      return var0.Value and var0.Value.Name
   end, {})
end
