-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("MaterialGenerator")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Src.Util.PluginSettingsContext)
return function(arg1)
   local var0 = var1.useContext(var2)
   local var1 = arg1
   local var2 = var0.setSetting
   var1 = var1.useCallback(function(arg1)
      var0.setSetting(arg1, arg1)
   end, {})
   return var0.getSetting(arg1)var1,
end
