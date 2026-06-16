local CorePackages = game:GetService("CorePackages")
local isInExperienceUIVREnabled =
	require(CorePackages.Workspace.Packages.SharedExperimentDefinition).isInExperienceUIVREnabled
local isSpatial = require(CorePackages.Workspace.Packages.AppCommonLib).isSpatial
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagEnableInExperienceAvatarSwitcher = SharedFlags.FFlagEnableInExperienceAvatarSwitcher
local FFlagAddIGMToSideSheet = SharedFlags.FFlagAddIGMToSideSheet
local FFlagEnableSideSheet = SharedFlags.FFlagEnableSideSheet
local FFlagEnableInExperienceShop = SharedFlags.FFlagEnableInExperienceShop
local FFlagIntegrateTraversalHistoryInSideSheet = SharedFlags.FFlagIntegrateTraversalHistoryInSideSheet

local Traversal = require(CorePackages.Workspace.Packages.CoreScriptsRoactCommon).Traversal
local FFlagAddTraversalHistory = Traversal.Flags.FFlagAddTraversalHistory

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
	People = if FFlagAddIGMToSideSheet then require(script.Pages.People) else nil,
	Settings = if FFlagAddIGMToSideSheet then require(script.Pages.Settings) else nil,
	Gallery = if FFlagAddIGMToSideSheet then require(script.Pages.Gallery) else nil,
	Help = if FFlagAddIGMToSideSheet then require(script.Pages.Help) else nil,
	TraversalHistory = if FFlagAddTraversalHistory and FFlagIntegrateTraversalHistoryInSideSheet
		then require(script.Pages.TraversalHistory)
		else nil,
	LeaveConfirmation = if FFlagEnableSideSheet then require(script.Pages.LeaveConfirmation) else nil,
	RespawnConfirmation = if FFlagEnableSideSheet then require(script.Pages.RespawnConfirmation) else nil,
	ShopEntrypoint = if FFlagEnableInExperienceShop then require(script.InExperienceShop.ShopEntrypoint) else nil,
}
