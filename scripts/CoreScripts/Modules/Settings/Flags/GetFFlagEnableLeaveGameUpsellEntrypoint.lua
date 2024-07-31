local CorePackages = game:GetService("CorePackages")
local GetFFlagEnableInExpPhoneVoiceUpsellEntrypoints = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableInExpPhoneVoiceUpsellEntrypoints

game:DefineFastFlag("EnableLeaveGameUpsellEntrypoint", false)

return function()
	return GetFFlagEnableInExpPhoneVoiceUpsellEntrypoints() and game:GetFastFlag("EnableLeaveGameUpsellEntrypoint")
end
