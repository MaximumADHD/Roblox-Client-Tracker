--!nonstrict
-- APPEXP-2274: Remove with FFlagConnectGamepadChrome
local CorePackages = game:GetService("CorePackages")
local ContextActionService = game:GetService("ContextActionService")
local CoreGui = game:GetService("CoreGui")
local GuiService = game:GetService("GuiService")
local VRService = game:GetService("VRService")
local TextChatService = game:GetService("TextChatService")
local StarterGui = game:GetService("StarterGui")

local Roact = require(CorePackages.Packages.Roact)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local Cryo = require(CorePackages.Packages.Cryo)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.Packages.UIBlox)
local IXPServiceWrapper = require(CorePackages.Workspace.Packages.IxpServiceWrapper).IXPServiceWrapper
local ExperimentLayers = require(CorePackages.Workspace.Packages.ExperimentLayers).AppUserLayers
local Signals = require(CorePackages.Packages.Signals)
local Display = require(CorePackages.Workspace.Packages.Display)

local withStyle = UIBlox.Core.Style.withStyle
local Images = UIBlox.App.ImageSet.Images
local ImageSetLabel = UIBlox.Core.ImageSet.ImageSetLabel

local MenuHeader = require(script.MenuHeader)
local ChatIcon = require(script.ChatIcon)
local MenuCell = require(script.MenuCell)
local ControllerBar = require(script.QuickMenuControllerBar)
local MenuNavigationToggleDialog = require(script.MenuNavigationToggleDialog)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local Modules = RobloxGui.Modules
local TopBar = Modules.TopBar
local TenFootInterface = require(Modules.TenFootInterface)
local BackpackModule = require(Modules.BackpackScript)
local EmotesModule = require(Modules.EmotesMenu.EmotesMenuMaster)
local ChatModule = require(Modules.ChatSelector)
local PlayerListMaster = require(Modules.PlayerList.PlayerListManager)

local isNewInGameMenuEnabled = require(Modules.isNewInGameMenuEnabled)
local InGameMenuConstants = require(Modules.InGameMenuConstants)
local ChromeEnabled = require(Modules.Chrome.Enabled)

local CoreGuiCommon = require(CorePackages.Workspace.Packages.CoreGuiCommon)
local FFlagTopBarSignalizeScreenSize = CoreGuiCommon.Flags.FFlagTopBarSignalizeScreenSize

local TopBarTelemetry = require(TopBar:WaitForChild("Telemetry"))
local LogGamepadOpenExperienceControlsMenu = TopBarTelemetry.LogGamepadOpenExperienceControlsMenu
local GamepadMenuTelemetry = TopBarTelemetry.GamepadMenuTelemetry.default
local GameSettings = UserSettings().GameSettings
local Components = script.Parent.Parent
local Actions = Components.Parent.Actions
local SetGamepadMenuOpen = require(Actions.SetGamepadMenuOpen)
local EnumGamepadMenuOptions = require(script.EnumGamepadMenuOptions)

local TOGGLE_GAMEPAD_MENU_ACTION = "TopBarGamepadToggleGamepadMenu"
local FREEZE_CONTROLLER_ACTION_NAME = "TopBarGamepadFreezeController"
local CLOSEMENU_ACTION_NAME = "TopBarGamepadCloseMenu"
local LEAVE_GAME_ACTION_NAME = "TopBarGamepadLeaveGame"
local RESPAWN_ACTION_NAME = "TopBarGamepadRespawnAction"
local MOVE_SLECTION_ACTION_NAME = "TopBarGamepadMoveSelection"
local ACTIVATE_SELECTION_ACTION_NAME = "TopBarGamepadActivateSelection"
local GO_TO_TOP_ACTION_NAME = "TopBarGamepadMoveSelectionTop"
local GO_TO_BOTTOM_ACTION_NAME = "TopBarGamepadMoveSelectionBottom"
local TOGGLE_CHAT_VISIBILITY = "TopBarGamepadToggleChatVisibility"

local THUMBSTICK_MOVE_COOLDOWN = 0.15

-- Should be than MenuButtonPressHoldTime defined in
-- modules/notifications/toast-notification/src/constants.lua
local MENU_BUTTON_PRESS_MAX_HOLD_TIME = 1

