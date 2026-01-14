local CorePackages = game:GetService("CorePackages")
local isInExperienceUIVREnabled =
	require(CorePackages.Workspace.Packages.SharedExperimentDefinition).isInExperienceUIVREnabled
local isSpatial = require(CorePackages.Workspace.Packages.AppCommonLib).isSpatial
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagEnableInExperienceAvatarSwitcher = SharedFlags.FFlagEnableInExperienceAvatarSwitcher

return {
	OverflowMenu = require(script.OverflowMenu),
	Chat = require(script.ExpChat.ChatChromeIntegration),
	ConnectUnibar = require(script.Connect.ConnectIconUnibar),
	ConnectDropdown = require(script.Connect.ConnectIconDropdown),
	TrustAndSafety = require(script.TrustAndSafety),
	DummyWindow = require(script.DummyWindow),
	DummyWindow2 = require(script.DummyWindow2),
	ToggleMic = require(script.ToggleMic),
	JoinVoice = require(script.JoinVoice),
	SelfieView = require(script.SelfieView),
	CapturesEntrypoint = require(script.Captures.CapturesEntrypoint),
	AvatarSwitcherEntryPoint = if FFlagEnableInExperienceAvatarSwitcher
		then require(script.AvatarSwitcher.AvatarSwitcherEntrypoint)
		else nil,
	MusicEntrypoint = require(script.MusicUtility.MusicEntrypoint),
	PartyMic = require(script.Party.PartyMic),
	VRToggleButton = if isInExperienceUIVREnabled and isSpatial() then require(script.VRToggleButton) else nil :: never,
	VRSafeBubble = if isInExperienceUIVREnabled and isSpatial() then require(script.VRSafeBubble) else nil :: never,
}
