-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("RobloxPluginGuiService")
local var1 = require(script.Parent.Parent.Parent.Packages.Framework).Util.Promise
return function(arg1, arg2)
   return var1.new(function()
      return var0:SerializeInstances(arg1)
   end)
end
