local CorePackages = game:GetService("CorePackages")
local ContextActionService = game:GetService("ContextActionService")
local CoreGui = game:GetService("CoreGui")
local GuiService = game:GetService("GuiService")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local Cryo = require(CorePackages.Cryo)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.UIBlox)

local withStyle = UIBlox.Core.Style.withStyle
local Images = UIBlox.App.ImageSet.Images
local ImageSetLabel = UIBlox.Core.ImageSet.Label

local MenuHeader = require(script.MenuHeader)
local ChatIcon = require(script.ChatIcon)
local MenuCell = require(script.MenuCell)
local BottomBar = require(script.BottomBar)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local TenFootInterface = require(RobloxGui.Modules.TenFootInterface)
local BackpackModule = require(RobloxGui.Modules.BackpackScript)
local EmotesModule = require(RobloxGui.Modules.EmotesMenu.EmotesMenuMaster)
local ChatModule = require(RobloxGui.Modules.ChatSelector)
local PlayerListMaster = require(RobloxGui.Modules.PlayerList.PlayerListManager)

local isNewInGameMenuEnabled = require(RobloxGui.Modules.isNewInGameMenuEnabled)
local InGameMenuConstants = require(RobloxGui.Modules.InGameMenu.Resources.Constants)

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

local GAMEPAD_MENU_MOUNT_TAG = "gamepadMenuMount"
local GAMEPAD_MENU_UPDATE_TAG = "gamepadMenuUpdate"

local GAMEPAD_MENU_KEY = "GamepadMenu"

local GamepadMenu = Roact.PureComponent:extend("GamepadMenu")

GamepadMenu.validateProps = t.strictInterface({
	chatEnabled = t.boolean,
	leaderboardEnabled = t.boolean,
	emotesEnabled = t.boolean,
	backpackEnabled = t.boolean,

	respawnEnabled = t.boolean,

	leaderboardOpen = t.boolean,
	backpackOpen = t.boolean,
	emotesOpen = t.boolean,
})

function GamepadMenu:init()
	debug.profilebegin(GAMEPAD_MENU_MOUNT_TAG)

	self:setState({
		visible = false,

		selectedIndex = 1,
		menuActions = {}
	})

	self.boundMenuOpenActions = false

	self.toggleMenuVisibleAction = function(actionName, userInputState, input)
		if userInputState ~= Enum.UserInputState.Begin then
			return Enum.ContextActionResult.Pass
		end

		self:setState({
			visible = not self.state.visible,
		})
		return Enum.ContextActionResult.Sink
	end

	self.closeMenuAction = function(actionName, userInputState, input)
		if userInputState ~= Enum.UserInputState.Begin then
			return Enum.ContextActionResult.Pass
		end

		self:setState({
			visible = false,
		})
		return Enum.ContextActionResult.Sink
	end

	self.leaveGameMenuAction = function(actionName, userInputState, input)
		if userInputState ~= Enum.UserInputState.Begin then
			return Enum.ContextActionResult.Pass
		end

		GamepadMenu.leaveGame()

		self:setState({
			visible = false,
		})
		return Enum.ContextActionResult.Sink
	end

	self.respawnMenuAction = function(actionName, userInputState, input)
		if userInputState ~= Enum.UserInputState.Begin then
			return Enum.ContextActionResult.Pass
		end

		GamepadMenu.respawnCharacter()

		self:setState({
			visible = false,
		})
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
		action.onActivated()

		self:setState({
			visible = false,
		})
		return Enum.ContextActionResult.Sink
	end

	self.overlayDismiss = function()
		self:setState({
			visible = false,
		})
	end
end

function GamepadMenu.openSettingsMenu()
	if isNewInGameMenuEnabled() then
		-- todo: move InGameMenu to a script global when removing isNewInGameMenuEnabled
		local InGameMenu = require(RobloxGui.Modules.InGameMenu)
		InGameMenu.openGameSettingsPage()
	else
		local MenuModule = require(RobloxGui.Modules.Settings.SettingsHub)
		MenuModule:SetVisibility(true, nil, MenuModule.Instance.GameSettingsPage, true,
			InGameMenuConstants.AnalyticsMenuOpenTypes.SettingsTriggered)
	end
