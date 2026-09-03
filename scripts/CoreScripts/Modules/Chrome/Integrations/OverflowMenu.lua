local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)

local ChromeService = require(Chrome.Service)
local ChromeUtils = require(Chrome.ChromeShared.Service.ChromeUtils)
local ChromeIntegrationUtils = require(Chrome.Integrations.ChromeIntegrationUtils)
local RespawnUtils = require(Chrome.Integrations.RespawnUtils)
local MappedSignal = ChromeUtils.MappedSignal
local UnibarStyle = require(CorePackages.Workspace.Packages.Chrome).UnibarStyle

local ChromePackage = require(CorePackages.Workspace.Packages.Chrome)
local SideSheetPlacement = ChromePackage.Enums.SideSheetPlacement

local CommonIcon = require(Chrome.Integrations.CommonIcon)
local CommonFtuxTooltip = require(Chrome.Integrations.CommonFtuxTooltip)
local AvatarSwitcherFtuxTooltip = require(Chrome.Integrations.AvatarSwitcher.AvatarSwitcherFtuxTooltip)
local VRService = game:GetService("VRService")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local PlayerListMaster = require(RobloxGui.Modules.PlayerList.PlayerListManager)
local EmotesMenuMaster = require(RobloxGui.Modules.EmotesMenu.EmotesMenuMaster)
local FFlagEnableNewBackpack = require(CorePackages.Workspace.Packages.SharedFlags).FFlagEnableNewBackpack
local Signal = require(CorePackages.Workspace.Packages.AppCommonLib).Signal
local Features: any = if FFlagEnableNewBackpack then require(CorePackages.Workspace.Packages.System).Features else nil
local BackpackModule: any = if not FFlagEnableNewBackpack then require(RobloxGui.Modules.BackpackScript) else nil
local useMappedSignal = ChromePackage.Hooks.useMappedSignal
local GetFFlagIsSquadEnabled = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagIsSquadEnabled

local UniversalAppPolicy = require(CorePackages.Workspace.Packages.UniversalAppPolicy)
local useAppPolicy = UniversalAppPolicy.useAppPolicy

local MenuIcon = require(RobloxGui.Modules.TopBar.ComponentsV2.MenuIcon)

local UIBlox = require(CorePackages.Packages.UIBlox)
local Images = UIBlox.App.ImageSet.Images
local useStyle = UIBlox.Core.Style.useStyle
local ImageSetLabel = UIBlox.Core.ImageSet.ImageSetLabel
local SelectionCursorProvider = UIBlox.App.SelectionImage.SelectionCursorProvider

local Constants = require(Chrome.ChromeShared.Unibar.Constants)
local isSpatial = require(CorePackages.Workspace.Packages.AppCommonLib).isSpatial

local SelfieView = require(RobloxGui.Modules.SelfieView)

local GetFStringConnectTooltipLocalStorageKey = require(Chrome.Flags.GetFStringConnectTooltipLocalStorageKey)
local GetFIntRobloxConnectFtuxShowDelayMs = require(Chrome.Flags.GetFIntRobloxConnectFtuxShowDelayMs)
local GetFIntRobloxConnectFtuxDismissDelayMs = require(Chrome.Flags.GetFIntRobloxConnectFtuxDismissDelayMs)
local GetFFlagEnableAppChatInExperience =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableAppChatInExperience
local GetShouldShowPlatformChatBasedOnPolicy = require(Chrome.Flags.GetShouldShowPlatformChatBasedOnPolicy)
local FFlagFixInventoryFilledIcon = game:DefineFastFlag("FixInventoryFilledIcon", false)

local ChromeSharedFlags = require(Chrome.ChromeShared.Flags)
local FFlagTokenizeUnibarConstantsWithStyleProvider = ChromeSharedFlags.FFlagTokenizeUnibarConstantsWithStyleProvider

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagShowGameAgeRating = SharedFlags.FFlagShowGameAgeRating
local FFlagEnableSideSheet = SharedFlags.FFlagEnableSideSheet
local FFlagSideSheetFocusNav = SharedFlags.FFlagSideSheetFocusNav
local FFlagEnableConsoleExpControls = SharedFlags.FFlagEnableConsoleExpControls