local MENU_ICON = Images["icons/logo/block"]
local UNIBAR_ICON = Images["icons/menu/AR"]
local LEADERBOARD_ICON_ON = "rbxasset://textures/ui/TopBar/leaderboardOn.png"
local LEADERBOARD_ICON_OFF = "rbxasset://textures/ui/TopBar/leaderboardOff.png"
local EMOTES_ICON_ON = "rbxasset://textures/ui/TopBar/emotesOn.png"
local EMOTES_ICON_OFF = "rbxasset://textures/ui/TopBar/emotesOff.png"
local INVENTORY_ICON_ON = "rbxasset://textures/ui/TopBar/inventoryOn.png"
local INVENTORY_ICON_OFF = "rbxasset://textures/ui/TopBar/inventoryOff.png"
local RESPAWN_ICON = Images["icons/actions/respawn"]
local LEAVE_ICON = Images["icons/navigation/close"]

local MENU_BACKGROUND_ASSET = Images["component_assets/circle_17"]
local MENU_SLICE_CENTER = Rect.new(8, 8, 9, 9)

local MENU_SIZE_X = 336
local HEADER_HEIGHT = 120
local CELL_HEIGHT = 56

local MAX_SCREEN_PERCENTAGE = 0.75

local GAMEPAD_MENU_KEY = "GamepadMenu"

local GamepadMenu = Roact.PureComponent:extend("GamepadMenu")
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagAddMenuNavigationToggleDialog = SharedFlags.FFlagAddMenuNavigationToggleDialog
local FFlagTiltIconUnibarFocusNav = SharedFlags.FFlagTiltIconUnibarFocusNav
local FFlagGamepadMenuActionTelemetry = require(TopBar.Flags.FFlagGamepadMenuActionTelemetry)
local FFlagExperienceMenuGamepadExposureEnabled = SharedFlags.FFlagExperienceMenuGamepadExposureEnabled

local FFlagSaveChatVisibilityUserSettings = game:DefineFastFlag("SaveChatVisibilityUserSettings", false)
local FFlagMountCoreGuiBackpack = require(Modules.Flags.FFlagMountCoreGuiBackpack)

local getFFlagCheckForTCSMigration = SharedFlags.getFFlagCheckForTCSMigration
local getFFlagExpChatAlwaysRunTCS = SharedFlags.getFFlagExpChatAlwaysRunTCS

local ToastRoot
local ToastGui
local Toast
	task.spawn(function()
			ToastRoot = CoreGui:WaitForChild("ToastNotification", 3)
			ToastGui = if ToastRoot ~= nil then ToastRoot:WaitForChild("ToastNotificationWrapper", 3) else nil
			Toast = if ToastGui ~= nil then ToastGui:FindFirstChild("Toast", true) else nil
	end)

GamepadMenu.validateProps = t.strictInterface({
	screenSize = if FFlagTopBarSignalizeScreenSize then nil else t.Vector2,

	chatVersion = t.optional(t.EnumItem),
	chatEnabled = t.boolean,
	leaderboardEnabled = t.boolean,
	emotesEnabled = t.boolean,
	backpackEnabled = if FFlagMountCoreGuiBackpack then nil else t.boolean,

	respawnEnabled = t.boolean,

	leaderboardOpen = t.boolean,
	backpackOpen = t.boolean,
	emotesOpen = t.boolean,

	menuOpen = t.boolean,
	topBarEnabled = if FFlagMountCoreGuiBackpack then t.boolean else nil,

	setGamepadMenuOpen = t.callback,
	isGamepadMenuOpen = t.boolean,
})

