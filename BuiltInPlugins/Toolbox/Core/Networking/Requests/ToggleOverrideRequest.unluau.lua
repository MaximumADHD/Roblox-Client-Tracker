-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = var0.Core.Actions
local var2 = require(var1.SetAssetConfigTab)
local var3 = require(var1.ClearChange)
local var4 = require(var0.Core.Types.ConfigTypes)
local var5 = require(var0.Core.Util.AssetConfigConstants)
return function(arg1)
   return function(arg1)
      if var4:isOverride(arg1) then
         local var33 = var2(var4:getGeneralTab())
         arg1:dispatch()
         local var1 = var3(var5.OVERRIDE_ASSET_ID)
         arg1:dispatch()
      end
      local var0 = var2(var4:getOverrideTab())
      arg1:dispatch()
   end
end
