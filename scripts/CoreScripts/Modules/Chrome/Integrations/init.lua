local CorePackages = game:GetService("CorePackages")
local isInExperienceUIVREnabled =
	require(CorePackages.Workspace.Packages.SharedExperimentDefinition).isInExperienceUIVREnabled
local isSpatial = require(CorePackages.Workspace.Packages.AppCommonLib).isSpatial

return {
	OverflowMenu = require(script.OverflowMenu),
	Chat = require(script.ExpChat.ChatChromeIntegration),
	ConnectUnibar = require(script.Connect.ConnectIconUnibar),
	ConnectDropdown = require(script.Connect.ConnectIconDropdown),
	UnibarMenuToggleButton = require(script.UnibarMenuToggleButtonV2),
	TrustAndSafety = require(script.TrustAndSafety),
	DummyWindow = require(script.DummyWindow),
	DummyWindow2 = require(script.DummyWindow2),
	DummyContainer = require(script.DummyContainer),
	ToggleMic = require(script.ToggleMic),
	JoinVoice = require(script.JoinVoice),
	SelfieView = require(script.SelfieView),
	CapturesEntrypoint = require(script.Captures.CapturesEntrypoint),
	MusicEntrypoint = require(script.MusicUtility.MusicEntrypoint),
	PartyMic = require(script.Party.PartyMic),
	VRToggleButton = if isInExperienceUIVREnabled and isSpatial() then require(script.VRToggleButton) else nil :: never,
	VRSafeBubble = if isInExperienceUIVREnabled and isSpatial() then require(script.VRSafeBubble) else nil :: never,
}
