-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = game:GetService("StudioService")
local var2 = require(var0.Src.Util.UpdateStatus)
local var3 = require(var0.Src.Actions.SetPluginUpdateStatus)
return function(arg1, arg2)
   return function()
      arg1:TryInstallPlugin(var3, var2)
   end
end
