--!nonstrict
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local VRService = game:GetService("VRService")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.UIBlox)
local Analytics = require(CorePackages.Workspace.Packages.Analytics).Analytics

local ImageSetButton = UIBlox.Core.ImageSet.Button
local Images = UIBlox.App.ImageSet.Images

local Presentation = script.Parent.Presentation
local MenuIcon = require(Presentation.MenuIcon)
local BackIcon = require(Presentation.BackIcon)
local ChatIcon = require(Presentation.ChatIcon)
local MoreMenu = require(Presentation.MoreMenu)
local HealthBar = require(Presentation.HealthBar)
local HurtOverlay = require(Presentation.HurtOverlay)
local GamepadMenu = require(Presentation.GamepadMenu)
local HeadsetMenu = require(Presentation.HeadsetMenu)
local VoiceBetaBadge = require(Presentation.VoiceBetaBadge)
local BadgeOver13 = require(Presentation.BadgeOver13)

local Chrome = script.Parent.Parent.Parent.Chrome

local ChromeEnabled = require(Chrome.Enabled)
local Unibar
if ChromeEnabled() then
	Unibar = require(Chrome.Unibar)
end

local Connection = require(script.Parent.Connection)

local TopBar = Presentation.Parent.Parent
local Constants = require(TopBar.Constants)
local SetScreenSize = require(TopBar.Actions.SetScreenSize)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local TenFootInterface = require(RobloxGui.Modules.TenFootInterface)
local isNewInGameMenuEnabled = require(RobloxGui.Modules.isNewInGameMenuEnabled)
local GetFFlagBetaBadge = require(RobloxGui.Modules.Flags.GetFFlagBetaBadge)
local FFlagTopBarUseNewBadge = game:DefineFastFlag("TopBarUseNewBadge", false)
local GetFFlagEnableTeleportBackButton = require(RobloxGui.Modules.Flags.GetFFlagEnableTeleportBackButton)
local FFlagVRMoveVoiceIndicatorToBottomBar = require(RobloxGui.Modules.Flags.FFlagVRMoveVoiceIndicatorToBottomBar)

local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default
local VoiceStateContext = require(RobloxGui.Modules.VoiceChat.VoiceStateContext)

-- vr bottom bar
local VRBottomBar = require(RobloxGui.Modules.VR.VRBottomBar.VRBottomBar)

local CLOSE_MENU_ICON_SIZE = 30

local function selectMenuOpen(state)
	return state.displayOptions.menuOpen or state.displayOptions.inspectMenuOpen
end

local TopBarApp = Roact.PureComponent:extend("TopBarApp")

TopBarApp.validateProps = t.strictInterface({
	menuOpen = t.optional(t.boolean),
	inspectMenuOpen = t.optional(t.boolean),

	setScreenSize = t.callback,
})

