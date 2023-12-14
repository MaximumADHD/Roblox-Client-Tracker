-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var2 = require(var0.Src.Util.GameSettingsUtilities).getAutoTranslatedLanguages
local var3 = require(var0.Src.Actions.SetCurrentSettings)
return function(arg1)
   return function(arg1, arg2)
      local var0 = arg1:getState().Settings.Current
      local var1 = var2()[arg1]
      if not var1 then
         var1 = arg2.localizationPageController:getAutoTranslationTargetLanguages(arg1)
      end
      local var331 = var1.Dictionary
      var331 = var0
      local var333 = {}
      var333.AutoTranslationTargetLanguages = var1
      var0 = var331.join(var331, var333)
      local var3 = var3(var0)
      arg1:dispatch()
   end
end
