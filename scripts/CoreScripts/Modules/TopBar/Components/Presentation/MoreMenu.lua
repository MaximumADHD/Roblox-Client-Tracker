local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local ContextActionService = game:GetService("ContextActionService")
local VRService = game:GetService("VRService")
local StarterGui = game:GetService("StarterGui")

local Signals = require(CorePackages.Packages.Signals)
local Display = require(CorePackages.Workspace.Packages.Display)

local Roact = require(CorePackages.Packages.Roact)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.Packages.UIBlox)
local Signals = require(CorePackages.Packages.Signals)
local Display = require(CorePackages.Workspace.Packages.Display)

local ContextualMenu = UIBlox.App.Menu.ContextualMenu
local MenuDirection = UIBlox.App.Menu.MenuDirection
local Images = UIBlox.App.ImageSet.Images
local withStyle = UIBlox.Core.Style.withStyle

local Components = script.Parent.Parent
local TopBar = Components.Parent

local Actions = TopBar.Actions
local SetKeepOutArea = require(Actions.SetKeepOutArea)
local RemoveKeepOutArea = require(Actions.RemoveKeepOutArea)
local SetMoreMenuOpen = require(Actions.SetMoreMenuOpen)

local TopBarAnalytics = require(TopBar.Analytics)

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagTopBarStyleUseDisplayUIScale = SharedFlags.FFlagTopBarStyleUseDisplayUIScale

local CoreGuiCommon = require(CorePackages.Workspace.Packages.CoreGuiCommon)
local FFlagTopBarSignalizeKeepOutAreas = CoreGuiCommon.Flags.FFlagTopBarSignalizeKeepOutAreas
local FFlagTopBarSignalizeScreenSize = CoreGuiCommon.Flags.FFlagTopBarSignalizeScreenSize

local FFlagEnableTopBarAnalytics = require(TopBar.Flags.GetFFlagEnableTopBarAnalytics)()
local FFlagRemoveTopBarInputTypeRodux = require(TopBar.Flags.GetFFlagRemoveTopBarInputTypeRodux)()
local FFlagEnableChromeBackwardsSignalAPI = require(TopBar.Flags.GetFFlagEnableChromeBackwardsSignalAPI)()

local Constants = require(TopBar.Constants)
local InputType = Constants.InputType

local IconButton = require(script.Parent.IconButton)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local Modules = RobloxGui.Modules
local TenFootInterface = require(Modules.TenFootInterface)
local VRHub = require(Modules.VR.VRHub)

local EmotesMenuMaster = require(Modules.EmotesMenu.EmotesMenuMaster)
local BackpackModule = require(Modules.BackpackScript)
local ChatSelector = require(Modules.ChatSelector)
local PlayerListMaster = require(Modules.PlayerList.PlayerListManager)

local EmotesConstants = require(Modules.EmotesMenu.Constants)

local RobloxTranslator = require(CorePackages.Workspace.Packages.RobloxTranslator)

local ExternalEventConnection = require(CorePackages.Workspace.Packages.RoactUtils).ExternalEventConnection

local FFlagMountCoreGuiBackpack = require(Modules.Flags.FFlagMountCoreGuiBackpack)

local MORE_BUTTON_SIZE = 32
local ICON_SIZE = 24
local MENU_GAP = 12

local MENU_DEFAULT_SIZE = 300
local CONTEXT_MENU_DEFAULT_PADDING = 12
local MENU_EXTRA_PADDING = 12
local MENU_FULLSCREEN_THRESHOLD = 450

local CHAT_HIDE_THRESHOLD = 600

local ESCAPE_CLOSE_MENU_ACTION = "CloseMoreMenuAction"

local LEADERBOARD_ICON_ON = "rbxasset://textures/ui/TopBar/leaderboardOn.png"
local LEADERBOARD_ICON_OFF = "rbxasset://textures/ui/TopBar/leaderboardOff.png"

local BACKPACK_ICON_ON = "rbxasset://textures/ui/TopBar/inventoryOn.png"
local BACKPACK_ICON_OFF = "rbxasset://textures/ui/TopBar/inventoryOff.png"

local MORE_ICON_ON = "rbxasset://textures/ui/TopBar/moreOn.png"
local MORE_ICON_OFF = "rbxasset://textures/ui/TopBar/moreOff.png"

