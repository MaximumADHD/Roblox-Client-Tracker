local CorePackages = game:GetService("CorePackages")
local VoiceChatCore = require(CorePackages.Workspace.Packages.VoiceChatCore)

local GetFFlagEmitVoiceRejoinStatus = VoiceChatCore.Flags.GetFFlagEmitVoiceRejoinStatus
local GetFFlagUpdateVoiceConnectionToasts = require(script.Parent.GetFFlagUpdateVoiceConnectionToasts)

game:DefineFastFlag("EnableVoiceTrustedConnectionsToasts", false)

return function()
	return GetFFlagUpdateVoiceConnectionToasts() 
		and GetFFlagEmitVoiceRejoinStatus() 
		and game:GetFastFlag("EnableVoiceTrustedConnectionsToasts")
end
