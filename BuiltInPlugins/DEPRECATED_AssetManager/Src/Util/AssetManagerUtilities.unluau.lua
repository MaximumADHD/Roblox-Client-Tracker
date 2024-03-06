-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("PluginPolicyService"):getPluginPolicy("AssetManager")
local var1 = require(script.Parent.hasInternalPermission)
local var2 = game:GetEngineFeature("EnableCustomVideoUploadLua")
local var3 = {}
function var3.shouldEnableAudioImport()
   return var0.EnableAudioImport
end

function var3.enableAudioImport()
   return var3.shouldEnableAudioImport()
end

function var3.shouldEnableVideoImport()
   return var2 or var1()
end

function var3.enableVideoImport()
   return var3.shouldEnableVideoImport()
end

function var3.enableBadgesCallout()
   return var0.ShowBadges
end

return var3
