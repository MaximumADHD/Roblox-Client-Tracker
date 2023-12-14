-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Core.Actions.SetCurrentScreen)
local var2 = require(var0.Core.Util.AssetConfigConstants)
return function()
   return function(arg1)
      if arg1:getState().screenFlowType == "UPLOAD_FLOW" then
         local var0 = var1(var2.SCREENS.ASSET_VALIDATION)
         arg1:dispatch()
      end
      local var0 = var1(var2.SCREENS.CONFIGURE_ASSET)
      arg1:dispatch()
   end
end
