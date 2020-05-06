local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local ContextActionService = game:GetService("ContextActionService")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.UIBlox)

local ImageSetButton = UIBlox.Core.ImageSet.Button
local ImageSetLabel = UIBlox.Core.ImageSet.Label
local Images = UIBlox.App.ImageSet.Images
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
local FFlagEmotesMenuNewKeybinds = require(RobloxGui.Modules.Flags.FFlagEmotesMenuNewKeybinds)
local FFlagEmotesMenuRemoveOpenKeybinds = settings():GetFFlag("EmotesMenuRemoveOpenKeybinds")

local FFlagTopBarUseNewIcons = require(RobloxGui.Modules.Flags.FFlagTopBarUseNewIcons)
local FFlagMinimizePlayerListWhenTopBarOpen = require(RobloxGui.Modules.Flags.FFlagMinimizePlayerListWhenTopBarOpen)
local FFlagTopBarHightightIconsOnHover = require(RobloxGui.Modules.Flags.FFlagTopBarHightightIconsOnHover)

local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)

local FFlagUseRoactPlayerList = settings():GetFFlag("UseRoactPlayerList3")

local FFlagTopBarEscapeCloseMenu = game:DefineFastFlag("TopBarEscapeCloseMenu", false)

local MORE_BUTTON_SIZE = FFlagTopBarUseNewIcons and 32 or 36
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

	if FFlagTopBarHightightIconsOnHover then
		self.moreButtonActivated = function()
			self.props.setMoreMenuOpen(not self.props.moreMenuOpen)
		end
	end
end

function MoreMenu:render()
	local menuOptions = {}
	local hasOptions = false

	local isUsingKeyBoard = self.props.inputType == InputType.MouseAndKeyBoard

	if self.props.leaderboardEnabled and not self.props.isSmallTouchDevice then
		local leaderboardIcon
		if FFlagTopBarUseNewIcons then
			leaderboardIcon = "rbxasset://textures/ui/TopBar/leaderboardOn.png"
			if not self.props.leaderboardOpen then
				leaderboardIcon = "rbxasset://textures/ui/TopBar/leaderboardOff.png"
			end
		else
			leaderboardIcon = Images["icons/controls/leaderboardOn"]
			if not self.props.leaderboardOpen then
				leaderboardIcon = Images["icons/controls/leaderboardOff"]
			end
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
		local emotesIcon
		if FFlagTopBarUseNewIcons then
			emotesIcon = "rbxasset://textures/ui/TopBar/emotesOn.png"
			if not self.props.emotesOpen then
				emotesIcon = "rbxasset://textures/ui/TopBar/emotesOff.png"
			end
		else
			emotesIcon = Images["icons/controls/emoteOn"]
			if not self.props.emotesOpen then
				emotesIcon = Images["icons/controls/emoteOff"]
			end
		end

		local emotesKeybind = (not FFlagEmotesMenuRemoveOpenKeybinds) and EmotesConstants.EmoteMenuOpenKey_OLD or nil
		if FFlagEmotesMenuNewKeybinds then
			emotesKeybind = EmotesConstants.EmoteMenuOpenKey
		end

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
		local backpackIcon
		if FFlagTopBarUseNewIcons then
			backpackIcon =  "rbxasset://textures/ui/TopBar/inventoryOn.png"
			if not self.props.backpackOpen then
				backpackIcon = "rbxasset://textures/ui/TopBar/inventoryOff.png"
			end
		else
			backpackIcon = Images["icons/menu/inventoryOn"]
			if not self.props.backpackOpen then
				backpackIcon = Images["icons/menu/inventoryOff"]
			end
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
		Size = FFlagTopBarUseNewIcons and UDim2.new(0, MORE_BUTTON_SIZE, 1, 0)
			or UDim2.new(0, MORE_BUTTON_SIZE, 0, MORE_BUTTON_SIZE),
		LayoutOrder = self.props.layoutOrder,
	}, {
		OpenButtonShadow = (not FFlagTopBarUseNewIcons) and Roact.createElement(ImageSetLabel, {
			ZIndex = 1,
			Image = Images["component_assets/dropshadow_more"],
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
		}),

		OpenButton = FFlagTopBarUseNewIcons and
			(FFlagTopBarHightightIconsOnHover and Roact.createElement(IconButton, {
			icon = moreIcon,
			iconSize = ICON_SIZE,

			onActivated = self.moreButtonActivated,
		}) or Roact.createElement(ImageSetButton, {
			ZIndex = 1,
			BackgroundTransparency = 1,
			Image = "rbxasset://textures/ui/TopBar/iconBase.png",
			Size = UDim2.fromOffset(MORE_BUTTON_SIZE, MORE_BUTTON_SIZE),
			Position = UDim2.fromScale(0, 1),
			AnchorPoint = Vector2.new(0, 1),

			[Roact.Event.Activated] = function()
				self.props.setMoreMenuOpen(not self.props.moreMenuOpen)
			end,
		}, {
			Icon = Roact.createElement(ImageSetLabel, {
				BackgroundTransparency = 1,
				Image = moreIcon,
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.fromScale(0.5, 0.5),
				Size = UDim2.fromOffset(ICON_SIZE, ICON_SIZE),
			})
		})) or Roact.createElement(ImageSetButton, {
			ZIndex = 2,
			Image = Images["icons/common/more"],
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			ImageTransparency = self.props.moreMenuOpen and 0.5 or 0,

			[Roact.Event.Activated] = function()
				self.props.setMoreMenuOpen(not self.props.moreMenuOpen)
			end,
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
				openPositionY = FFlagTopBarUseNewIcons and UDim.new(0, Constants.TopBarHeight + MENU_GAP)
					or UDim.new(0, MORE_BUTTON_SIZE + MENU_GAP),

				closeBackgroundVisible = false,
				screenSize = self.props.screenSize,

				onDismiss = function()
					self.props.setMoreMenuOpen(false)
					if FFlagMinimizePlayerListWhenTopBarOpen then
						local PlayerListMaster = require(RobloxGui.Modules.PlayerList.PlayerListManager)
						PlayerListMaster:SetMinimized(false)
					end
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
			if FFlagMinimizePlayerListWhenTopBarOpen then
				PlayerListMaster:SetMinimized(self.props.moreMenuOpen)
			else
				PlayerListMaster:HideTemp("TopBar", self.props.moreMenuOpen)
			end
		else
			local PlayerlistModule = require(RobloxGui.Modules.PlayerlistModule)
			PlayerlistModule:HideTemp("TopBar", self.props.moreMenuOpen)
		end

		if FFlagTopBarEscapeCloseMenu then
			self:updateActionBound()
		end

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