local FFlagAppChatEnabledChromeDropdownFtuxTooltip =
	game:DefineFastFlag("AppChatEnabledChromeDropdownFtuxTooltip", false)
local FFlagAvatarSwitcherFtuxTooltip = game:DefineFastFlag("AvatarSwitcherFtuxTooltip", false)
local FFlagInExperienceShopFtuxTooltip = game:DefineFastFlag("InExperienceShopFtuxTooltip", false)
	and SharedFlags.FFlagEnableInExperienceShop
local FFlagMenuOfferTooltip = SharedFlags.FFlagMenuOfferTooltip
-- Composed with the Chrome flag that renders the dot at all, so this can't request a
-- pixel IconHost never draws.
local FFlagOfferNineDotActivityIndicator = SharedFlags.FFlagOfferNineDotActivityIndicator
	and ChromeSharedFlags.FFlagChromeNineDotActivityIndicator
local useInExperienceOfferExposure = require(Chrome.Integrations.InExperienceShop.useInExperienceOfferExposure)

local useOfferNineDotActivityIndicator: any = nil
if FFlagOfferNineDotActivityIndicator then
	useOfferNineDotActivityIndicator = require(Chrome.Integrations.InExperienceShop.useOfferNineDotActivityIndicator)
end

local InExperienceShopFtuxTooltip: any = nil
if FFlagInExperienceShopFtuxTooltip then
	InExperienceShopFtuxTooltip = require(Chrome.Integrations.InExperienceShop.InExperienceShopFtuxTooltip)
end

local MenuOfferTooltip: any = nil
if FFlagMenuOfferTooltip then
	MenuOfferTooltip = require(Chrome.Integrations.InExperienceShop.MenuOfferTooltip)
end

local usePublishShopAvailability: any = nil
if FFlagMenuOfferTooltip or FFlagOfferNineDotActivityIndicator then
	usePublishShopAvailability = require(Chrome.Integrations.InExperienceShop.usePublishShopAvailability)
end

local FIntUnibarConnectIconTooltipPriority = game:DefineFastInt("UnibarConnectTooltipPriority", 2000)
local shouldShowConnectTooltip = GetFFlagEnableAppChatInExperience()
	and FFlagAppChatEnabledChromeDropdownFtuxTooltip
	and GetShouldShowPlatformChatBasedOnPolicy()

local isInExperienceUIVREnabled =
	require(CorePackages.Workspace.Packages.SharedExperimentDefinition).isInExperienceUIVREnabled
local InExperienceUIVRIXP = require(CorePackages.Workspace.Packages.SharedExperimentDefinition).InExperienceUIVRIXP

local SELFIE_ID = Constants.SELFIE_VIEW_ID

local leaderboardVisibility = MappedSignal.new(PlayerListMaster:GetSetVisibleChangedEvent().Event, function()
	return PlayerListMaster:GetSetVisible()
end)

local leaderboard = ChromeService:register({
	id = "leaderboard",
	label = "CoreScripts.TopBar.Leaderboard",
	sideSheetPlacement = SideSheetPlacement.Vertical,
	activated = function(self)
		if not isInExperienceUIVREnabled and VRService.VREnabled then
			local InGameMenu = require(RobloxGui.Modules.InGameMenu)
			InGameMenu.openPlayersPage()
		else
			if PlayerListMaster:GetSetVisible() then
				PlayerListMaster:SetVisibility(not PlayerListMaster:GetSetVisible())
			else
				if (isInExperienceUIVREnabled and isSpatial()) and not InExperienceUIVRIXP:isMovePanelToCenter() then
					PlayerListMaster:SetVisibility(not PlayerListMaster:GetSetVisible())
				else
					ChromeIntegrationUtils.dismissRobloxMenuAndRun(function()
						PlayerListMaster:SetVisibility(not PlayerListMaster:GetSetVisible())
					end)
				end
			end
		end
	end,
	isActivated = leaderboardVisibility,
	components = {
		Icon = function(props)
			return CommonIcon("icons/controls/leaderboardOff", "icons/controls/leaderboardOn", leaderboardVisibility)
		end,
	},
})
ChromeUtils.setCoreGuiAvailability(leaderboard, Enum.CoreGuiType.PlayerList)

