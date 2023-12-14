-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Parent.Src.Util.GameSettingsUtilities).isTeamCreateEnabled
local var1 = {}
var1.__index = var1
function var1.new(arg1)
   local var0 = {}
   var0.__networking = arg1
   return setmetatable(var0, var1)
end

function var1.universesShutdownV2POST(arg1, arg2)
   local var26 = {}
   var26.Body = {}
   return arg1.__networking:post("develop", "/v2/universes/" ... arg2 ... "/shutdown", var26)
end

function var1.voiceUniverseSettingsPOST(arg1, arg2, arg3)
   local var38 = {}
   local var0 = {}
   var0.optIn = arg3
   var38.Body = var0
   return arg1.__networking:post("voice", "/v1/settings/universe/" ... arg2, var38)
end

function var1.voiceUniverseSettingsGET(arg1, arg2)
   return arg1.__networking:get("voice", "/v1/settings/universe/" ... arg2)
end

function var1.getScriptCollaborationEnabledOnServer(arg1, arg2)
   if not var0() then
      return false
   end
   return arg2:GetService("VersionControlService").ScriptCollabEnabled
end

function var1.getScriptCollaborationEnabled(arg1, arg2)
   return arg2:GetService("StudioData").EnableScriptCollabByDefaultOnLoad
end

function var1.setScriptCollaborationEnabled(arg1, arg2, arg3)
   arg2:GetService("StudioData").EnableScriptCollabByDefaultOnLoad = arg3
end

function var1.shutdownAllServers(arg1, arg2)
   arg1:universesShutdownV2POST(arg2):await()
end

function var1.getVoiceChatEnabled(arg1, arg2)
   return arg1:voiceUniverseSettingsGET(arg2):await().responseBody.isUniverseEnabledForVoice
end

function var1.setVoiceChatEnabled(arg1, arg2, arg3)
   arg1:voiceUniverseSettingsPOST(arg2, arg3):await()
end

function var1.getIsTeamCreateEnabled(arg1)
   return var0()
end

return var1
