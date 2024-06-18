-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("TextureGenerator")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.ReactUtils)
local var3 = var2.ContextStack
local var4 = var2.useToggleState
local var5 = require(var0.Src.Components.GenerationsProvider)
local var6 = require(var0.Src.Components.OptionsProvider)
local var7 = require(var0.Src.Components.PreviewProvider)
local var8 = require(var0.Src.Components.Screens.GenerationScreen)
local var9 = require(var0.Src.Components.Screens.TermsOfServiceScreen)
local var10 = require(var0.Src.Util.Constants)
local var11 = game:DefineFastFlag("TextureGeneratorAddTermsOfServicePage", false)
return function(arg1)
   if var11 then
      local var0 = var4(arg1.Plugin:GetSetting(var10.TEXTURE_GENERATOR_LEGAL_ACCEPT))
      if not var0.enabled then
         local var64 = {}
         var64.Plugin = arg1.Plugin
         var64.AcceptedButtonEnable = var0.enable
         return var1.createElement(var9, var64)
      end
      local var71 = {}
      local var76 = var1.createElement(var5)
      local var1 = var1.createElement(var6)
      local var2 = var1.createElement(var7)
      var71.providers = {}
      return var1.createElement(var3, var71, var1.createElement(var8))
   end
   local var93 = {}
   local var98 = var1.createElement(var5)
   local var0 = var1.createElement(var6)
   local var1 = var1.createElement(var7)
   var93.providers = {}
   return var1.createElement(var3, var93, var1.createElement(var8))
end