function GamepadMenu:init()
	if FFlagMountCoreGuiBackpack then
		self:setState({
			selectedIndex = 1,
			menuActions = {},
			mountBackpack = StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.Backpack),
		})

		StarterGui.CoreGuiChangedSignal:Connect(function(coreGuiType: Enum.CoreGuiType, enabled: boolean)
			if coreGuiType == Enum.CoreGuiType.Backpack or coreGuiType == Enum.CoreGuiType.All then
				self:setState({
					mountBackpack = enabled,
				})
			end
		end)
	else
		self:setState({
			selectedIndex = 1,
			menuActions = {},
		})
	end

	if FFlagExperienceMenuGamepadExposureEnabled then
		self.loggedExperienceMenuGamepadExposure = false
	end

	self.boundMenuOpenActions = false

	self.lastMenuButtonPress = 0

	self.toggleChatVisibilityAction = function(actionName, userInputState, input)
		if userInputState == Enum.UserInputState.Begin then
			self.toggleChatVisible()
			if FFlagGamepadMenuActionTelemetry then
				GamepadMenuTelemetry.onOptionSelected({
					menuOptionName = EnumGamepadMenuOptions.Chat,
					usedShortcut = true,
					isToggleOpen = ChatModule:GetVisibility(),
				})
			end
		end
	end

	self.toggleMenuVisibleAction = function(actionName, userInputState, input)
			if self.props.menuOpen then
				return Enum.ContextActionResult.Pass
			end

			local isToastVisible = Toast ~= nil and Toast.Visible
			if userInputState == Enum.UserInputState.Begin then
				self.lastMenuButtonPress = tick()
				return Enum.ContextActionResult.Pass
			elseif userInputState == Enum.UserInputState.End then
				if not isToastVisible or tick() - self.lastMenuButtonPress < MENU_BUTTON_PRESS_MAX_HOLD_TIME then
					self.props.setGamepadMenuOpen(not self.props.isGamepadMenuOpen)
					LogGamepadOpenExperienceControlsMenu(not self.props.isGamepadMenuOpen)
					self:logExperienceMenuGamepadExposure()

					return Enum.ContextActionResult.Sink
				end
			end

			return Enum.ContextActionResult.Pass
	end

	self.closeMenuAction = function(actionName, userInputState, input)
		if userInputState ~= Enum.UserInputState.Begin then
			return Enum.ContextActionResult.Pass
		end

		self.props.setGamepadMenuOpen(false)

		return Enum.ContextActionResult.Sink
	end

	self.leaveGameMenuAction = function(actionName, userInputState, input)
		if userInputState ~= Enum.UserInputState.Begin then
			return Enum.ContextActionResult.Pass
		end

		GamepadMenu.leaveGame()

		self.props.setGamepadMenuOpen(false)

		if FFlagGamepadMenuActionTelemetry then
			GamepadMenuTelemetry.onOptionSelected({
				menuOptionName = EnumGamepadMenuOptions.Leave,
				usedShortcut = true,
				isToggleOpen = true,
			})
		end

		return Enum.ContextActionResult.Sink
	end

	self.respawnMenuAction = function(actionName, userInputState, input)
		if userInputState ~= Enum.UserInputState.Begin then
			return Enum.ContextActionResult.Pass
		end

		GamepadMenu.respawnCharacter()

		self.props.setGamepadMenuOpen(false)

		if FFlagGamepadMenuActionTelemetry then
			GamepadMenuTelemetry.onOptionSelected({
				menuOptionName = EnumGamepadMenuOptions.Respawn,
				usedShortcut = true,
				isToggleOpen = true,
			})
		end

		return Enum.ContextActionResult.Sink
	end

	self.lastThumbStickMove = 0

	self.moveSelectionAction = function(actionName, userInputState, input)
		if userInputState == Enum.UserInputState.Begin then
			if input.KeyCode == Enum.KeyCode.DPadUp then
				if self.state.selectedIndex > 1 then
					self:setState({
						selectedIndex = self.state.selectedIndex - 1,
					})
				end
				return Enum.ContextActionResult.Sink
			elseif input.KeyCode == Enum.KeyCode.DPadDown then
				if self.state.selectedIndex < #self.state.menuActions then
					self:setState({
						selectedIndex = self.state.selectedIndex + 1,
					})
				end
				return Enum.ContextActionResult.Sink
			end
		elseif input.KeyCode == Enum.KeyCode.Thumbstick1 then
			if tick() - self.lastThumbStickMove < THUMBSTICK_MOVE_COOLDOWN then
				return Enum.ContextActionResult.Pass
			end
			if input.Position.Y > 0.8 then
				if self.state.selectedIndex > 1 then
					self:setState({
						selectedIndex = self.state.selectedIndex - 1,
					})
					self.lastThumbStickMove = tick()
				end
				return Enum.ContextActionResult.Pass
			elseif input.Position.Y < -0.8 then
				if self.state.selectedIndex < #self.state.menuActions then
					self:setState({
						selectedIndex = self.state.selectedIndex + 1,
					})
					self.lastThumbStickMove = tick()
				end
				return Enum.ContextActionResult.Sink
			end
		end
		return Enum.ContextActionResult.Pass
	end

	self.goToTopAction = function(actionName, userInputState, input)
		if userInputState ~= Enum.UserInputState.Begin then
			return Enum.ContextActionResult.Pass
		end

		self:setState({
			selectedIndex = 1,
		})
	end

	self.goToBottomAction = function(actionName, userInputState, input)
		if userInputState ~= Enum.UserInputState.Begin then
			return Enum.ContextActionResult.Pass
		end

		self:setState({
			selectedIndex = #self.state.menuActions,
		})
	end

	self.activateSelectionAction = function(actionName, userInputState, input)
		if userInputState ~= Enum.UserInputState.Begin then
			return Enum.ContextActionResult.Pass
		end

		local action = self.state.menuActions[self.state.selectedIndex]
		self.props.setGamepadMenuOpen(false)

		-- Since the above call closing the gamepad menu is not instant we can't rely on
		-- this being called in didUpdate. We need to call it manually here.
		-- Otherwise the EmotesMenu will not open because it thinks the GamepadMenu is already open
		GuiService:SetMenuIsOpen(false, GAMEPAD_MENU_KEY)

		action.onActivated()

		if FFlagGamepadMenuActionTelemetry then
			local function isMenuOptionToggleOpenOnSelect(menuOptionName: EnumGamepadMenuOptions.GamepadMenuOptions)
				if menuOptionName == EnumGamepadMenuOptions.Leaderboard then
					return PlayerListMaster:GetSetVisible()
				end

				return true
			end

			GamepadMenuTelemetry.onOptionSelected({
				menuOptionName = action.name,
				usedShortcut = false,
				isToggleOpen = isMenuOptionToggleOpenOnSelect(action.name),
			})
		end

		return Enum.ContextActionResult.Sink
	end

	self.overlayDismiss = function()
		self.props.setGamepadMenuOpen(false)
	end

	if FFlagTopBarSignalizeScreenSize then 
		local getViewportSize = Display.GetDisplayStore(false).getViewportSize

		self.disposeScreenSize = Signals.createEffect(function(scope) 
			self:setState({
				screenSize = getViewportSize(scope)
			})
		end)
	end
