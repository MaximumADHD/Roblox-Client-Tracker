--!nonstrict
local CorePackages = game:GetService("CorePackages")
local ContextActionService = game:GetService("ContextActionService")
local CoreGui = game:GetService("CoreGui")
local GuiService = game:GetService("GuiService")
local Players = game:GetService("Players")
local VRService = game:GetService("VRService")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local Cryo = require(CorePackages.Cryo)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.UIBlox)

local withStyle = UIBlox.Core.Style.withStyle
local Images = UIBlox.App.ImageSet.Images
local ImageSetLabel = UIBlox.Core.ImageSet.ImageSetLabel

local MenuHeader = require(script.MenuHeader)
local ChatIcon = require(script.ChatIcon)
local MenuCell = require(script.MenuCell)
local BottomBar = require(script.BottomBar)
local ControllerBar = require(script.QuickMenuControllerBar)
local MenuNavigationToggleDialog = require(script.MenuNavigationToggleDialog)
local MenuNavigationDismissablePrompt = require(script.MenuNavigationDismissablePrompt)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local TenFootInterface = require(RobloxGui.Modules.TenFootInterface)
local BackpackModule = require(RobloxGui.Modules.BackpackScript)
local EmotesModule = require(RobloxGui.Modules.EmotesMenu.EmotesMenuMaster)
local ChatModule = require(RobloxGui.Modules.ChatSelector)
local PlayerListMaster = require(RobloxGui.Modules.PlayerList.PlayerListManager)

local isNewInGameMenuEnabled = require(RobloxGui.Modules.isNewInGameMenuEnabled)
local InGameMenuConstants = require(RobloxGui.Modules.InGameMenuConstants)
local ChromeEnabled = require(RobloxGui.Modules.Chrome.Enabled)

local Components = script.Parent.Parent
local Actions = Components.Parent.Actions
local SetGamepadMenuOpen = require(Actions.SetGamepadMenuOpen)
local MenuNavigationPromptLocalStorage = require(script.MenuNavigationPromptLocalStorage)

local TOGGLE_GAMEPAD_MENU_ACTION = "TopBarGamepadToggleGamepadMenu"
local FREEZE_CONTROLLER_ACTION_NAME = "TopBarGamepadFreezeController"
local CLOSEMENU_ACTION_NAME = "TopBarGamepadCloseMenu"
local LEAVE_GAME_ACTION_NAME = "TopBarGamepadLeaveGame"
local RESPAWN_ACTION_NAME = "TopBarGamepadRespawnAction"
local MOVE_SLECTION_ACTION_NAME = "TopBarGamepadMoveSelection"
local ACTIVATE_SELECTION_ACTION_NAME = "TopBarGamepadActivateSelection"
local GO_TO_TOP_ACTION_NAME = "TopBarGamepadMoveSelectionTop"
local GO_TO_BOTTOM_ACTION_NAME = "TopBarGamepadMoveSelectionBottom"

local THUMBSTICK_MOVE_COOLDOWN = 0.15

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

local LocalPlayer = Players.LocalPlayer

local GamepadMenu = Roact.PureComponent:extend("GamepadMenu")
local GetFFlagQuickMenuControllerBarRefactor = require(RobloxGui.Modules.Flags.GetFFlagQuickMenuControllerBarRefactor)
local FFlagAddMenuNavigationToggleDialog = require(script.Parent.Parent.Parent.Flags.FFlagAddMenuNavigationToggleDialog)
local FFlagEnableGamepadMenuSelector = require(script.Parent.Parent.Parent.Flags.FFlagEnableGamepadMenuSelector)
local GetFFlagEnableUnibarSneakPeak = require(RobloxGui.Modules.Chrome.Flags.GetFFlagEnableUnibarSneakPeak)
local GetFFlagOpenPlayersPageFromGamepad = require(script.Parent.Parent.Parent.Flags.GetFFlagOpenPlayersPageFromGamepad)

GamepadMenu.validateProps = t.strictInterface({
	screenSize = t.Vector2,

	chatEnabled = t.boolean,
	leaderboardEnabled = t.boolean,
	emotesEnabled = t.boolean,
	backpackEnabled = t.boolean,

	respawnEnabled = t.boolean,

	leaderboardOpen = t.boolean,
	backpackOpen = t.boolean,
	emotesOpen = t.boolean,

	menuOpen = t.boolean,

	setGamepadMenuOpen = t.callback,
	isGamepadMenuOpen = t.boolean,
})

