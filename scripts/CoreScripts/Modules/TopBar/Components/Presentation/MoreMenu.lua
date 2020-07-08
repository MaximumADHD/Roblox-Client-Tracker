local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local ContextActionService = game:GetService("ContextActionService")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.UIBlox)

local OverlayContextualMenu = UIBlox.App.Menu.OverlayContextualMenu
local MenuDirection = UIBlox.App.Menu.MenuDirection

local Components = script.Parent.Parent
local TopBar = Components.Parent

local Actions = TopBar.Actions
local SetMoreMenuOpen = require(Actions.SetMoreMenuOpen)

local Constants = require(TopBar.Constants)
local InputType = Constants.InputType

local IconButton = require(script.Parent.IconButton)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local TenFootInterface = require(RobloxGui.Modules.TenFootInterface)

local EmotesMenuMaster = require(RobloxGui.Modules.EmotesMenu.EmotesMenuMaster)
local BackpackModule = require(RobloxGui.Modules.BackpackScript)
local ChatSelector = require(RobloxGui.Modules.ChatSelector)

local EmotesConstants = require(RobloxGui.Modules.EmotesMenu.Constants)

local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)

local FFlagUseRoactPlayerList = settings():GetFFlag("UseRoactPlayerList3")

local MORE_BUTTON_SIZE = 32
local ICON_SIZE = 24
local MENU_GAP = 12

local MENU_DEFAULT_SIZE = 300
local CONTEXT_MENU_DEFAULT_PADDING = 12
local MENU_EXTRA_PADDING = 12
local MENU_FULLSCREEN_THRESHOLD = 450

local CHAT_HIDE_THRESHOLD = 600

local ESCAPE_CLOSE_MENU_ACTION = "CloseMoreMenuAction"

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
})

function MoreMenu:init()
	self.chatWasHidden = false

	self.boundAction = false

	self.moreButtonActivated = function()
		self.props.setMoreMenuOpen(not self.props.moreMenuOpen)
	end
end

function MoreMenu:render()
	local menuOptions = {}
	local hasOptions = false

	local isUsingKeyBoard = self.props.inputType == InputType.MouseAndKeyBoard

	if self.props.leaderboardEnabled and not self.props.isSmallTouchDevice then
		local leaderboardIcon = "rbxasset://textures/ui/TopBar/leaderboardOn.png"
		if not self.props.leaderboardOpen then
			leaderboardIcon = "rbxasset://textures/ui/TopBar/leaderboardOff.png"
		end

		table.insert(menuOptions, {
			icon = leaderboardIcon,
			text = RobloxTranslator:FormatByKey("CoreScripts.TopBar.Leaderboard"),
			keyCodeLabel = isUsingKeyBoard and Enum.KeyCode.Tab or nil,
			onActivated = function()
				if FFlagUseRoactPlayerList then
					--TODO: Move to top of script when removing FFlagUseRoactPlayerList
					local PlayerListMaster = require(RobloxGui.Modules.PlayerList.PlayerListManager)
					PlayerListMaster:SetVisibility(not PlayerListMaster:GetSetVisible())
				else
					local PlayerlistModule = require(RobloxGui.Modules.PlayerlistModule)
					PlayerlistModule.ToggleVisibility()
				end
				self.props.setMoreMenuOpen(false)
			end,
		})
		hasOptions = true
	end

	if self.props.emotesEnabled then
		local emotesIcon = "rbxasset://textures/ui/TopBar/emotesOn.png"
		if not self.props.emotesOpen then
			emotesIcon = "rbxasset://textures/ui/TopBar/emotesOff.png"
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
					EmotesMenuMaster:open()
				end
				self.props.setMoreMenuOpen(false)
			end,
		})
		hasOptions = true
	end

	if self.props.backpackEnabled then
		local backpackIcon =  "rbxasset://textures/ui/TopBar/inventoryOn.png"
		if not self.props.backpackOpen then
			backpackIcon = "rbxasset://textures/ui/TopBar/inventoryOff.png"
		end

		table.insert(menuOptions, {
			icon = backpackIcon,
			text = RobloxTranslator:FormatByKey("CoreScripts.TopBar.Inventory"),
			keyCodeLabel = isUsingKeyBoard and Enum.KeyCode.Backquote or nil,
			onActivated = function()
				BackpackModule:OpenClose()
				self.props.setMoreMenuOpen(false)
			end,
		})
		hasOptions = true
	end

	local moreMenuSize = UDim2.new(0, MENU_DEFAULT_SIZE + CONTEXT_MENU_DEFAULT_PADDING * 2, 0, self.props.screenSize.Y)
	if self.props.screenSize.X < MENU_FULLSCREEN_THRESHOLD then
		moreMenuSize =  UDim2.new(0, self.props.screenSize.X - (MENU_EXTRA_PADDING * 2), 0, self.props.screenSize.Y)
	end

	local moreIcon = "rbxasset://textures/ui/TopBar/moreOn.png"
	if not self.props.moreMenuOpen then
		moreIcon = "rbxasset://textures/ui/TopBar/moreOff.png"
	end

	local moreButtonVisible = not TenFootInterface:IsEnabled() and self.props.topBarEnabled and hasOptions

	return Roact.createElement("Frame", {
		Visible = moreButtonVisible,
		BackgroundTransparency = 1,
		Size = UDim2.new(0, MORE_BUTTON_SIZE, 1, 0),
		LayoutOrder = self.props.layoutOrder,
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
			OverlayContextualMenu = Roact.createElement(OverlayContextualMenu, {
				buttonProps = menuOptions,

				open = self.props.moreMenuOpen,
				menuDirection = MenuDirection.Down,
				openPositionY = UDim.new(0, Constants.TopBarHeight + MENU_GAP),

				closeBackgroundVisible = false,
				screenSize = self.props.screenSize,

				onDismiss = function()
					self.props.setMoreMenuOpen(false)
					local PlayerListMaster = require(RobloxGui.Modules.PlayerList.PlayerListManager)
					PlayerListMaster:SetMinimized(false)
				end,
			}),
		}),
	})
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
		if FFlagUseRoactPlayerList then
			--TODO: Move to top of script when removing FFlagUseRoactPlayerList
			local PlayerListMaster = require(RobloxGui.Modules.PlayerList.PlayerListManager)
			PlayerListMaster:SetMinimized(self.props.moreMenuOpen)
		else
			local PlayerlistModule = require(RobloxGui.Modules.PlayerlistModule)
			PlayerlistModule:HideTemp("TopBar", self.props.moreMenuOpen)
		end

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
	}
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, mapDispatchToProps)(MoreMenu)