end

function GamepadMenu.openRootMenu()
	-- todo: move InGameMenu to a script global when removing isNewInGameMenuEnabled
	if isNewInGameMenuEnabled() then
		local InGameMenu = require(Modules.InGameMenuInit)
		InGameMenu.openInGameMenu(InGameMenuConstants.MainPagePageKey)
	else
		local MenuModule = require(Modules.Settings.SettingsHub)
		MenuModule:SetVisibility(true, nil, nil, true, InGameMenuConstants.AnalyticsMenuOpenTypes.PlayersTriggered)
	end
end

function GamepadMenu.openUnibarMenu()
	local ChromeService = require(Modules.Chrome.Service)
	ChromeService:enableFocusNav()
end

function GamepadMenu.closeUnibarMenu()
	local ChromeService = require(Modules.Chrome.Service)
	ChromeService:disableFocusNav()
end

function GamepadMenu.toggleChatVisible()
	ChatModule:ToggleVisibility()
	if FFlagSaveChatVisibilityUserSettings then
		GameSettings.ChatVisible = ChatModule:GetVisibility()
	end
end

function GamepadMenu.focusChatBar()
	ChatModule:SetVisible(true)
	if FFlagSaveChatVisibilityUserSettings then
		GameSettings.ChatVisible = true
	end
	ChatModule:FocusChatBar()
end

function GamepadMenu.toggleLeaderboard()
	-- todo: move InGameMenu to a script global when removing isNewInGameMenuEnabled
	if isNewInGameMenuEnabled() then
		local InGameMenu = require(Modules.InGameMenuInit)
		InGameMenu.openPlayersPage()
	else
		PlayerListMaster:SetVisibility(not PlayerListMaster:GetSetVisible())
	end
end