function GamepadMenu:init()
	self:setState({
		selectedIndex = 1,
		menuActions = {},
		shouldShowMenuNavigationPrompt = if FFlagEnableGamepadMenuSelector
			then MenuNavigationPromptLocalStorage.getShouldShowMenuNavigationPrompt()
			else nil,
	})

	self.boundMenuOpenActions = false

	self.toggleMenuVisibleAction = function(actionName, userInputState, input)
		if userInputState ~= Enum.UserInputState.Begin or self.props.menuOpen then
			return Enum.ContextActionResult.Pass
		end

		self.props.setGamepadMenuOpen(not self.props.isGamepadMenuOpen)

		return Enum.ContextActionResult.Sink
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

		return Enum.ContextActionResult.Sink
	end

	self.respawnMenuAction = function(actionName, userInputState, input)
		if userInputState ~= Enum.UserInputState.Begin then
			return Enum.ContextActionResult.Pass
		end

		GamepadMenu.respawnCharacter()

		self.props.setGamepadMenuOpen(false)

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

		if FFlagEnableGamepadMenuSelector and self.state.shouldShowMenuNavigationPrompt then
			self:setState({
				shouldShowMenuNavigationPrompt = false,
			})
			MenuNavigationPromptLocalStorage.setMenuNavigationPromptShown()
			return Enum.ContextActionResult.Sink
		end

		local action = self.state.menuActions[self.state.selectedIndex]
		self.props.setGamepadMenuOpen(false)

		-- Since the above call closing the gamepad menu is not instant we can't rely on
		-- this being called in didUpdate. We need to call it manually here.
		-- Otherwise the EmotesMenu will not open because it thinks the GamepadMenu is already open
		GuiService:SetMenuIsOpen(false, GAMEPAD_MENU_KEY)

		action.onActivated()

		return Enum.ContextActionResult.Sink
	end

	self.overlayDismiss = function()
		self.props.setGamepadMenuOpen(false)
	end
end

function GamepadMenu.openRootMenu()
	-- todo: move InGameMenu to a script global when removing isNewInGameMenuEnabled
	if isNewInGameMenuEnabled() then
		local InGameMenu = require(RobloxGui.Modules.InGameMenuInit)
		InGameMenu.openInGameMenu(InGameMenuConstants.MainPagePageKey)
	else
		local MenuModule = require(RobloxGui.Modules.Settings.SettingsHub)

		if GetFFlagOpenPlayersPageFromGamepad() then
			MenuModule:SetVisibility(true, nil, nil, true,
				InGameMenuConstants.AnalyticsMenuOpenTypes.PlayersTriggered)
		else
			MenuModule:SetVisibility(true, nil, MenuModule.Instance.GameSettingsPage, true,
				InGameMenuConstants.AnalyticsMenuOpenTypes.SettingsTriggered)
		end		
	end
end

function GamepadMenu.openUnibarMenu()
	local ChromeService = require(RobloxGui.Modules.Chrome.Service)
	if GetFFlagEnableUnibarSneakPeak() then
		ChromeService:open()
	else
		ChromeService:toggleOpen()
	end
end

function GamepadMenu.closeUnibarMenu()
	local ChromeService = require(RobloxGui.Modules.Chrome.Service)
	ChromeService:close()
end

function GamepadMenu.toggleChatVisible()
	ChatModule:ToggleVisibility()
end

function GamepadMenu.toggleLeaderboard()
	-- todo: move InGameMenu to a script global when removing isNewInGameMenuEnabled
	if isNewInGameMenuEnabled() then
		local InGameMenu = require(RobloxGui.Modules.InGameMenuInit)
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
		local InGameMenu = require(RobloxGui.Modules.InGameMenuInit)
		InGameMenu.openGameLeavePage()
	else
		local MenuModule = require(RobloxGui.Modules.Settings.SettingsHub)
		MenuModule:SetVisibility(true, false, MenuModule.Instance.LeaveGamePage, true,
			InGameMenuConstants.AnalyticsMenuOpenTypes.GamepadLeaveGame)
	end
end

function GamepadMenu.respawnCharacter()
	if isNewInGameMenuEnabled() then
		local InGameMenu = require(RobloxGui.Modules.InGameMenuInit)
		InGameMenu.openCharacterResetPage()
	else
		local MenuModule = require(RobloxGui.Modules.Settings.SettingsHub)
		MenuModule:SetVisibility(true, false, MenuModule.Instance.ResetCharacterPage, true,
			InGameMenuConstants.AnalyticsMenuOpenTypes.GamepadResetCharacter)
	end
end

function GamepadMenu.getMenuActionsFromProps(props)
	local menuActions = {}

	table.insert(menuActions, {
		name = "Menu",
		icon = MENU_ICON,
		iconComponent = nil,
		localizationKey = "CoreScripts.TopBar.Menu",
		onActivated = GamepadMenu.openRootMenu,
	})

	if ChromeEnabled() then
		table.insert(menuActions, {
			name = "Unibar",
			icon = UNIBAR_ICON,
			iconComponent = nil,
			localizationKey = "CoreScripts.TopBar.Title.ExperienceControls",
			onActivated = GamepadMenu.openUnibarMenu,
		})
	end

	if props.chatEnabled and not TenFootInterface:IsEnabled() then
		table.insert(menuActions, {
			name = "Chat",
			icon = nil,
			iconComponent = ChatIcon,
			localizationKey = "CoreScripts.TopBar.Chat",
			onActivated = GamepadMenu.toggleChatVisible,
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
			name = "Leaderboard",
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
			name = "Emotes",
			icon = icon,
			iconComponent = nil,
			localizationKey = "CoreScripts.TopBar.Emotes",
			onActivated = GamepadMenu.toggleEmotesMenu,
		})
	end

	if props.backpackEnabled then
		local icon
		if props.backpackOpen then
			icon = INVENTORY_ICON_ON
		else
			icon = INVENTORY_ICON_OFF
		end

		table.insert(menuActions, {
			name = "Inventory",
			icon = icon,
			iconComponent = nil,
			localizationKey = "CoreScripts.TopBar.Inventory",
			onActivated = GamepadMenu.toggleBackpack,
		})
	end

	if props.respawnEnabled then
		table.insert(menuActions, {
			name = "Respawn",
			icon = RESPAWN_ICON,
			iconComponent = nil,
			localizationKey = "CoreScripts.TopBar.Respawn",
			onActivated = GamepadMenu.respawnCharacter,
		})
	end

	table.insert(menuActions, {
		name = "Leave",
		icon = LEAVE_ICON,
		iconComponent = nil,
		localizationKey = "CoreScripts.TopBar.Leave",
		onActivated = GamepadMenu.leaveGame,
	})

	return menuActions
