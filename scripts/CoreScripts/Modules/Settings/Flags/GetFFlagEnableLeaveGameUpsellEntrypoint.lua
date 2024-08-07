local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local GetFFlagEnableInExpPhoneVoiceUpsellEntrypoints = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableInExpPhoneVoiceUpsellEntrypoints
local GetFFlagExtractLeaveGameFunc = require(RobloxGui.Modules.Settings.Flags.GetFFlagExtractLeaveGameFunc)

game:DefineFastFlag("EnableLeaveGameUpsellEntrypoint", false)

return function()
	return GetFFlagExtractLeaveGameFunc() and GetFFlagEnableInExpPhoneVoiceUpsellEntrypoints() and game:GetFastFlag("EnableLeaveGameUpsellEntrypoint")
end