function GamepadMenu.toggleEmotesMenu()
	if EmotesModule:isOpen() then
		EmotesModule:close()
	else
		EmotesModule:open()
	end
end

function GamepadMenu.toggleBackpack()
	BackpackModule:OpenClose()
end

function GamepadMenu.leaveGame()
	-- todo: move InGameMenu to a script global when removing isNewInGameMenuEnabled
	if isNewInGameMenuEnabled() then
		local InGameMenu = require(Modules.InGameMenuInit)
		InGameMenu.openGameLeavePage()
	else
		local MenuModule = require(Modules.Settings.SettingsHub)
		MenuModule:SetVisibility(
			true,
			false,
			MenuModule.Instance.LeaveGamePage,
			true,
			InGameMenuConstants.AnalyticsMenuOpenTypes.GamepadLeaveGame
		)
	end
end

function GamepadMenu.respawnCharacter()
	if isNewInGameMenuEnabled() then
		local InGameMenu = require(Modules.InGameMenuInit)
		InGameMenu.openCharacterResetPage()
	else
		local MenuModule = require(Modules.Settings.SettingsHub)
		MenuModule:SetVisibility(
			true,
			false,
			MenuModule.Instance.ResetCharacterPage,
			true,
			InGameMenuConstants.AnalyticsMenuOpenTypes.GamepadResetCharacter
		)
	end
end

