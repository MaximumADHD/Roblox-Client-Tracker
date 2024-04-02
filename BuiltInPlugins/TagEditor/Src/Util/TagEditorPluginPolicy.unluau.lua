-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Src.Util.DebugFlags)
local var1 = {}
function var1.getAreCustomIconsAndEmojiAllowed()
   if var0.RunningUnderCLI() then
      return true
   end
   return game:GetService("PluginPolicyService"):getPluginPolicy("TagEditor").AreCustomIconsAndEmojiAllowed
end

return var1
