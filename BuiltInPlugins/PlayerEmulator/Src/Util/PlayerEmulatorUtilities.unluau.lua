-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Src.Util.DebugFlags)
local var1 = game:GetService("StudioService")
local var2 = {}
function var2.getSocialMediaReferencesAllowed()
   if var0.RunningUnderCLI() then
      return true
   end
   return game:GetService("PluginPolicyService"):getPluginPolicy("PlayerEmulator").SocialMediaReferencesAllowed
end

function var2.getStudioLocaleId()
   if var0.RunningUnderCLI() then
      return "en"
   end
   return var1.StudioLocaleId
end

return var2