local EMOTES_ICON_ON = Images["icons/controls/emoteOn"]
local EMOTES_ICON_OFF = Images["icons/controls/emoteOff"]

local MoreMenu = Roact.PureComponent:extend("MoreMenu")

MoreMenu.validateProps = t.strictInterface({
	layoutOrder = t.integer,

	moreMenuOpen = t.boolean,
	setMoreMenuOpen = t.callback,
	screenSize = if FFlagTopBarSignalizeScreenSize then nil else t.Vector2,
	isSmallTouchDevice = t.boolean,

	topBarEnabled = t.boolean,
	leaderboardEnabled = t.boolean,
	emotesEnabled = t.boolean,
	backpackEnabled = if FFlagMountCoreGuiBackpack then nil else t.boolean,

	leaderboardOpen = t.boolean,
	backpackOpen = t.boolean,
	emotesOpen = t.boolean,

	inputType = if FFlagRemoveTopBarInputTypeRodux then nil else t.string,
	setKeepOutArea = if FFlagTopBarSignalizeKeepOutAreas then nil else t.callback,
	removeKeepOutArea = if FFlagTopBarSignalizeKeepOutAreas then nil else t.callback,
})

function MoreMenu:init()
	self.rootRef = Roact.createRef()
	if FFlagEnableTopBarAnalytics then
		self.analytics = TopBarAnalytics.default
	end

	if FFlagTopBarStyleUseDisplayUIScale then
		self.disposeUiScaleEffect = Signals.createEffect(function(scope)
			local DisplayStore = Display.GetDisplayStore(scope)
			self:setState({
				UiScale = DisplayStore.getUIScale(scope),
			})
		end)
	end

	if FFlagMountCoreGuiBackpack then
		self:setState({
			mountBackpack = StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.Backpack),
			vrShowMenuIcon = false,
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
			vrShowMenuIcon = false,
		})
	end

	self.chatWasHidden = false

	self.boundAction = false

	self.moreButtonActivated = function()
		self.props.setMoreMenuOpen(not self.props.moreMenuOpen)
		if self.analytics then
			self.analytics:onMoreMenuActivated()
		end
	end

	if FFlagTopBarSignalizeKeepOutAreas and CoreGuiCommon.Stores.GetKeepOutAreasStore then 
		self.keepOutAreasStore = CoreGuiCommon.Stores.GetKeepOutAreasStore(false)
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

function MoreMenu:willUnmount()
	if FFlagTopBarSignalizeScreenSize then 
		self.disposeScreenSize()
	end
	if FFlagTopBarStyleUseDisplayUIScale and self.disposeUiScaleEffect then
		self.disposeUiScaleEffect()
	end
end

