-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("PlayerEmulatorService")
local var1 = script.Parent.Parent.Parent
local var2 = require(var1.Src.Util.Constants)
local var3 = require(var1.Src.Networking.Requests.GetUserCountryRegionCode)
return function(arg1, arg2)
   return function(arg1)
      local var0 = arg2:GetSetting(var2.COUNTRY_REGION_SETTING_KEY)
      if var0 then
         if arg1:getState().CountryRegion.countryRegionTable[var0] then
            var0.EmulatedCountryCode = var0
         end
      end
      local var1 = var3(arg1)
      arg1:dispatch()
   end
end
