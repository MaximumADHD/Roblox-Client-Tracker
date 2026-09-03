local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")

local Constants = require(script.Parent.Constants)
local SideSheet = require(CorePackages.Workspace.Packages.InExperienceSideSheet)

local isConnectDropdownEnabled = require(Chrome.Integrations.Connect.isConnectDropdownEnabled)
local isSpatial = require(CorePackages.Workspace.Packages.AppCommonLib).isSpatial
local isInExperienceUIVREnabled =
	require(CorePackages.Workspace.Packages.SharedExperimentDefinition).isInExperienceUIVREnabled
local ArgoPartyExperimentation = require(CorePackages.Workspace.Packages.SocialExperiments).ArgoPartyExperimentation

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagEnableInExperienceAvatarSwitcher = SharedFlags.FFlagEnableInExperienceAvatarSwitcher
local FFlagEnableSideSheet = SharedFlags.FFlagEnableSideSheet
local FFlagAddInviteFriendsIntegration = SharedFlags.FFlagAddInviteFriendsIntegration
local FFlagIntegrateTraversalHistoryInSideSheet = SharedFlags.FFlagIntegrateTraversalHistoryInSideSheet
local FFlagEnableInExperienceShop = SharedFlags.FFlagEnableInExperienceShop
local FFlagRemoveFriendsChatUnibarEntrypoints = SharedFlags.FFlagRemoveFriendsChatUnibarEntrypoints
local FFlagExpChatCanShowFriendsTab = SharedFlags.FFlagExpChatCanShowFriendsTab
local FIntSideSheetVariant = SharedFlags.FIntSideSheetVariant
local isPioneerLaunch = require(CorePackages.Workspace.Packages.PioneerUtils).isPioneerLaunch

local Traversal = if FFlagIntegrateTraversalHistoryInSideSheet
	then require(CorePackages.Workspace.Packages.CoreScriptsRoactCommon).Traversal
	else nil
local FFlagAddTraversalHistory = if Traversal then Traversal.Flags.FFlagAddTraversalHistory else false

type Array<T> = { [number]: T }

-- reorder menu item to new placement only if it is available in map
local function reorder(menuMap: { [string]: number? }, id: string, placement: number)
	if menuMap[id] ~= nil then
		menuMap[id] = placement
	end
end

-- Build a map of menu items to their placement in the side sheet or nine-dot menu.
local function buildMenuOrder(): Array<string>
	local connectDropdownVisible = isConnectDropdownEnabled()
		and not (
			FFlagRemoveFriendsChatUnibarEntrypoints
			and ArgoPartyExperimentation.getIsRenameEnabled()
			and FFlagExpChatCanShowFriendsTab
		)

	-- TO-DO: Replace GuiService:IsTenFootInterface() once APPEXP-2014 has been merged
	-- selene: allow(denylist_filter)
	local isNotVROrConsole = not isSpatial() and not GuiService:IsTenFootInterface()
	local notVRControlsOrNotSpatial = not isInExperienceUIVREnabled or not isSpatial()
	local traversalEnabled = FFlagAddTraversalHistory and FFlagIntegrateTraversalHistoryInSideSheet

	local menuMap: { [string]: number? } = {
		invite_friends = if FFlagAddInviteFriendsIntegration then 10 else nil,
		people = 20,
		settings = 30,
		trust_and_safety = 40,
		connect_dropdown = if connectDropdownVisible then 50 else nil,
		[Constants.AVATAR_SWITCHER_ID] = if FFlagEnableInExperienceAvatarSwitcher then 60 else nil,
		[Constants.IN_EXPERIENCE_SHOP_ID] = if FFlagEnableInExperienceShop then 70 else nil,
		leaderboard = 80,
		emotes = 90,
		backpack = 100,
		traversal_history = if traversalEnabled then 110 else nil,
		help = 120,
		camera_entrypoint = if notVRControlsOrNotSpatial then 130 else nil,
		gallery = 140,
		selfie_view = if notVRControlsOrNotSpatial then 150 else nil,
		music_entrypoint = if isNotVROrConsole then 160 else nil,
		[SideSheet.Enums.ActionBinding.Leave] = 180,
		[SideSheet.Enums.ActionBinding.Respawn] = 190,
	}

	if FFlagEnableSideSheet then
		if FIntSideSheetVariant == 0 then
			reorder(menuMap, "settings", 103)
			reorder(menuMap, "trust_and_safety", 106)
			reorder(menuMap, Constants.IN_EXPERIENCE_SHOP_ID, 143)
			reorder(menuMap, "backpack", 146)
		end

		if isPioneerLaunch() then
			menuMap.connect_dropdown = nil
			menuMap.invite_friends = nil
			menuMap[Constants.AVATAR_SWITCHER_ID] = nil
			menuMap.emotes = nil
			menuMap.traversal_history = nil
			menuMap.camera_entrypoint = nil
			menuMap.gallery = nil
		end
	else
		reorder(menuMap, "connect_dropdown", 10)
		reorder(menuMap, Constants.IN_EXPERIENCE_SHOP_ID, 20)
		reorder(menuMap, "selfie_view", 30)
		reorder(menuMap, Constants.AVATAR_SWITCHER_ID, 40)
		reorder(menuMap, "music_entrypoint", 50)
		reorder(menuMap, "camera_entrypoint", 60)
		reorder(menuMap, "trust_and_safety", 70)

		-- respawn is not in the base map; it only exists in the legacy layout.
		menuMap.respawn = 110

		-- Side-sheet-only items are hidden in the legacy nine-dot layout.
		menuMap.invite_friends = nil
		menuMap.people = nil
		menuMap.settings = nil
		menuMap.traversal_history = nil
		menuMap.help = nil
		menuMap.gallery = nil
		menuMap[SideSheet.Enums.ActionBinding.Leave] = nil
		menuMap[SideSheet.Enums.ActionBinding.Respawn] = nil
	end

	local ordered: Array<string> = {}
	for id in menuMap do
		table.insert(ordered, id)
	end
	table.sort(ordered, function(a, b)
		return (menuMap[a] :: number) < (menuMap[b] :: number)
	end)

	return ordered
end

return buildMenuOrder
