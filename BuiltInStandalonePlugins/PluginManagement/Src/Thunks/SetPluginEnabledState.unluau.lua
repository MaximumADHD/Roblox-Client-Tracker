-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("StudioService")
local var1 = require(script.Parent.Parent.Parent.Src.Actions.SetPluginEnabledState)
return function(arg1, arg2)
   return function(arg1)
      local var0 = arg1.assetId
      var0:SetPluginEnabled(var0, arg2)
      local var1 = var1(var0, arg2)
      arg1:dispatch()
   end
end
