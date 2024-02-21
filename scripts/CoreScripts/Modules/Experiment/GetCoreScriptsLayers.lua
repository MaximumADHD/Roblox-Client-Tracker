local CorePackages = game:GetService("CorePackages")
local IsExperienceMenuABTestEnabled = require(script.Parent.Parent.IsExperienceMenuABTestEnabled)
local FFlagEnableCapturesDesktopExperiment = require(CorePackages.Workspace.Packages.SharedFlags).FFlagEnableCapturesDesktopExperiment
local FStringCapturesIXPLayer = require(CorePackages.Workspace.Packages.SharedFlags).FStringCapturesIXPLayer
local GetFFlagShareInviteLinkContextMenuABTestEnabled = require(script.Parent.Parent.Flags.GetFFlagShareInviteLinkContextMenuABTestEnabled)
local GetFFlagEnableNewInviteMenuIXP = require(script.Parent.Parent.Flags.GetFFlagEnableNewInviteMenuIXP)
local GetFStringLargerRobuxUpsellIxpLayer = require(CorePackages.Workspace.Packages.SharedFlags).GetFStringLargerRobuxUpsellIxpLayer
local GetFStringLuaAppExperienceMenuLayer = require(script.Parent.Parent.Flags.GetFStringLuaAppExperienceMenuLayer)
local GetFFlagInGameMenuV1FadeBackgroundAnimation = require(script.Parent.Parent.Settings.Flags.GetFFlagInGameMenuV1FadeBackgroundAnimation)
local GetFFlagEnableTeleportBackButton = require(script.Parent.Parent.Flags.GetFFlagEnableTeleportBackButton)
local GetFStringTeleportBackButtonIXPCustomLayerName = require(script.Parent.Parent.Flags.GetFStringTeleportBackButtonIXPCustomLayerName)
local GetFFlagReportAnythingAnnotationIXP = require(script.Parent.Parent.Settings.Flags.GetFFlagReportAnythingAnnotationIXP)
local GetFStringReportAnythingAnnotationIXPLayerName = require(script.Parent.Parent.Settings.Flags.GetFStringReportAnythingAnnotationIXPLayerName)
local GetFStringChatTranslationLayerName = require(script.Parent.Parent.Flags.GetFStringChatTranslationLayerName)
local GetFFlagChatTranslationSettingEnabled = require(script.Parent.Parent.Flags.GetFFlagChatTranslationSettingEnabled)
local GetFFlagVoiceUserAgencyEnableIXP = require(script.Parent.Parent.Flags.GetFFlagVoiceUserAgencyEnableIXP)
local GetFStringVoiceUserAgencyIXPLayerName = require(script.Parent.Parent.Flags.GetFStringVoiceUserAgencyIXPLayerName)
local GetFFlagLuaInExperienceCoreScriptsGameInviteUnification = require(script.Parent.Parent.Flags.GetFFlagLuaInExperienceCoreScriptsGameInviteUnification)
local getFStringDesktopToastNotificationLayer = require(CorePackages.Workspace.Packages.SharedFlags).getFStringDesktopToastNotificationLayer
local GetFFlagMuteTogglesEnableIXP = require(script.Parent.Parent.Settings.Flags.GetFFlagMuteTogglesEnableIXP)
local GetFStringMuteTogglesIXPLayerName = require(script.Parent.Parent.Settings.Flags.GetFStringMuteTogglesIXPLayerName)
local GetFStringGameInviteMenuLayer = require(CorePackages.Workspace.Packages.SharedFlags).GetFStringGameInviteMenuLayer
local GetFFlagUXForCameraPerformanceIXPEnabled = require(script.Parent.Parent.Flags.GetFFlagUXForCameraPerformanceIXPEnabled)
local GetFStringUXForCameraPerformanceIXPLayerName = require(script.Parent.Parent.Flags.GetFStringUXForCameraPerformanceIXPLayerName)

return function()
	local layers = {
		"AbuseReports",
		getFStringDesktopToastNotificationLayer(),
	}

	if IsExperienceMenuABTestEnabled()
		or GetFFlagShareInviteLinkContextMenuABTestEnabled()
		or GetFFlagEnableNewInviteMenuIXP()
	then
		table.insert(layers, GetFStringLuaAppExperienceMenuLayer())
	end

	if GetFStringLargerRobuxUpsellIxpLayer() then
		table.insert(layers, GetFStringLargerRobuxUpsellIxpLayer())
	end

	if GetFFlagEnableTeleportBackButton() then
		table.insert(layers, GetFStringTeleportBackButtonIXPCustomLayerName())
	end

	if GetFFlagInGameMenuV1FadeBackgroundAnimation() then
		table.insert(layers, "Engine.Interactivity.UICreation.NotchScreenSupport")
	end

	if GetFFlagReportAnythingAnnotationIXP() then
		table.insert(layers, GetFStringReportAnythingAnnotationIXPLayerName())
	end

	if GetFFlagChatTranslationSettingEnabled() and #GetFStringChatTranslationLayerName() > 0 then
		table.insert(layers, GetFStringChatTranslationLayerName())
	end

	if GetFFlagVoiceUserAgencyEnableIXP() then
		table.insert(layers, GetFStringVoiceUserAgencyIXPLayerName())
	end
	if GetFFlagLuaInExperienceCoreScriptsGameInviteUnification() then
		table.insert(layers, GetFStringGameInviteMenuLayer())
	end

	if GetFFlagMuteTogglesEnableIXP() then
		table.insert(layers, GetFStringMuteTogglesIXPLayerName())
	end

	if GetFFlagUXForCameraPerformanceIXPEnabled() then
		table.insert(layers, GetFStringUXForCameraPerformanceIXPLayerName())
	end

	if FFlagEnableCapturesDesktopExperiment then
		table.insert(layers, FStringCapturesIXPLayer)
	end

	return layers
end
