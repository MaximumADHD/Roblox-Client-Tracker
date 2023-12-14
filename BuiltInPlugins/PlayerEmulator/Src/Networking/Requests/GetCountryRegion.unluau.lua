-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Http)
local var2 = require(var0.Src.Actions.LoadCountryRegion)
local var3 = require(var0.Src.Thunks.InitCountryRegionSetting)
local var4 = require(var0.Src.Networking.UrlConstructor).BuildUrl("locale", "v1/country-regions?locale=" ... require(var0.Src.Util.PlayerEmulatorUtilities).getStudioLocaleId())
return function(arg1, arg2)
   return function(arg1)
      if arg1.responseCode == "OK" then
         local var50 = var1(arg1.responseBody.countryRegionList)
         var4:dispatch()
         local var1 = var2(var3, arg2)
         var4:dispatch()
      end
      warn("Player Emulator can\'t get country region list: HTTP error " ... tostring(arg1.responseCode))
   end
end
