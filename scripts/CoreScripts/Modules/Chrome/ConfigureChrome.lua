local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")

local ChromeEnabled = require(Chrome.Enabled)
if not ChromeEnabled() then
	return nil
end

local ChromeAnalytics = require(Chrome.ChromeShared.Analytics.ChromeAnalytics)
local ChromeService = require(Chrome.Service)
local PartyConstants = require(Chrome.Integrations.Party.Constants)
local isConnectUnibarEnabled = require(Chrome.Integrations.Connect.isConnectUnibarEnabled)
local isConnectDropdownEnabled = require(Chrome.Integrations.Connect.isConnectDropdownEnabled)
local isInExperienceUIVREnabled =
	require(CorePackages.Workspace.Packages.SharedExperimentDefinition).isInExperienceUIVREnabled
local ConfigureShortcuts = require(Chrome.ChromeShared.Shortcuts.ConfigureShortcuts)
local Constants = require(Chrome.ChromeShared.Unibar.Constants)

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local GetFFlagDebugEnableUnibarDummyIntegrations = SharedFlags.GetFFlagDebugEnableUnibarDummyIntegrations
local GetFFlagEnableChromePinIntegrations = SharedFlags.GetFFlagEnableChromePinIntegrations
local FFlagEnableChromeShortcutBar = SharedFlags.FFlagEnableChromeShortcutBar
local FFlagEnableInExperienceAvatarSwitcher = SharedFlags.FFlagEnableInExperienceAvatarSwitcher

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
	local nineDot = { "leaderboard", "emotes", "backpack" }

	-- append to end of nine-dot
	table.insert(nineDot, "respawn")
	-- prepend trust_and_safety to nine-dot menu
	table.insert(nineDot, 1, "trust_and_safety")

	if isConnectDropdownEnabled() then
		table.insert(nineDot, 1, "connect_dropdown")
	end

	-- insert trust and safety into pin, prioritize over leaderboard
	if GetFFlagEnableChromePinIntegrations() and not ChromeService:isUserPinned("trust_and_safety") then
		ChromeService:setUserPin("trust_and_safety", true)
		ChromeAnalytics.default:setPin("trust_and_safety", true, ChromeService:userPins())
	end

	local v4Ordering = { "toggle_mic_mute", "chat", "nine_dot" }
	table.insert(v4Ordering, 2, "join_voice")

	if GetFFlagDebugEnableUnibarDummyIntegrations() then
		table.insert(v4Ordering, 1, "dummy_window")
		table.insert(v4Ordering, 1, "dummy_window_2")
		table.insert(v4Ordering, 1, "dummy_container")
	end

	if isConnectUnibarEnabled() then
		table.insert(v4Ordering, 1, "connect_unibar")
	end

	local toggleMicIndex = table.find(v4Ordering, "toggle_mic_mute")
	if toggleMicIndex then
		table.insert(v4Ordering, toggleMicIndex + 1, PartyConstants.TOGGLE_MIC_INTEGRATION_ID)
	end

	if isInExperienceUIVREnabled and isSpatial() then
		local vrControls = { "vr_toggle_button", "vr_safety_bubble" }
		ChromeService:configureMenu({ vrControls, v4Ordering })
	else
		ChromeService:configureMenu({ v4Ordering })
	end

	if isInExperienceUIVREnabled then
		if not isSpatial() then
			table.insert(nineDot, 2, "camera_entrypoint")
			table.insert(nineDot, 2, "selfie_view")
		end
	else
		table.insert(nineDot, 2, "camera_entrypoint")
		table.insert(nineDot, 2, "selfie_view")
	end

	if FFlagEnableInExperienceAvatarSwitcher then
		table.insert(nineDot, 3, Constants.AVATAR_SWITCHER_ID)
	end

	-- TO-DO: Replace GuiService:IsTenFootInterface() once APPEXP-2014 has been merged
	-- selene: allow(denylist_filter)
	local isNotVROrConsole = not isSpatial() and not GuiService:IsTenFootInterface()
	if isNotVROrConsole then
		table.insert(nineDot, 4, "music_entrypoint")
	end

	ChromeService:configureSubMenu("nine_dot", nineDot)
end

initializeIntegrations()
if FFlagEnableChromeShortcutBar then
	initializeShortcuts()
end
configureUnibar()

return nil
