local CorePackages = game:GetService("CorePackages")
local VoiceChatCore = require(CorePackages.Workspace.Packages.VoiceChatCore)
local GetFFlagUpdateVoiceConnectionToasts = require(script.Parent.GetFFlagUpdateVoiceConnectionToasts)

game:DefineFastFlag("EnableVoiceTrustedConnectionsToasts", false)

return function()
	return GetFFlagUpdateVoiceConnectionToasts() 
		and game:GetFastFlag("EnableVoiceTrustedConnectionsToasts")
end
