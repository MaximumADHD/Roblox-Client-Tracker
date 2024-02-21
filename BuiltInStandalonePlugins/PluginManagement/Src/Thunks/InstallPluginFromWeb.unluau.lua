-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Src.Constants.PluginInstalledStatus)
local var2 = require(var0.Src.Actions.SetPluginInstallStatus)
local var3 = require(var0.Src.Actions.SetPluginId)
local var4 = require(var0.Src.Actions.SetPluginMetadata)
local var5 = require(var0.Src.Actions.ClearPluginData)
return function(arg1, arg2, arg3, arg4)
   return function(arg1, arg2)
      if arg1 == "report" then
         arg4:report("InstallPluginFromWebSuccess", var3)
      else
         arg4:report("InstallPluginFromWebFailure", var3, arg1)
      end
      local var0 = var1(var3, var49, var50)
      arg3:dispatch()
   end
end