function MoreMenu:renderWithStyle(style)
	local menuOptions = {}
	local hasOptions = false

	local isUsingKeyBoard = if FFlagRemoveTopBarInputTypeRodux then false else self.props.inputType == InputType.MouseAndKeyBoard

	local enableLeaderboardButton = self.props.leaderboardEnabled

	if enableLeaderboardButton then
		local leaderboardIcon = LEADERBOARD_ICON_ON
		if not self.props.leaderboardOpen then
			leaderboardIcon = LEADERBOARD_ICON_OFF
		end
		table.insert(menuOptions, {
			icon = leaderboardIcon,
			text = RobloxTranslator:FormatByKey("CoreScripts.TopBar.Leaderboard"),
			keyCodeLabel = isUsingKeyBoard and Enum.KeyCode.Tab or nil,
			onActivated = function()
				local isLeaderboardActive = self.props.leaderboardOpen
				if VRService.VREnabled then
					local InGameMenu = require(RobloxGui.Modules.InGameMenu)
					InGameMenu.openPlayersPage()
				else
					PlayerListMaster:SetVisibility(not PlayerListMaster:GetSetVisible())
					self.props.setMoreMenuOpen(false)
				end
				if self.analytics then
					self.analytics:onLeaderboardActivated(not isLeaderboardActive)
				end
			end,
		})
		hasOptions = true
	end

	if self.props.emotesEnabled then
		local emotesIcon = EMOTES_ICON_ON
		if not self.props.emotesOpen then
			emotesIcon = EMOTES_ICON_OFF
		end

		local emotesKeybind = EmotesConstants.EmoteMenuOpenKey

		table.insert(menuOptions, {
			icon = emotesIcon,
			text = RobloxTranslator:FormatByKey("CoreScripts.TopBar.Emotes"),
			keyCodeLabel = isUsingKeyBoard and emotesKeybind or nil,
			onActivated = function()
				if EmotesMenuMaster:isOpen() then
					EmotesMenuMaster:close()
				else
					if self.chatWasHidden then
						ChatSelector:SetVisible(true)
						self.chatWasHidden = false
					end
					EmotesMenuMaster:open()
				end
				self.props.setMoreMenuOpen(false)
				if self.analytics then
					self.analytics:onEmotesActivated(EmotesMenuMaster:isOpen())
				end
			end,
		})
		hasOptions = true
	end

	local backpackEnabled = nil
	if FFlagMountCoreGuiBackpack then
		backpackEnabled = self.state.mountBackpack
	else
		backpackEnabled = self.props.backpackEnabled
	end

	if backpackEnabled then
		local backpackIcon = BACKPACK_ICON_ON
		if not self.props.backpackOpen then
			backpackIcon = BACKPACK_ICON_OFF
		end

		table.insert(menuOptions, {
			icon = backpackIcon,
			text = RobloxTranslator:FormatByKey("CoreScripts.TopBar.Inventory"),
			keyCodeLabel = isUsingKeyBoard and Enum.KeyCode.Backquote or nil,
			onActivated = function()
				BackpackModule:OpenClose()
				self.props.setMoreMenuOpen(false)
				if self.analytics then
					self.analytics:onInventoryActivated(BackpackModule.IsOpen)
				end
			end,
		})
		hasOptions = true
	end

	local screenSize = if FFlagTopBarSignalizeScreenSize then self.state.screenSize else self.props.screenSize

	local moreMenuSize = UDim2.new(0, MENU_DEFAULT_SIZE + CONTEXT_MENU_DEFAULT_PADDING * 2, 0, screenSize.Y)
	if screenSize.X < MENU_FULLSCREEN_THRESHOLD then
		moreMenuSize = UDim2.new(0, screenSize.X - (MENU_EXTRA_PADDING * 2), 0, screenSize.Y)
	end

	local moreIcon = MORE_ICON_ON
	if not self.props.moreMenuOpen then
		moreIcon = MORE_ICON_OFF
	end

	local moreButtonVisible = not TenFootInterface:IsEnabled()
		and self.props.topBarEnabled
		and hasOptions
		and not VRService.VREnabled

	local onAreaChanged = function(rbx)
		if moreButtonVisible and rbx then
			if FFlagTopBarSignalizeKeepOutAreas then
				self.keepOutAreasStore.setKeepOutArea(Constants.MoreMenuKeepOutAreaId, rbx.AbsolutePosition, rbx.AbsoluteSize)
			else
				self.props.setKeepOutArea(Constants.MoreMenuKeepOutAreaId, rbx.AbsolutePosition, rbx.AbsoluteSize)
			end
		else
			if FFlagTopBarSignalizeKeepOutAreas then
				self.keepOutAreasStore.removeKeepOutArea(Constants.MoreMenuKeepOutAreaId)
			else
				self.props.removeKeepOutArea(Constants.MoreMenuKeepOutAreaId)
			end
		end
	end

	if FFlagEnableChromeBackwardsSignalAPI then
		if self.rootRef.current then
			onAreaChanged(self.rootRef.current)
		end
	end

	return Roact.createElement("Frame", {
		Visible = moreButtonVisible,
		BackgroundTransparency = 1,
		Size = UDim2.new(0, MORE_BUTTON_SIZE, 1, 0),
		LayoutOrder = self.props.layoutOrder,
		[Roact.Change.AbsoluteSize] = if FFlagEnableChromeBackwardsSignalAPI then onAreaChanged else nil,
		[Roact.Change.AbsolutePosition] = if FFlagEnableChromeBackwardsSignalAPI then onAreaChanged else nil,
		[Roact.Ref] = self.rootRef,
	}, {
		OpenButton = Roact.createElement(IconButton, {
			icon = moreIcon,
			iconSize = ICON_SIZE,

			onActivated = self.moreButtonActivated,
		}),

		MoreMenuContainer = Roact.createElement("Frame", {
			ZIndex = 3,
			BackgroundTransparency = 1,

			Position = UDim2.new(1, CONTEXT_MENU_DEFAULT_PADDING, 0, 0),
			Size = moreMenuSize,
			AnchorPoint = Vector2.new(1, 0),
		}, {
			ContextualMenu = Roact.createElement(ContextualMenu, {
				buttonProps = menuOptions,

				open = self.props.moreMenuOpen,
				menuDirection = MenuDirection.Down,
				openPositionY = UDim.new(0, Constants.TopBarHeight * (if FFlagTopBarStyleUseDisplayUIScale then self.state.UiScale else 1) + MENU_GAP),

				background = style.Theme.BackgroundUIContrast,
				closeBackgroundVisible = false,
				screenSize = screenSize,

				onDismiss = function()
					self.props.setMoreMenuOpen(false)
					PlayerListMaster:SetMinimized(false)
				end,
			}),
		}),
		ShowTopBarListener = Roact.createElement(ExternalEventConnection, {
			event = VRHub.ShowTopBarChanged.Event,
			callback = function()
				self:setState({
					vrShowMenuIcon = VRService.VREnabled and VRHub.ShowTopBar and hasOptions,
				})
			end,
		}),
	})