local emotesVisibility = MappedSignal.new(EmotesMenuMaster.EmotesMenuToggled.Event, function()
	return EmotesMenuMaster:isOpen()
end)
local emotes = ChromeService:register({
	id = "emotes",
	label = "CoreScripts.TopBar.Emotes",
	sideSheetPlacement = SideSheetPlacement.Vertical,
	activated = function(self)
		if EmotesMenuMaster:isOpen() then
			EmotesMenuMaster:close()
		else
			if (isInExperienceUIVREnabled and isSpatial()) and not InExperienceUIVRIXP:isMovePanelToCenter() then
				EmotesMenuMaster:open()
			else
				ChromeIntegrationUtils.dismissRobloxMenuAndRun(function()
					EmotesMenuMaster:open()
				end)
			end
		end
	end,
	isActivated = emotesVisibility,
	components = {
		Icon = function(props)
			return CommonIcon("icons/controls/emoteOff", "icons/controls/emoteOn", emotesVisibility)
		end,
	},
})

local coreGuiEmoteAvailable = false
local emoteMounted = EmotesMenuMaster.MenuIsVisible

function updateEmoteAvailability()
	if coreGuiEmoteAvailable and emoteMounted then
		emotes.availability:available()
	else
		emotes.availability:unavailable()
	end
end

ChromeUtils.setCoreGuiAvailability(emotes, Enum.CoreGuiType.EmotesMenu, function(available)
	coreGuiEmoteAvailable = available
	updateEmoteAvailability()
end)

EmotesMenuMaster.MenuVisibilityChanged.Event:Connect(function()
	emoteMounted = EmotesMenuMaster.MenuIsVisible
	updateEmoteAvailability()
end)

local backpackVisibility: any = if not FFlagEnableNewBackpack
	then MappedSignal.new(BackpackModule.StateChanged.Event, function()
		return BackpackModule.IsOpen
	end)
	else nil

local backpackActivatedSignal: any = nil
if FFlagEnableNewBackpack then
	local backpackVisibilityChanged = Signal.new()
	Features.onVisibilityChanged(Features.FeatureName.Backpack, function()
		backpackVisibilityChanged:fire()
		return nil
	end)
	backpackActivatedSignal = MappedSignal.new(backpackVisibilityChanged, function()
		return Features.getVisibility(Features.FeatureName.Backpack)
	end)
else
	backpackActivatedSignal = backpackVisibility
end

-- Hide shortcut bar if inventory was opened from side sheet
if FFlagEnableSideSheet and FFlagSideSheetFocusNav and FFlagEnableConsoleExpControls then
	backpackActivatedSignal:connect(function(isBackpackOpen)
		ChromeService:setHideShortcutBar("Backpack", isBackpackOpen)
	end)
end

local backpack = ChromeService:register({
	id = "backpack",
	label = "CoreScripts.TopBar.Inventory",
	sideSheetPlacement = SideSheetPlacement.Page,
	activated = function(self)
		if FFlagEnableNewBackpack then
			if Features.getVisibility(Features.FeatureName.Backpack) then
				Features.toggleVisibility(Features.FeatureName.Backpack)
			else
				if (isInExperienceUIVREnabled and isSpatial()) and not InExperienceUIVRIXP:isMovePanelToCenter() then
					Features.toggleVisibility(Features.FeatureName.Backpack)
				else
					ChromeIntegrationUtils.dismissRobloxMenuAndRun(function()
						Features.toggleVisibility(Features.FeatureName.Backpack)
					end)
				end
			end
		else
			if BackpackModule.IsOpen then
				BackpackModule:OpenClose()
			else
				if (isInExperienceUIVREnabled and isSpatial()) and not InExperienceUIVRIXP:isMovePanelToCenter() then
					BackpackModule:OpenClose()
				else
					ChromeIntegrationUtils.dismissRobloxMenuAndRun(function()
						BackpackModule:OpenClose()
					end)
				end
			end
		end
	end,
	isActivated = backpackActivatedSignal,
	components = {
		Icon = function(props)
			return CommonIcon(
				"icons/menu/inventoryOff",
				if FFlagFixInventoryFilledIcon then "icons/menu/inventoryOn" else "icons/menu/inventory",
				backpackVisibility
			)
		end,
	},
})
ChromeUtils.setCoreGuiAvailability(backpack, Enum.CoreGuiType.Backpack)

