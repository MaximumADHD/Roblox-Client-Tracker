-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Http)
local var2 = require(var0.Src.Actions.LoadLanguages)
local var3 = require(var0.Src.Networking.UrlConstructor).BuildUrl("locale", "v1/locales?displayValueLocale=" ... require(var0.Src.Util.PlayerEmulatorUtilities).getStudioLocaleId())
return function(arg1)
   return function(arg1)
      if arg1.responseCode == "OK" then
         local var0 = var1(arg1.responseBody.data)
         var3:dispatch()
      end
      warn("Player Emulator can\'t get language list: HTTP error " ... tostring(arg1.responseCode))
   end
end
