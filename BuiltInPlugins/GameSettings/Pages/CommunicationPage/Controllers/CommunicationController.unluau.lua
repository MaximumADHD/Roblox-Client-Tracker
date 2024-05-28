-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = {}
var0.__index = var0
function var0.new(arg1)
   local var0 = {}
   var0.__networking = arg1
   return setmetatable(var0, var0)
end

function var0.voiceUniverseSettingsPOST(arg1, arg2, arg3)
   local var708 = {}
   var708.Body = arg3
   return arg1.__networking:post("voice", "/v1/settings/universe/" ... arg2, var708)
end

function var0.avatarVideoUniverseSettingsPOST(arg1, arg2, arg3)
   local var719 = {}
   var719.Body = arg3
   return arg1.__networking:post("voice", "/v1/settings/universe/avatarvideo/" ... arg2, var719)
end

function var0.voiceUniverseSettingsGET(arg1, arg2)
   return arg1.__networking:get("voice", "/v1/settings/universe/" ... arg2)
end

function var0.voiceUserSettingsGET(arg1)
   return arg1.__networking:get("voice", "/v1/settings")
end

function var0.getAvatarChatEnabled(arg1)
   return arg1:voiceUserSettingsGET():await().responseBody.isAvatarChatEnabled
end

function var0.getAvatarChatSettings(arg1, arg2)
   local var0 = arg1:voiceUniverseSettingsGET(arg2):await()
   local var1 = {}
   var1.audioEnabled = var0.responseBody.isUniverseEnabledForVoice
   var1.videoEnabled = var0.responseBody.isUniverseEnabledForAvatarVideo
   return var1
end

function var0.setAvatarChatSettings(arg1, arg2, arg3, arg4)
   local var0 = {}
   if arg3 == "optIn" then
      var0.optIn = arg3
      arg1:voiceUniverseSettingsPOST(arg2, var0):await()
   end
   if arg4 == "optIn" then
      var0.optIn = arg4
      arg1:avatarVideoUniverseSettingsPOST(arg2, var0):await()
   end
end

return var0
