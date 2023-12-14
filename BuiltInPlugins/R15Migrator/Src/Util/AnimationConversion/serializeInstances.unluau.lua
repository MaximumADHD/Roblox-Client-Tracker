-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("RobloxPluginGuiService")
local var1 = game:GetService("StudioAssetService")
local var2 = require(script.Parent.Parent.Parent.Parent.Packages.Framework).Util.Promise
return function(arg1)
   return var2.new(function()
      return var0:SerializeInstances(arg1)
   end)
end