end

function GamepadMenu.toggleChatVisible()
	ChatModule:ToggleVisibility()
end

function GamepadMenu.toggleLeaderboard()
	PlayerListMaster:SetVisibility(not PlayerListMaster:GetSetVisible())
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
	local MenuModule = require(RobloxGui.Modules.Settings.SettingsHub)
	MenuModule:SetVisibility(true, false, MenuModule.Instance.LeaveGamePage, true,
		InGameMenuConstants.AnalyticsMenuOpenTypes.GamepadLeaveGame)
end

function GamepadMenu.respawnCharacter()
	local MenuModule = require(RobloxGui.Modules.Settings.SettingsHub)
	MenuModule:SetVisibility(true, false, MenuModule.Instance.ResetCharacterPage, true,
		InGameMenuConstants.AnalyticsMenuOpenTypes.GamepadResetCharacter)
end

function GamepadMenu.getMenuActionsFromProps(props)
	local menuActions = {}

	table.insert(menuActions, {
		name = "Menu",
		icon = MENU_ICON,
		iconComponent = nil,
		localizationKey = "CoreScripts.TopBar.Menu",
		onActivated = GamepadMenu.openSettingsMenu,
	})

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

		return Roact.createElement("TextButton", {
			Visible = self.state.visible,
			Text = "",
			BackgroundTransparency = theme.Overlay.Transparency,
			BackgroundColor3 = theme.Overlay.Color,
			Size = UDim2.fromScale(1, 1),
			BorderSizePixel = 0,
			ZIndex = 10,

			[Roact.Event.Activated] = self.overlayDismiss,
		}, {
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

			BottomBar = Roact.createElement(BottomBar),
		})
	end)
end

function GamepadMenu:didMount()
	ContextActionService:BindCoreAction(
		TOGGLE_GAMEPAD_MENU_ACTION, self.toggleMenuVisibleAction, false, Enum.KeyCode.ButtonStart)

	debug.profileend(GAMEPAD_MENU_MOUNT_TAG)
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
	ContextActionService:BindCoreAction(
		TOGGLE_GAMEPAD_MENU_ACTION, self.toggleMenuVisibleAction, false, Enum.KeyCode.ButtonStart)
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

function GamepadMenu:willUpdate()
	debug.profilebegin(GAMEPAD_MENU_UPDATE_TAG)
end

function GamepadMenu:didUpdate(prevProps, prevState)
	if self.state.visible ~= prevState.visible then
		if self.state.visible then
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
		else
			self:unbindMenuOpenActions()

			if GuiService.SelectedCoreObject == nil then
				GuiService.SelectedCoreObject = self.savedSelectedCoreObject
			end
			if GuiService.SelectedObject == nil then
				GuiService.SelectedObject = self.savedSelectedObject
			end

			GuiService:SetMenuIsOpen(false, GAMEPAD_MENU_KEY)
		end
	end

	debug.profileend(GAMEPAD_MENU_UPDATE_TAG)
end

function GamepadMenu:willUnmount()
	self:unbindAllActions()
end

local function mapStateToProps(state)
	local topBarEnabled = state.displayOptions.topbarEnabled

	return {
		chatEnabled = state.coreGuiEnabled[Enum.CoreGuiType.Chat] and topBarEnabled,
		leaderboardEnabled = state.coreGuiEnabled[Enum.CoreGuiType.PlayerList] and topBarEnabled,
		emotesEnabled = state.moreMenu.emotesEnabled and state.coreGuiEnabled[Enum.CoreGuiType.EmotesMenu] and topBarEnabled,
		backpackEnabled = state.coreGuiEnabled[Enum.CoreGuiType.Backpack] and topBarEnabled,

		respawnEnabled = state.respawn.enabled,

		leaderboardOpen = state.moreMenu.leaderboardOpen,
		backpackOpen = state.moreMenu.backpackOpen,
		emotesOpen = state.moreMenu.emotesOpen,
	}
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, nil)(GamepadMenu)