function TopBarApp:render()
	local screenSideOffset = Constants.ScreenSideOffset
	local topBarHeight = Constants.TopBarHeight
	if TenFootInterface:IsEnabled() then
		screenSideOffset = Constants.ScreenSideOffsetTenFoot
		topBarHeight = Constants.TopBarHeightTenFoot
	end

	local isTopBarVisible = not (self.props.menuOpen or self.props.inspectMenuOpen)
	local topBarFramePosition = UDim2.new(0, 0, 0, 0)
	local topBarLeftFramePosition = UDim2.new(0, screenSideOffset, 0, 0)
	local topBarRightFramePosition = UDim2.new(1, -screenSideOffset, 0, 0)
	local closeMenuButtonPosition = UDim2.new(0, 0, 0.5, 0)

	local bottomBar = if FFlagVRMoveVoiceIndicatorToBottomBar then
		Roact.createElement(VoiceStateContext.Provider, {}, {
			VRBottomBar = VoiceStateContext.withVoiceState(function(voiceContext)
				return Roact.createElement(VRBottomBar, {
					voiceChatServiceManager = VoiceChatServiceManager,
					voiceEnabled = voiceContext.voiceEnabled,
					voiceState = voiceContext.voiceState,
				})
			end)
		})
	else
		Roact.createElement(VRBottomBar)

	return Roact.createElement("ScreenGui", {
		IgnoreGuiInset = true,
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
		AutoLocalize = false,
		DisplayOrder = 6,

		[Roact.Change.AbsoluteSize] = function(rbx)
			self.props.setScreenSize(rbx.AbsoluteSize)
		end,
	}, {
		Connection = Roact.createElement(Connection),
		GamepadMenu = Roact.createElement(GamepadMenu),
		HeadsetMenu = Roact.createElement(HeadsetMenu),
		VRBottomBar = VRService.VREnabled and bottomBar or nil,

		FullScreenFrame = Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 1, 0),
			Visible = isTopBarVisible,
		}, {
			HurtOverlay = Roact.createElement(HurtOverlay),
		}),

		--Remove with isNewInGameMenuEnabled
		LegacyCloseMenu = not isNewInGameMenuEnabled() and Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Position = UDim2.new(0, screenSideOffset, 0, 0),
			Size = UDim2.new(1, 0, 0, topBarHeight),
			Visible = self.props.menuOpen,
		}, {
			CloseMenuButton = Roact.createElement(ImageSetButton, {
				Visible = not TenFootInterface:IsEnabled(),
				BackgroundTransparency = 1,
				Position = closeMenuButtonPosition,
				AnchorPoint = Vector2.new(0, 0.5),
				Size = UDim2.new(0, CLOSE_MENU_ICON_SIZE, 0, CLOSE_MENU_ICON_SIZE),
				Image = Images["icons/controls/close-ingame"],

				[Roact.Event.Activated] = function()
					local SettingsHub = require(RobloxGui.Modules.Settings.SettingsHub)
					SettingsHub:ToggleVisibility()
				end,
			}),
		}),

		TopBarFrame = Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, topBarHeight),
			Visible = isTopBarVisible,
			Position = topBarFramePosition,
		}, {
			LeftFrame = not TenFootInterface:IsEnabled() and Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.new(0.5, -screenSideOffset, 1, 0),
				Position = topBarLeftFramePosition,
			}, {
				Layout = Roact.createElement("UIListLayout", {
					Padding = UDim.new(0, Constants.Padding),
					FillDirection = Enum.FillDirection.Horizontal,
					HorizontalAlignment = Enum.HorizontalAlignment.Left,
					VerticalAlignment = if FFlagTopBarUseNewBadge
						then Enum.VerticalAlignment.Center
						else Enum.VerticalAlignment.Top,
					SortOrder = Enum.SortOrder.LayoutOrder,
				}),

				MenuIcon = Roact.createElement(MenuIcon, {
					layoutOrder = 1,
				}),

				BackIcon = GetFFlagEnableTeleportBackButton() and Roact.createElement(BackIcon, {
					layoutOrder = 2,
				}) or nil,

				ChatIcon = Roact.createElement(ChatIcon, {
					layoutOrder = 3,
				}),

				BadgeOver13 = if FFlagTopBarUseNewBadge
					then Roact.createElement(BadgeOver13, {
						layoutOrder = 4,
						analytics = Analytics.new(),
						player = Players.LocalPlayer,
						voiceChatServiceManager = VoiceChatServiceManager,
						VRService = game:GetService("VRService"),
					})
					else nil,

				VoiceBetaBadge = if GetFFlagBetaBadge()
					then Roact.createElement(VoiceBetaBadge, {
						layoutOrder = 4,
						Analytics = Analytics.new(),
					})
					else nil,
			}),

			RightFrame = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.new(0.5, -screenSideOffset, 1, 0),
				Position = topBarRightFramePosition,
				AnchorPoint = Vector2.new(1, 0),
			}, {
				Layout = Roact.createElement("UIListLayout", {
					Padding = UDim.new(0, Constants.Padding),
					FillDirection = Enum.FillDirection.Horizontal,
					HorizontalAlignment = Enum.HorizontalAlignment.Right,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
				}),

				HealthBar = Roact.createElement(HealthBar, {
					layoutOrder = 1,
				}),

				MoreMenu = not TenFootInterface:IsEnabled() and Roact.createElement(MoreMenu, {
					layoutOrder = 2,
				}),

				UnibarHolder = Unibar and Roact.createElement("Frame", {
					LayoutOrder = 1,
					Size = UDim2.new(0, 0, 1, 0),
					AutomaticSize = Enum.AutomaticSize.X,
					BorderSizePixel = 0,
					BackgroundTransparency = 1,
				}, {
					Unibar = Roact.createElement(Unibar, {
						layoutOrder = 1,
					}),
				}) or nil
			}),
		}),
	})
end

local function mapStateToProps(state)
	local inspectMenuOpen = state.displayOptions.inspectMenuOpen

	return {
		menuOpen = state.displayOptions.menuOpen,
		inspectMenuOpen = inspectMenuOpen,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		setScreenSize = function(screenSize)
			return dispatch(SetScreenSize(screenSize))
		end,
	}
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, mapDispatchToProps)(TopBarApp)
