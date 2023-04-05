local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local GuiService = game:GetService("GuiService")
local VRService = game:GetService("VRService")
local GamepadService = game:GetService("GamepadService")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.UIBlox)
local withTooltip = UIBlox.App.Dialog.TooltipV2.withTooltip
local TooltipOrientation = UIBlox.App.Dialog.Enum.TooltipOrientation

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local TenFootInterface = require(RobloxGui.Modules.TenFootInterface)
local isNewInGameMenuEnabled = require(RobloxGui.Modules.isNewInGameMenuEnabled)
local InGameMenuConstants = require(RobloxGui.Modules.InGameMenuConstants)
local EnableInGameMenuV3 = require(RobloxGui.Modules.InGameMenuV3.Flags.GetFFlagEnableInGameMenuV3)
local PlayerListMaster = require(RobloxGui.Modules.PlayerList.PlayerListManager)
local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)

local VRHub = require(RobloxGui.Modules.VR.VRHub)

local isSubjectToDesktopPolicies = require(RobloxGui.Modules.InGameMenu.isSubjectToDesktopPolicies)

local ExternalEventConnection = require(CorePackages.Workspace.Packages.RoactUtils).ExternalEventConnection

local Components = script.Parent.Parent
local Actions = Components.Parent.Actions
local SetGamepadMenuOpen = require(Actions.SetGamepadMenuOpen)

local InGameMenu
if isNewInGameMenuEnabled() then
	InGameMenu = require(RobloxGui.Modules.InGameMenuInit)
end

local IconButton = require(script.Parent.IconButton)

local MenuIcon = Roact.PureComponent:extend("MenuIcon")

local BACKGROUND_SIZE = 32
local ICON_SIZE = 24
local DEFAULT_DELAY_TIME = 0.4

local MENU_HOTKEYS = { Enum.KeyCode.Escape }

local EngineFeatureEnableVRUpdate3 = game:GetEngineFeature("EnableVRUpdate3")
local FFlagAvatarChatCoreScriptSupport = require(RobloxGui.Modules.Flags.FFlagAvatarChatCoreScriptSupport)
local GetFFlagVoiceRecordingIndicatorsEnabled = require(RobloxGui.Modules.Flags.GetFFlagVoiceRecordingIndicatorsEnabled)

MenuIcon.validateProps = t.strictInterface({
	layoutOrder = t.integer,
	setGamepadMenuOpen = t.callback,
})

function MenuIcon:init()
	self:setState({
		vrShowMenuIcon = VRService.VREnabled and (VRHub.ShowTopBar or GamepadService.GamepadCursorEnabled) and not EngineFeatureEnableVRUpdate3,
		showTooltip = false,
		isHovering = false,
		enableFlashingDot = false
	})

	if GetFFlagVoiceRecordingIndicatorsEnabled() then
		-- We spawn a new coroutine so that this doesn't block the UI from loading.
		task.spawn(function()
			self:setState({
				enableFlashingDot = true
			})
		end)
	end

	self.menuIconActivated = function()
		self:setState({
			showTooltip = false,
			isHovering = false,
		})

		if VRService.VREnabled and (VRHub.ShowTopBar or GamepadService.GamepadCursorEnabled) then
			-- in the new VR System, the menu icon opens the gamepad menu instead
			if EnableInGameMenuV3() then
				InGameMenu.openInGameMenu("Players")
			else
				InGameMenu.openInGameMenu(InGameMenuConstants.MainPagePageKey)
			end
		else
			if isNewInGameMenuEnabled() then
				if EnableInGameMenuV3() then
					InGameMenu.openInGameMenu("Players")
					if PlayerListMaster:GetSetVisible() then
						PlayerListMaster:HideTemp("InGameMenuV3", true)
						if self.menuClosedPlayerListConnection then
							self.menuClosedPlayerListConnection:Disconnect()
							self.menuClosedPlayerListConnection = nil
						end
						self.menuClosedPlayerListConnection = GuiService.MenuClosed:Connect(function()
							PlayerListMaster:HideTemp("InGameMenuV3", false)
							if self.menuClosedPlayerListConnection then
								self.menuClosedPlayerListConnection:Disconnect()
								self.menuClosedPlayerListConnection = nil
							end
						end)
					end
				else
					InGameMenu.openInGameMenu(InGameMenuConstants.MainPagePageKey)
				end
			else
				local SettingsHub = require(RobloxGui.Modules.Settings.SettingsHub)
				SettingsHub:ToggleVisibility(InGameMenuConstants.AnalyticsMenuOpenTypes.TopbarButton)
			end
		end
	end
	self.menuIconOnHover = function()
		local v3Menu = isNewInGameMenuEnabled() and EnableInGameMenuV3()
		if v3Menu and not InGameMenu.getOpen() then
			self:setState({
				isHovering = true,
			})

			delay(DEFAULT_DELAY_TIME, function()
				if self.state.isHovering then
					self:setState({
						showTooltip = true,
					})
				end
			end)
		end

		if isNewInGameMenuEnabled() and not EnableInGameMenuV3()  then
			-- Disable Menu Icon hovering if not on DUA
			if not isSubjectToDesktopPolicies() then
				return
			end
			InGameMenu.openInGameMenu(InGameMenuConstants.InitalPageKey)
			InGameMenu.setMenuIconTooltipOpen(false)
		end
	end

	self.menuIconOnHoverEnd = function()
		self:setState({
			showTooltip = false,
			isHovering = false,
		})
	end

	self.showTopBarCallback = function()
		local vrShowMenuIcon = VRService.VREnabled and (VRHub.ShowTopBar or GamepadService.GamepadCursorEnabled) and not EngineFeatureEnableVRUpdate3
		if self.state.vrShowMenuIcon ~= vrShowMenuIcon then
			self:setState({
				vrShowMenuIcon = vrShowMenuIcon,
			})
		end
	end