function GamepadMenu.shouldShowChatMenuOption(chatVersion, chatEnabled)
	-- Not a fan of this, but because this check was used to disable chat, to preserve backwards compatibility we need to add it
	if not TenFootInterface:IsEnabled() then
		return chatEnabled
	end

	-- Passing in chat version through props was primarily added for unit tests, if it's nil grab the right version
	chatVersion = chatVersion or TextChatService.ChatVersion

	--Check to see if the place is automigrated to TCS (initial chatVersion may still be showing LegacyChat and won't be reliable)
	if getFFlagCheckForTCSMigration() and getFFlagExpChatAlwaysRunTCS() then
		return chatEnabled
	end

	-- We will currently only show the chat option for TCS, don't show it for legacy chat until other checks are added
	return chatEnabled and chatVersion == Enum.ChatVersion.TextChatService
end

function GamepadMenu.getMenuActionsFromProps(props, prevProps)
	local menuActions = {}

	table.insert(menuActions, {
		name = if FFlagGamepadMenuActionTelemetry then EnumGamepadMenuOptions.Menu else "Menu",
		icon = MENU_ICON,
		iconComponent = nil,
		localizationKey = "CoreScripts.TopBar.Menu",
		onActivated = GamepadMenu.openRootMenu,
	})

	if GamepadMenu.shouldShowChatMenuOption(props.chatVersion, props.chatEnabled) then
		table.insert(menuActions, {
			name = if FFlagGamepadMenuActionTelemetry then EnumGamepadMenuOptions.Chat else "Chat",
			icon = nil,
			iconComponent = ChatIcon,
			localizationKey = "CoreScripts.TopBar.Chat",
			onActivated = GamepadMenu.focusChatBar,
		})
	end

	if ChromeEnabled() then
		table.insert(menuActions, {
			name = if FFlagGamepadMenuActionTelemetry then EnumGamepadMenuOptions.Unibar else "Unibar",
			icon = UNIBAR_ICON,
			iconComponent = nil,
			localizationKey = "CoreScripts.TopBar.Title.ExperienceControls",
			onActivated = GamepadMenu.openUnibarMenu,
		})
	end

	if props.leaderboardEnabled or TenFootInterface:IsEnabled() then
		local icon
		if props.leaderboardOpen then
			icon = LEADERBOARD_ICON_ON
		else
			icon = LEADERBOARD_ICON_OFF
		end

		table.insert(menuActions, {
			name = if FFlagGamepadMenuActionTelemetry then EnumGamepadMenuOptions.Leaderboard else "Leaderboard",
			icon = icon,
			iconComponent = nil,
			localizationKey = "CoreScripts.TopBar.Leaderboard",
			onActivated = GamepadMenu.toggleLeaderboard,
		})
	end

	if props.emotesEnabled then
		local icon
		if props.emotesOpen then
			icon = EMOTES_ICON_ON
		else
			icon = EMOTES_ICON_OFF
		end

		-- If changing the order in which the emotes menu is added,
		-- you will need to update the unit test that tries to open the emotes menu in GamepadMenu.spec.lua
		table.insert(menuActions, {
			name = if FFlagGamepadMenuActionTelemetry then EnumGamepadMenuOptions.Emotes else "Emotes",
			icon = icon,
			iconComponent = nil,
			localizationKey = "CoreScripts.TopBar.Emotes",
			onActivated = GamepadMenu.toggleEmotesMenu,
		})
	end

	local backpackEnabled = nil
	if FFlagMountCoreGuiBackpack then
		backpackEnabled = props.topBarEnabled and prevProps.mountBackpack
	else
		backpackEnabled = props.backpackEnabled
	end

	if backpackEnabled then
		local icon
		if props.backpackOpen then
			icon = INVENTORY_ICON_ON
		else
			icon = INVENTORY_ICON_OFF
		end

		table.insert(menuActions, {
			name = if FFlagGamepadMenuActionTelemetry then EnumGamepadMenuOptions.Inventory else "Inventory",
			icon = icon,
			iconComponent = nil,
			localizationKey = "CoreScripts.TopBar.Inventory",
			onActivated = GamepadMenu.toggleBackpack,
		})
	end

	if props.respawnEnabled then
		table.insert(menuActions, {
			name = if FFlagGamepadMenuActionTelemetry then EnumGamepadMenuOptions.Respawn else "Respawn",
			icon = RESPAWN_ICON,
			iconComponent = nil,
			localizationKey = "CoreScripts.TopBar.Respawn",
			onActivated = GamepadMenu.respawnCharacter,
		})
	end

	table.insert(menuActions, {
		name = if FFlagGamepadMenuActionTelemetry then EnumGamepadMenuOptions.Leave else "Leave",
		icon = LEAVE_ICON,
		iconComponent = nil,
		localizationKey = "CoreScripts.TopBar.Leave",
		onActivated = GamepadMenu.leaveGame,
	})

	return menuActions
end

function GamepadMenu.getDerivedStateFromProps(nextProps, prevState)
	local menuActions = nil
	if FFlagMountCoreGuiBackpack then
		menuActions = GamepadMenu.getMenuActionsFromProps(nextProps, prevState)
	else
		menuActions = GamepadMenu.getMenuActionsFromProps(nextProps)
	end

	local selectedIndex = prevState.selectedIndex or 1
	if selectedIndex > #menuActions then
		selectedIndex = #menuActions
	end

	return Cryo.Dictionary.join(prevState, {
		selectedIndex = selectedIndex,
		menuActions = menuActions,
	})
end

function GamepadMenu:render()
	return withStyle(function(style)
		local theme = style.Theme

		local menuChildren = {}

		menuChildren.Layout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			VerticalAlignment = Enum.VerticalAlignment.Top,
			SortOrder = Enum.SortOrder.LayoutOrder,
		})

		menuChildren.MenuHeader = Roact.createElement(MenuHeader, {
			layoutOrder = 1,
			height = HEADER_HEIGHT,
		})

		for index, action in ipairs(self.state.menuActions) do
			menuChildren[action.name] = Roact.createElement(MenuCell, {
				layoutOrder = index + 1,

				icon = action.icon,
				iconComponent = action.iconComponent,
				localizationKey = action.localizationKey,

				height = CELL_HEIGHT,

				hasDivider = index ~= #self.state.menuActions,
				isSelected = index == self.state.selectedIndex,
			})
		end

		local menuHeight = HEADER_HEIGHT + (#self.state.menuActions * CELL_HEIGHT)

		local maxScale = 1
		local screenSize = if FFlagTopBarSignalizeScreenSize then self.state.screenSize else self.props.screenSize

		if menuHeight > (screenSize.Y * MAX_SCREEN_PERCENTAGE) then
			maxScale = (screenSize.Y * MAX_SCREEN_PERCENTAGE) / menuHeight
		end

		if MENU_SIZE_X > (screenSize.X * MAX_SCREEN_PERCENTAGE) then
			local scaleX = (screenSize.X * MAX_SCREEN_PERCENTAGE) / MENU_SIZE_X
			if scaleX < maxScale then
				maxScale = scaleX
			end
		end

		if maxScale < 1 then
			menuChildren.UIScale = Roact.createElement("UIScale", {
				Scale = maxScale,
			})
		end

		local visible = self.props.isGamepadMenuOpen
		local controllerBarComponent
		if visible then
			controllerBarComponent = Roact.createElement(ControllerBar, {
				chatMenuEnabled = self.shouldShowChatMenuOption(self.props.chatVersion, self.props.chatEnabled),
			})
		end

		local children = {
			Menu = Roact.createElement(ImageSetLabel, {
				BackgroundTransparency = 1,
				Image = MENU_BACKGROUND_ASSET,
				SliceCenter = MENU_SLICE_CENTER,
				ScaleType = Enum.ScaleType.Slice,
				ImageTransparency = theme.BackgroundUIContrast.Transparency,
				ImageColor3 = theme.BackgroundUIContrast.Color,
				Size = UDim2.fromOffset(MENU_SIZE_X, menuHeight),
				Position = UDim2.fromScale(0.5, 0.5),
				AnchorPoint = Vector2.new(0.5, 0.5),
			}, menuChildren),

			ControllerBar = controllerBarComponent,
			MenuNavigationToggleDialog = if not ChromeEnabled() and not FFlagTiltIconUnibarFocusNav and FFlagAddMenuNavigationToggleDialog
				then Roact.createElement(MenuNavigationToggleDialog, {
					Position = UDim2.fromScale(0.5, 0.1),
				} :: never)
				else nil,
		}

		return Roact.createElement("TextButton", {
			Visible = visible,
			Text = "",
			BackgroundTransparency = theme.Overlay.Transparency,
			BackgroundColor3 = theme.Overlay.Color,
			Size = UDim2.fromScale(1, 1),
			BorderSizePixel = 0,
			ZIndex = 10,

			[Roact.Event.Activated] = self.overlayDismiss,
		}, children)
	end)
