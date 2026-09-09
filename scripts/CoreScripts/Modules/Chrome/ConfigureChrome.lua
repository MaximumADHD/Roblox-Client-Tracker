local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")

local ChromeEnabled = require(CorePackages.Workspace.Packages.Chrome).Enabled
if not ChromeEnabled() then
	return nil
end

local ChromeService = require(Chrome.Service)
local PartyConstants = require(Chrome.Integrations.Party.Constants)
local isConnectUnibarEnabled = require(Chrome.Integrations.Connect.isConnectUnibarEnabled)
local isInExperienceUIVREnabled =
	require(CorePackages.Workspace.Packages.SharedExperimentDefinition).isInExperienceUIVREnabled
local ConfigureShortcuts = require(Chrome.ChromeShared.Shortcuts.ConfigureShortcuts)
local buildMenuOrder = require(Chrome.ChromeShared.Unibar.buildMenuOrder)

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local GetFFlagDebugEnableUnibarDummyIntegrations = SharedFlags.GetFFlagDebugEnableUnibarDummyIntegrations
local FFlagEnableConsoleExpControls = SharedFlags.FFlagEnableConsoleExpControls
local FFlagAppNavMyStatsTab = SharedFlags.FFlagAppNavMyStatsTab
local ArgoPartyExperimentation = require(CorePackages.Workspace.Packages.SocialExperiments).ArgoPartyExperimentation

local isSpatial = require(CorePackages.Workspace.Packages.AppCommonLib).isSpatial

local function initializeIntegrations()
	require(Chrome.Integrations)
end

local initializeShortcuts = function()
	ConfigureShortcuts()
end

local function configureUnibar()
	-- Configure the menu.  Top level ordering, integration availability.
	-- Integration availability signals will ultimately filter items out so no need for granular filtering here.
	-- ie. Voice Mute integration will only be shown is voice is enabled/active
	local nineDot = buildMenuOrder()

	local v4Ordering = { "nine_dot", "chat", "toggle_mic_mute" }
	table.insert(v4Ordering, 3, "join_voice")

	if GetFFlagDebugEnableUnibarDummyIntegrations() then
		table.insert(v4Ordering, "dummy_window")
		table.insert(v4Ordering, "dummy_window_2")
	end

	if isConnectUnibarEnabled() then
		table.insert(
			v4Ordering,
			if ArgoPartyExperimentation.getIsRenameEnabled() then "party_entrypoint" else "connect_unibar"
		)
	end

	local toggleMicIndex = table.find(v4Ordering, "toggle_mic_mute")
	if toggleMicIndex then
		table.insert(v4Ordering, toggleMicIndex, PartyConstants.TOGGLE_MIC_INTEGRATION_ID)
	end

	if FFlagAppNavMyStatsTab then
		table.insert(v4Ordering, "assistant_build")
	end

	if isInExperienceUIVREnabled and isSpatial() then
		local vrControls = { "vr_toggle_button", "vr_safety_bubble" }
		ChromeService:configureMenu({ vrControls, v4Ordering })
	else
		ChromeService:configureMenu({ v4Ordering })
	end

	ChromeService:configureSubMenu("nine_dot", nineDot)
end

initializeIntegrations()
if FFlagEnableConsoleExpControls then
	initializeShortcuts()
end
configureUnibar()

return nil