end

function MenuIcon:render()

	local v3Menu = isNewInGameMenuEnabled() and EnableInGameMenuV3()
	local visible = (not VRService.VREnabled or self.state.vrShowMenuIcon)

	if v3Menu then
		local tooltipText = "Roblox Menu"
		pcall(function()
			tooltipText = RobloxTranslator:FormatByKey("CoreScripts.TopBar.RobloxMenu")
	   	end)
		local tooltipProps = {
			textAlignment = Enum.TextXAlignment.Center,
			headerText = tooltipText,
			hotkeyCodes = MENU_HOTKEYS,
		}
		local tooltipOptions = {
			active = self.state.showTooltip,
			guiTarget = CoreGui,
			preferredOrientation = TooltipOrientation.Bottom,
			DisplayOrder = InGameMenuConstants.DisplayOrder.Tooltips,
		}

		return withTooltip(tooltipProps, tooltipOptions, function(triggerPointChanged)
			return Roact.createElement("Frame", {
				Visible = visible,
				BackgroundTransparency = 1,
				Size = UDim2.new(0, BACKGROUND_SIZE, 1, 0),
				LayoutOrder = self.props.layoutOrder,

				[Roact.Change.AbsoluteSize] = triggerPointChanged,
				[Roact.Change.AbsolutePosition] = triggerPointChanged,
			}, {
				ExtendedHitArea = Roact.createElement("ImageButton", {
					Size = UDim2.new(1, 20, 1, 8),
					Position = UDim2.new(0, -16, 0, -4),
					BackgroundTransparency = 1,
					[Roact.Event.Activated] = self.menuIconActivated,
				}),
				Background = Roact.createElement(IconButton, {
						icon = "rbxasset://textures/ui/TopBar/coloredlogo.png",
						iconSize = ICON_SIZE,

						onActivated = self.menuIconActivated,
						onHover = self.menuIconOnHover,
						onHoverEnd = self.menuIconOnHoverEnd,
						enableFlashingDot = FFlagAvatarChatCoreScriptSupport,
				}),
				ShowTopBarListener = GamepadService and Roact.createElement(ExternalEventConnection, {
					event = VRHub.ShowTopBarChanged.Event or GamepadService:GetPropertyChangedSignal("GamepadCursorEnabled"),
					callback = self.showTopBarCallback,
				})
			})
		end)
	else
		return Roact.createElement("Frame", {
			Visible = visible,
			BackgroundTransparency = 1,
			Size = UDim2.new(0, BACKGROUND_SIZE, 1, 0),
			LayoutOrder = self.props.layoutOrder
		}, {
			ExtendedHitArea = v3Menu and Roact.createElement("ImageButton", {
				Size = UDim2.new(1, 20, 1, 8),
				Position = UDim2.new(0, -16, 0, -4),
				BackgroundTransparency = 1,
				[Roact.Event.Activated] = self.menuIconActivated,
		}) or nil,
		Background = Roact.createElement(IconButton, {
			icon = "rbxasset://textures/ui/TopBar/coloredlogo.png",
			iconSize = ICON_SIZE,

			onActivated = self.menuIconActivated,
			onHover = self.menuIconOnHover,
			enableFlashingDot = self.state.enableFlashingDot,
		}),
		ShowTopBarListener = GamepadService and Roact.createElement(ExternalEventConnection, {
			event = VRHub.ShowTopBarChanged.Event or GamepadService:GetPropertyChangedSignal("GamepadCursorEnabled"),
			callback = self.showTopBarCallback,
		})
	})
	end
end

function MenuIcon:willUnmount()
	if isNewInGameMenuEnabled() and EnableInGameMenuV3() then
		if self.menuClosedPlayerListConnection then
			self.menuClosedPlayerListConnection:Disconnect()
			self.menuClosedPlayerListConnection = nil
		end
	end
end

local function mapDispatchToProps(dispatch)
	return {
		setGamepadMenuOpen = function(open)
			return dispatch(SetGamepadMenuOpen(open))
		end,
	}
end

return RoactRodux.UNSTABLE_connect2(nil, mapDispatchToProps)(MenuIcon)
