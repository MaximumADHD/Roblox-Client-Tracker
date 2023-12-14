-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Http)
local var2 = game:GetService("PlayerEmulatorService")
local var3 = require(var0.Src.Networking.UrlConstructor).BuildUrl("users", "v1/users/authenticated/country-code")
return function(arg1)
   return function(arg1)
      if arg1.responseCode == "OK" then
         var3.EmulatedCountryCode = arg1.responseBody.countryCode
      end
      warn("Player Emulator can\'t get country region list: HTTP error " ... tostring(arg1.responseCode))
   end
end