end

function GamepadMenu:didMount()
	if not VRService.VREnabled then
		ContextActionService:BindCoreAction(
			TOGGLE_GAMEPAD_MENU_ACTION,
			self.toggleMenuVisibleAction,
			false,
			Enum.KeyCode.ButtonStart
		)
	end
end

function GamepadMenu:bindMenuOpenActions()
	self.boundMenuOpenActions = true

	ContextActionService:BindCoreAction(
		FREEZE_CONTROLLER_ACTION_NAME,
		function() end,
		false,
		Enum.UserInputType.Gamepad1
	)
	ContextActionService:BindCoreAction(CLOSEMENU_ACTION_NAME, self.closeMenuAction, false, Enum.KeyCode.ButtonB)
	ContextActionService:BindCoreAction(LEAVE_GAME_ACTION_NAME, self.leaveGameMenuAction, false, Enum.KeyCode.ButtonX)
	ContextActionService:BindCoreAction(RESPAWN_ACTION_NAME, self.respawnMenuAction, false, Enum.KeyCode.ButtonY)
	ContextActionService:BindCoreAction(
		ACTIVATE_SELECTION_ACTION_NAME,
		self.activateSelectionAction,
		false,
		Enum.KeyCode.ButtonA
	)
	ContextActionService:BindCoreAction(
		MOVE_SLECTION_ACTION_NAME,
		self.moveSelectionAction,
		false,
		Enum.KeyCode.Thumbstick1,
		Enum.KeyCode.DPadUp,
		Enum.KeyCode.DPadDown
	)

	ContextActionService:BindCoreAction(GO_TO_TOP_ACTION_NAME, self.goToTopAction, false, Enum.KeyCode.ButtonL2)
	ContextActionService:BindCoreAction(GO_TO_BOTTOM_ACTION_NAME, self.goToBottomAction, false, Enum.KeyCode.ButtonR2)

	ContextActionService:BindCoreAction(
		TOGGLE_CHAT_VISIBILITY,
		self.toggleChatVisibilityAction,
		false,
		Enum.KeyCode.ButtonR1
	)

	ContextActionService:BindCoreAction(
		TOGGLE_GAMEPAD_MENU_ACTION,
		self.toggleMenuVisibleAction,
		false,
		Enum.KeyCode.ButtonStart
	)
end

