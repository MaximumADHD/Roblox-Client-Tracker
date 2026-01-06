local CorePackages = game:GetService("CorePackages")
local IsExperienceMenuABTestEnabled = require(script.Parent.Parent.IsExperienceMenuABTestEnabled)
local FStringSocialCaptureIXPLayer = require(CorePackages.Workspace.Packages.SharedFlags).FStringSocialCaptureIXPLayer
local FStringSocialCaptureTakenIXPLayer =
	require(CorePackages.Workspace.Packages.SharedFlags).FStringSocialCaptureTakenIXPLayer
local GetFFlagEnableNewInviteMenuIXP = require(script.Parent.Parent.Flags.GetFFlagEnableNewInviteMenuIXP)
local GetFStringLargerRobuxUpsellIxpLayer =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFStringLargerRobuxUpsellIxpLayer
local GetFStringLuaAppExperienceMenuLayer =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFStringLuaAppExperienceMenuLayer
local GetFStringLuaAppConsoleExperienceMenuLayer =
	require(script.Parent.Parent.Flags.GetFStringLuaAppConsoleExperienceMenuLayer)
local GetFFlagReportAnythingAnnotationIXP =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagReportAnythingAnnotationIXP
local GetFStringReportAnythingAnnotationIXPLayerName =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFStringReportAnythingAnnotationIXPLayerName
local GetFFlagReportTabShareIXPLayerWithMenu =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagReportTabShareIXPLayerWithMenu
local GetFStringChatTranslationLayerName = require(script.Parent.Parent.Flags.GetFStringChatTranslationLayerName)
local GetFFlagChatTranslationSettingEnabled = require(script.Parent.Parent.Flags.GetFFlagChatTranslationSettingEnabled)
local GetFFlagVoiceUserAgencyEnableIXP = require(script.Parent.Parent.Flags.GetFFlagVoiceUserAgencyEnableIXP)
local GetFStringVoiceUserAgencyIXPLayerName = require(script.Parent.Parent.Flags.GetFStringVoiceUserAgencyIXPLayerName)
local GetFFlagLuaInExperienceCoreScriptsGameInviteUnification =
	require(script.Parent.Parent.Flags.GetFFlagLuaInExperienceCoreScriptsGameInviteUnification)
local getFStringDesktopToastNotificationLayer =
	require(CorePackages.Workspace.Packages.SharedFlags).getFStringDesktopToastNotificationLayer
local GetFStringGameInviteMenuLayer = require(CorePackages.Workspace.Packages.SharedFlags).GetFStringGameInviteMenuLayer
local GetFFlagUXForCameraPerformanceIXPEnabled =
	require(script.Parent.Parent.Flags.GetFFlagUXForCameraPerformanceIXPEnabled)
local GetFStringUXForCameraPerformanceIXPLayerName =
	require(script.Parent.Parent.Flags.GetFStringUXForCameraPerformanceIXPLayerName)
local GetFStringVoiceExposureIXPLayerName = require(script.Parent.Parent.Flags.GetFStringVoiceExposureIXPLayerName)
local GetFStringAndroidPhoneVerificationLayer =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFStringAndroidPhoneVerificationLayer
local GetFStringIOSPhoneVerificationLayer =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFStringIOSPhoneVerificationLayer
local GetFFlagEnableAppChatInExperience =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableAppChatInExperience
local getFStringAppChatInExperienceIXPLayer =
	require(CorePackages.Workspace.Packages.SharedFlags).getFStringAppChatInExperienceIXPLayer
local FStringReportMenuIXPLayer = require(CorePackages.Workspace.Packages.SharedFlags).FStringReportMenuIXPLayer
local FStringReportingIXPLayer = require(CorePackages.Workspace.Packages.SharedFlags).FStringReportingIXPLayer
local FStringEARReportMenuIXPLayer = require(CorePackages.Workspace.Packages.SharedFlags).FStringEARReportMenuIXPLayer

return function()
	local layers = {
		"AbuseReports",
		getFStringDesktopToastNotificationLayer(),
		FStringReportMenuIXPLayer,
		FStringReportingIXPLayer,
		FStringEARReportMenuIXPLayer,
		FStringSocialCaptureIXPLayer,
		FStringSocialCaptureTakenIXPLayer,
	}

	if
		IsExperienceMenuABTestEnabled()
		or GetFFlagEnableNewInviteMenuIXP()
		or GetFFlagReportTabShareIXPLayerWithMenu()
	then
		table.insert(layers, GetFStringLuaAppExperienceMenuLayer())
		table.insert(layers, GetFStringLuaAppConsoleExperienceMenuLayer())
	end

	if GetFStringLargerRobuxUpsellIxpLayer() then
		table.insert(layers, GetFStringLargerRobuxUpsellIxpLayer())
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

	if GetFFlagUXForCameraPerformanceIXPEnabled() then
		table.insert(layers, GetFStringUXForCameraPerformanceIXPLayerName())
	end

	table.insert(layers, GetFStringVoiceExposureIXPLayerName())

	if GetFStringAndroidPhoneVerificationLayer() then
		table.insert(layers, GetFStringAndroidPhoneVerificationLayer())
	end

	if GetFStringIOSPhoneVerificationLayer() then
		table.insert(layers, GetFStringIOSPhoneVerificationLayer())
	end

	if GetFFlagEnableAppChatInExperience() then
		table.insert(layers, getFStringAppChatInExperienceIXPLayer())
	end

	return layers
end