end

function GamepadMenu.getDerivedStateFromProps(nextProps, prevState)
	local menuActions = GamepadMenu.getMenuActionsFromProps(nextProps)

	local selectedIndex = prevState.selectedIndex or 1
	if selectedIndex > #menuActions then
		selectedIndex = #menuActions
	end

	return Cryo.Dictionary.join(prevState, {
		selectedIndex = selectedIndex,
		menuActions = menuActions
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

		if menuHeight > (self.props.screenSize.Y * MAX_SCREEN_PERCENTAGE) then
			maxScale = (self.props.screenSize.Y * MAX_SCREEN_PERCENTAGE) / menuHeight
		end

		if MENU_SIZE_X > (self.props.screenSize.X * MAX_SCREEN_PERCENTAGE) then
			local scaleX = (self.props.screenSize.X * MAX_SCREEN_PERCENTAGE) / MENU_SIZE_X
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
		if GetFFlagQuickMenuControllerBarRefactor() then
			controllerBarComponent = visible and Roact.createElement(ControllerBar) or nil
		else
			controllerBarComponent = Roact.createElement(BottomBar)
		end

		local menuNavigationPromptItems = {
			MenuNavigationDismissablePrompt = Roact.createElement(MenuNavigationDismissablePrompt, {
					Position = UDim2.fromScale(0.5, 0.5),
					Visible = self.props.isGamepadMenuOpen,
				})
		}

		local defaultMenuItems = {
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
			MenuNavigationToggleDialog = if FFlagAddMenuNavigationToggleDialog then Roact.createElement(MenuNavigationToggleDialog, {
				Position = UDim2.fromScale(0.5, 0.1),
			}) else nil
		}

		local children = if FFlagEnableGamepadMenuSelector and self.state.shouldShowMenuNavigationPrompt
			then menuNavigationPromptItems
			else defaultMenuItems

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
			TOGGLE_GAMEPAD_MENU_ACTION, self.toggleMenuVisibleAction, false, Enum.KeyCode.ButtonStart)
	end
end

function GamepadMenu:bindMenuOpenActions()
	self.boundMenuOpenActions = true

	ContextActionService:BindCoreAction(FREEZE_CONTROLLER_ACTION_NAME, function() end, false, Enum.UserInputType.Gamepad1)
	ContextActionService:BindCoreAction(CLOSEMENU_ACTION_NAME, self.closeMenuAction, false, Enum.KeyCode.ButtonB)
	ContextActionService:BindCoreAction(LEAVE_GAME_ACTION_NAME, self.leaveGameMenuAction, false, Enum.KeyCode.ButtonX)
	ContextActionService:BindCoreAction(RESPAWN_ACTION_NAME, self.respawnMenuAction, false, Enum.KeyCode.ButtonY)
	ContextActionService:BindCoreAction(
		ACTIVATE_SELECTION_ACTION_NAME, self.activateSelectionAction, false, Enum.KeyCode.ButtonA)
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
	ContextActionService:BindCoreAction(TOGGLE_GAMEPAD_MENU_ACTION, self.toggleMenuVisibleAction, false, Enum.KeyCode.ButtonStart)
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

			if GetFFlagEnableUnibarSneakPeak() and ChromeEnabled() then
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
end

local function mapStateToProps(state)
	local topBarEnabled = state.displayOptions.topbarEnabled

	return {
		screenSize = state.displayOptions.screenSize,

		chatEnabled = state.coreGuiEnabled[Enum.CoreGuiType.Chat] and topBarEnabled and not VRService.VREnabled,
		leaderboardEnabled = state.coreGuiEnabled[Enum.CoreGuiType.PlayerList] and topBarEnabled,
		emotesEnabled = state.moreMenu.emotesEnabled and state.coreGuiEnabled[Enum.CoreGuiType.EmotesMenu] and topBarEnabled,
		backpackEnabled = state.coreGuiEnabled[Enum.CoreGuiType.Backpack] and topBarEnabled,

		respawnEnabled = state.respawn.enabled,

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