function GamepadMenu:unbindMenuOpenActions()
	self.boundMenuOpenActions = false

	ContextActionService:UnbindCoreAction(FREEZE_CONTROLLER_ACTION_NAME)
	ContextActionService:UnbindCoreAction(CLOSEMENU_ACTION_NAME)
	ContextActionService:UnbindCoreAction(ACTIVATE_SELECTION_ACTION_NAME)
	ContextActionService:UnbindCoreAction(LEAVE_GAME_ACTION_NAME)
	ContextActionService:UnbindCoreAction(RESPAWN_ACTION_NAME)
	ContextActionService:UnbindCoreAction(MOVE_SLECTION_ACTION_NAME)
	ContextActionService:UnbindCoreAction(GO_TO_TOP_ACTION_NAME)
	ContextActionService:UnbindCoreAction(GO_TO_BOTTOM_ACTION_NAME)
	ContextActionService:UnbindCoreAction(TOGGLE_CHAT_VISIBILITY)
end

function GamepadMenu:unbindAllActions()
	if self.boundMenuOpenActions then
		self:unbindMenuOpenActions()
	end

	ContextActionService:UnbindCoreAction(TOGGLE_GAMEPAD_MENU_ACTION)
end

function GamepadMenu:didUpdate(prevProps, prevState)
	local stateChanged, openMenu
	stateChanged = prevProps.isGamepadMenuOpen ~= self.props.isGamepadMenuOpen
	openMenu = self.props.isGamepadMenuOpen

	if stateChanged then
		if openMenu then
			self:bindMenuOpenActions()

			if self.state.selectedIndex ~= 1 then
				self:setState({
					selectedIndex = 1,
				})
			end

			self.savedSelectedCoreObject = GuiService.SelectedCoreObject
			GuiService.SelectedCoreObject = nil
			self.savedSelectedObject = GuiService.SelectedObject
			GuiService.SelectedObject = nil

			GuiService:SetMenuIsOpen(true, GAMEPAD_MENU_KEY)

			if ChromeEnabled() then
				GamepadMenu.closeUnibarMenu()
			end
		else
			self:unbindMenuOpenActions()

			GuiService:SetMenuIsOpen(false, GAMEPAD_MENU_KEY)
		end
	end
end

function GamepadMenu:willUnmount()
	self:unbindAllActions()

	if FFlagTopBarSignalizeScreenSize then 
		self.disposeScreenSize()
	end
end

function GamepadMenu:logExperienceMenuGamepadExposure()
	if FFlagExperienceMenuGamepadExposureEnabled and not self.loggedExperienceMenuGamepadExposure then
		IXPServiceWrapper:LogFlagLinkedUserLayerExposure(ExperimentLayers.ExperienceMenuGamepadExposureLayer)
		self.loggedExperienceMenuGamepadExposure = true
	end
end

local function mapStateToProps(state)
	local topBarEnabled = state.displayOptions.topbarEnabled

	return {
		screenSize = if FFlagTopBarSignalizeScreenSize then nil else state.displayOptions.screenSize,

		chatEnabled = state.coreGuiEnabled[Enum.CoreGuiType.Chat] and topBarEnabled and not VRService.VREnabled,
		leaderboardEnabled = state.coreGuiEnabled[Enum.CoreGuiType.PlayerList] and topBarEnabled,
		emotesEnabled = state.moreMenu.emotesEnabled
			and state.coreGuiEnabled[Enum.CoreGuiType.EmotesMenu]
			and topBarEnabled,
		backpackEnabled = if FFlagMountCoreGuiBackpack then nil else state.coreGuiEnabled[Enum.CoreGuiType.Backpack] and topBarEnabled,

		respawnEnabled = state.respawn.enabled,

		topBarEnabled = if FFlagMountCoreGuiBackpack then topBarEnabled else nil,
		leaderboardOpen = state.moreMenu.leaderboardOpen,
		backpackOpen = state.moreMenu.backpackOpen,
		emotesOpen = state.moreMenu.emotesOpen,

		menuOpen = state.displayOptions.menuOpen,

		isGamepadMenuOpen = state.displayOptions.isGamepadMenuOpen,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		setGamepadMenuOpen = function(open)
			return dispatch(SetGamepadMenuOpen(open))
		end,
	}
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, mapDispatchToProps)(GamepadMenu)