end

function MoreMenu:render()
	return withStyle(function(style)
		return self:renderWithStyle(style)
	end)
end

function MoreMenu:updateActionBound()
	if self.props.moreMenuOpen then
		ContextActionService:BindCoreAction(ESCAPE_CLOSE_MENU_ACTION, function(actionName, inputState, inputObj)
			if inputState == Enum.UserInputState.Begin then
				self.props.setMoreMenuOpen(false)
				return Enum.ContextActionResult.Sink
			end
			return Enum.ContextActionResult.Pass
		end, false, Enum.KeyCode.Escape)

		self.boundAction = true
	elseif self.boundAction then
		ContextActionService:UnbindCoreAction(ESCAPE_CLOSE_MENU_ACTION)

		self.boundAction = false
	end
end

function MoreMenu:didUpdate(prevProps, prevState)
	if self.props.moreMenuOpen ~= prevProps.moreMenuOpen then
		PlayerListMaster:SetMinimized(self.props.moreMenuOpen)

		self:updateActionBound()


		local screenSize = if FFlagTopBarSignalizeScreenSize then self.state.screenSize else self.props.screenSize

		if screenSize.X < CHAT_HIDE_THRESHOLD then
			if self.props.moreMenuOpen and ChatSelector:GetVisibility() then
				self.chatWasHidden = true
				ChatSelector:SetVisible(false)
			elseif not self.props.moreMenuOpen and self.chatWasHidden then
				ChatSelector:SetVisible(true)
				self.chatWasHidden = false
			end
		end
	end
end

local function mapStateToProps(state)
	return {
		screenSize = if FFlagTopBarSignalizeScreenSize then nil else state.displayOptions.screenSize,
		moreMenuOpen = state.moreMenu.open,

		isSmallTouchDevice = state.displayOptions.isSmallTouchDevice,
		topBarEnabled = state.displayOptions.topbarEnabled,

		leaderboardEnabled = state.coreGuiEnabled[Enum.CoreGuiType.PlayerList],
		emotesEnabled = state.moreMenu.emotesEnabled and state.coreGuiEnabled[Enum.CoreGuiType.EmotesMenu],
		backpackEnabled = if FFlagMountCoreGuiBackpack then nil else state.coreGuiEnabled[Enum.CoreGuiType.Backpack],

		leaderboardOpen = state.moreMenu.leaderboardOpen,
		backpackOpen = state.moreMenu.backpackOpen,
		emotesOpen = state.moreMenu.emotesOpen,

		inputType = if FFlagRemoveTopBarInputTypeRodux then nil else state.displayOptions.inputType,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		setMoreMenuOpen = function(open)
			return dispatch(SetMoreMenuOpen(open))
		end,
		setKeepOutArea = if FFlagTopBarSignalizeKeepOutAreas 
			then nil 
			else function(id, position, size)
				return dispatch(SetKeepOutArea(id, position, size))
			end,
		removeKeepOutArea = if FFlagTopBarSignalizeKeepOutAreas 
			then nil 
			else function(id)
				return dispatch(RemoveKeepOutArea(id))
			end,
	}
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, mapDispatchToProps)(MoreMenu)