local respawn = ChromeService:register({
	id = "respawn",
	label = "CoreScripts.InGameMenu.QuickActions.Respawn",
	sideSheetPlacement = SideSheetPlacement.Vertical,
	activated = function(self)
		RespawnUtils.respawnPage()
	end,
	isActivated = RespawnUtils.respawnPageOpenSignal,
	components = {
		Icon = function(props)
			return CommonIcon("icons/actions/respawn")
		end,
	},
})

function updateRespawn(enabled)
	if enabled then
		respawn.availability:available()
	else
		respawn.availability:unavailable()
	end
end

task.defer(function()
	local SettingsHub = require(RobloxGui.Modules.Settings.SettingsHub)
	SettingsHub.RespawnBehaviourChangedEvent.Event:connect(updateRespawn)
	updateRespawn(SettingsHub:GetRespawnBehaviour())
end)

local currentSubMenu = ChromeService:currentSubMenu()
local submenuVisibility = MappedSignal.new(currentSubMenu:signal(), function()
	return currentSubMenu:get() == "nine_dot"
end)

if ChromeService:orderAlignment():get() == Enum.HorizontalAlignment.Right then
	submenuVisibility:connect(function(menuVisible)
		PlayerListMaster:SetMinimized(menuVisible)
	end)
end

function HamburgerButton(props)
	local toggleIconTransition = props.toggleTransition
	local style = useStyle()
	local hamburgerRef

	if FFlagMenuOfferTooltip then
		hamburgerRef = React.useRef(nil :: GuiObject?)
	end

	-- The tooltip and the nine-dot indicator are both judged against offer notifications,
	-- so either one alone needs these running.
	-- TODO it'd be preferable to have this logic live in the offers package, unfortunately useInExperienceOfferExposure
	-- depends on Chrome.ChromeShared.Service.LocalStore which is not avaible from a module. Consider moving this if
	-- LocalStore gets modularized.
	if FFlagMenuOfferTooltip or FFlagOfferNineDotActivityIndicator then
		-- Tells the offers store whether the shop can be opened, which offer notifications are
		-- gated on. Ordered ahead of the exposure hook so no exposure is recorded for an offer
		-- whose notification a closed shop is about to suppress.
		usePublishShopAvailability()
		-- Handles saving and loading in-experience offer exposure data, used to determine if an offer notification should be shown.
		useInExperienceOfferExposure()
	end

	if FFlagOfferNineDotActivityIndicator then
		useOfferNineDotActivityIndicator()
	end

	local unibarStyle
	local iconSize
	local mediumIconSize
	if FFlagTokenizeUnibarConstantsWithStyleProvider then
		unibarStyle = UnibarStyle.use()
		iconSize = unibarStyle.ICON_SIZE
		mediumIconSize = unibarStyle.MEDIUM_ICON_SIZE
	else
		iconSize = Constants.ICON_SIZE
		mediumIconSize = Constants.MEDIUM_ICON_SIZE
	end

	local submenuOpen = submenuVisibility and useMappedSignal(submenuVisibility) or false

	local connectTooltip = if shouldShowConnectTooltip
		then CommonFtuxTooltip({
			id = "CONNECT_TOOLTIP",
			priority = FIntUnibarConnectIconTooltipPriority,
			isIconVisible = props.visible,

			headerKey = if GetFFlagIsSquadEnabled()
				then "CoreScripts.FTUX.Heading.CheckOutRobloxParty"
				else "CoreScripts.FTUX.Heading.CheckOutRobloxConnect",
			bodyKey = if GetFFlagIsSquadEnabled()
				then "CoreScripts.FTUX.Label.PartyWithYourFriendsAnytime"
				else "CoreScripts.FTUX.Label.ChatWithYourFriendsAnytime",

			localStorageKey = GetFStringConnectTooltipLocalStorageKey(),

			showDelay = GetFIntRobloxConnectFtuxShowDelayMs(),
			dismissDelay = GetFIntRobloxConnectFtuxDismissDelayMs(),
		})
		else nil

	local showGameAgeRating = if FFlagShowGameAgeRating
		then useAppPolicy(function(appPolicy)
			return appPolicy.getShowGameAgeRating()
		end)
		else useAppPolicy(function(appPolicy)
			return appPolicy.getShowBadgeOver12()
		end)

	return React.createElement("Frame", {
		Size = UDim2.new(0, iconSize, 0, iconSize),
		BorderSizePixel = 0,
		ref = if FFlagMenuOfferTooltip then hamburgerRef else nil,
		BackgroundColor3 = style.Theme.BackgroundOnHover.Color,
		BackgroundTransparency = toggleIconTransition:map(function(value): any
			return 1 - ((1 - style.Theme.BackgroundOnHover.Transparency) * value)
		end),
	}, {
		React.createElement("UICorner", {
			Name = "Corner",
			CornerRadius = UDim.new(1, 0),
		}) :: any,
		if FFlagEnableSideSheet
			then React.createElement(SelectionCursorProvider, {}, {
				Icon = React.createElement(MenuIcon, {
					showBadgeOver12 = showGameAgeRating,
				}),
			})
			else nil,
		if not FFlagEnableSideSheet
			then React.createElement(ImageSetLabel, {
				Name = "Overflow",
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.new(0.5, 0, 0.5, 0),
				BackgroundTransparency = 1,
				Image = Images["icons/common/hamburgermenu"],
				Size = toggleIconTransition:map(function(value: any): any
					value = 1 - value
					return UDim2.new(0, iconSize * value, 0, iconSize * value)
				end),
				ImageColor3 = style.Theme.IconEmphasis.Color,

				ImageTransparency = toggleIconTransition:map(function(value: any): any
					return value * style.Theme.IconEmphasis.Transparency
				end),
			}) :: any
			else nil,
		if not FFlagEnableSideSheet
			then React.createElement(ImageSetLabel, {
				Name = "Close",
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.new(0.5, 0, 0.5, 0),
				BackgroundTransparency = 1,
				Image = Images["icons/navigation/close"],
				Size = toggleIconTransition:map(function(value: any): any
					return UDim2.new(0, mediumIconSize * value, 0, mediumIconSize * value)
				end),
				ImageColor3 = style.Theme.IconEmphasis.Color,

				ImageTransparency = toggleIconTransition:map(function(value: any): any
					return (1 - value) * style.Theme.IconEmphasis.Transparency
				end),
			}) :: any
			else nil,
		if SelfieView.useCameraOn()
				and not ChromeService:isWindowOpen(SELFIE_ID)
				and not submenuOpen
			then React.createElement(SelfieView.CameraStatusDot, {
				Name = "CameraStatusDot",
				Position = UDim2.new(1, -4, 1, -7),
				ZIndex = 2,
			})
			else nil,
		connectTooltip,
		if FFlagAvatarSwitcherFtuxTooltip
			then React.createElement(AvatarSwitcherFtuxTooltip, {
				visible = props.visible,
			})
			else nil,
		if FFlagInExperienceShopFtuxTooltip
			then React.createElement(InExperienceShopFtuxTooltip, {
				visible = props.visible,
			})
			else nil,
		if FFlagMenuOfferTooltip
			then React.createElement(MenuOfferTooltip, {
				anchorRef = hamburgerRef,
				visible = props.visible,
			})
			else nil,
	})
end

return ChromeService:register({
	initialAvailability = ChromeService.AvailabilitySignal.Pinned,
	id = "nine_dot",
	label = if FFlagEnableSideSheet then "CoreScripts.TopBar.RobloxMenu" else "CoreScripts.TopBar.MoreMenu",
	sideSheetPlacement = SideSheetPlacement.None,
	hotkeyCodes = if FFlagEnableSideSheet then { Enum.KeyCode.Escape } else nil,
	isActivated = submenuVisibility,
	components = {
		Icon = function(props)
			return React.createElement(HamburgerButton, props)
		end,
	},
})
