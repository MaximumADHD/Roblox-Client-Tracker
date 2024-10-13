local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local ContextActionService = game:GetService("ContextActionService")
local VRService = game:GetService("VRService")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.UIBlox)

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

local FFlagEnableTopBarAnalytics = require(TopBar.Flags.GetFFlagEnableTopBarAnalytics)()
local FFlagEnableChromeBackwardsSignalAPI = require(TopBar.Flags.GetFFlagEnableChromeBackwardsSignalAPI)()

local Constants = require(TopBar.Constants)
local InputType = Constants.InputType

local IconButton = require(script.Parent.IconButton)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local TenFootInterface = require(RobloxGui.Modules.TenFootInterface)
local VRHub = require(RobloxGui.Modules.VR.VRHub)

local EmotesMenuMaster = require(RobloxGui.Modules.EmotesMenu.EmotesMenuMaster)
local BackpackModule = require(RobloxGui.Modules.BackpackScript)
local ChatSelector = require(RobloxGui.Modules.ChatSelector)
local PlayerListMaster = require(RobloxGui.Modules.PlayerList.PlayerListManager)

local EmotesConstants = require(RobloxGui.Modules.EmotesMenu.Constants)

local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)

local ExternalEventConnection = require(CorePackages.Workspace.Packages.RoactUtils).ExternalEventConnection

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
	screenSize = t.Vector2,
	isSmallTouchDevice = t.boolean,

	topBarEnabled = t.boolean,
	leaderboardEnabled = t.boolean,
	emotesEnabled = t.boolean,
	backpackEnabled = t.boolean,

	leaderboardOpen = t.boolean,
	backpackOpen = t.boolean,
	emotesOpen = t.boolean,

	inputType = t.string,
	setKeepOutArea = t.callback,
	removeKeepOutArea = t.callback,
})

function MoreMenu:init()
	self.rootRef = Roact.createRef()
	if FFlagEnableTopBarAnalytics then
		self.analytics = TopBarAnalytics.default
	end

	self:setState({
		vrShowMenuIcon = false,
	})

	self.chatWasHidden = false

	self.boundAction = false

	self.moreButtonActivated = function()
		self.props.setMoreMenuOpen(not self.props.moreMenuOpen)
		if self.analytics then
			self.analytics:onMoreMenuActivated()
		end
	end
end

function MoreMenu:renderWithStyle(style)
	local menuOptions = {}
	local hasOptions = false

	local isUsingKeyBoard = self.props.inputType == InputType.MouseAndKeyBoard

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

	if self.props.backpackEnabled then
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

	local moreMenuSize = UDim2.new(0, MENU_DEFAULT_SIZE + CONTEXT_MENU_DEFAULT_PADDING * 2, 0, self.props.screenSize.Y)
	if self.props.screenSize.X < MENU_FULLSCREEN_THRESHOLD then
		moreMenuSize =  UDim2.new(0, self.props.screenSize.X - (MENU_EXTRA_PADDING * 2), 0, self.props.screenSize.Y)
	end

	local moreIcon = MORE_ICON_ON
	if not self.props.moreMenuOpen then
		moreIcon = MORE_ICON_OFF
	end

	local moreButtonVisible = not TenFootInterface:IsEnabled() and self.props.topBarEnabled and hasOptions and not VRService.VREnabled

	local onAreaChanged = function(rbx)
		if moreButtonVisible and rbx then
			self.props.setKeepOutArea(Constants.MoreMenuKeepOutAreaId, rbx.AbsolutePosition, rbx.AbsoluteSize)
		else
			self.props.removeKeepOutArea(Constants.MoreMenuKeepOutAreaId)
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
				openPositionY = UDim.new(0, Constants.TopBarHeight + MENU_GAP),

				background = style.Theme.BackgroundUIContrast,
				closeBackgroundVisible = false,
				screenSize = self.props.screenSize,

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
		})
	})
end

function MoreMenu:render()
	return withStyle(function(style)
		return self:renderWithStyle(style)
	end)
end

function MoreMenu:updateActionBound()
	if self.props.moreMenuOpen then
		ContextActionService:BindCoreAction(
			ESCAPE_CLOSE_MENU_ACTION,
			function(actionName, inputState, inputObj)
				if inputState == Enum.UserInputState.Begin then
					self.props.setMoreMenuOpen(false)
					return Enum.ContextActionResult.Sink
				end
				return Enum.ContextActionResult.Pass
			end,
			false, Enum.KeyCode.Escape
		)

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

		if self.props.screenSize.X < CHAT_HIDE_THRESHOLD then
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
		screenSize = state.displayOptions.screenSize,
		moreMenuOpen = state.moreMenu.open,

		isSmallTouchDevice = state.displayOptions.isSmallTouchDevice,
		topBarEnabled = state.displayOptions.topbarEnabled,

		leaderboardEnabled = state.coreGuiEnabled[Enum.CoreGuiType.PlayerList],
		emotesEnabled = state.moreMenu.emotesEnabled and state.coreGuiEnabled[Enum.CoreGuiType.EmotesMenu],
		backpackEnabled = state.coreGuiEnabled[Enum.CoreGuiType.Backpack],

		leaderboardOpen = state.moreMenu.leaderboardOpen,
		backpackOpen = state.moreMenu.backpackOpen,
		emotesOpen = state.moreMenu.emotesOpen,

		inputType = state.displayOptions.inputType,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		setMoreMenuOpen = function(open)
			return dispatch(SetMoreMenuOpen(open))
		end,
		setKeepOutArea = function(id, position, size)
			return dispatch(SetKeepOutArea(id, position, size))
		end,
		removeKeepOutArea = function(id)
			return dispatch(RemoveKeepOutArea(id))
		end,
	}
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, mapDispatchToProps)(MoreMenu)
