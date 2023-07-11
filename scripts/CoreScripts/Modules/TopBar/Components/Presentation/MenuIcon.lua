local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local GuiService = game:GetService("GuiService")
local VRService = game:GetService("VRService")
local GamepadService = game:GetService("GamepadService")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.UIBlox)
local UIBloxImages = UIBlox.App.ImageSet.Images

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local TenFootInterface = require(RobloxGui.Modules.TenFootInterface)
local isNewInGameMenuEnabled = require(RobloxGui.Modules.isNewInGameMenuEnabled)
local InGameMenuConstants = require(RobloxGui.Modules.InGameMenuConstants)
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

local GetFFlagVoiceRecordingIndicatorsEnabled = require(RobloxGui.Modules.Flags.GetFFlagVoiceRecordingIndicatorsEnabled)
local ChromeEnabled = require(RobloxGui.Modules.Chrome.Enabled)

MenuIcon.validateProps = t.strictInterface({
	layoutOrder = t.integer,
	setGamepadMenuOpen = t.callback,
	iconScale = t.optional(t.number),
})

function MenuIcon:init()
	self:setState({
		vrShowMenuIcon = false,
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
			InGameMenu.openInGameMenu(InGameMenuConstants.MainPagePageKey)
		else
			if isNewInGameMenuEnabled() then
				InGameMenu.openInGameMenu(InGameMenuConstants.MainPagePageKey)
			else
				local SettingsHub = require(RobloxGui.Modules.Settings.SettingsHub)
				SettingsHub:ToggleVisibility(InGameMenuConstants.AnalyticsMenuOpenTypes.TopbarButton)
			end
		end
	end
	self.menuIconOnHover = function()
		if isNewInGameMenuEnabled() then
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
		local vrShowMenuIcon = false
		if self.state.vrShowMenuIcon ~= vrShowMenuIcon then
			self:setState({
				vrShowMenuIcon = vrShowMenuIcon,
			})
		end
	end
end

function MenuIcon:render()
	local visible = (not VRService.VREnabled or self.state.vrShowMenuIcon)

	return Roact.createElement("Frame", {
		Visible = visible,
		BackgroundTransparency = 1,
		Size = UDim2.new(0, BACKGROUND_SIZE, 1, 0),
		LayoutOrder = self.props.layoutOrder,
	}, {
		Background = Roact.createElement(IconButton, {
			icon = if ChromeEnabled()
				then UIBloxImages["icons/status/player/admin"]
				else "rbxasset://textures/ui/TopBar/coloredlogo.png",
			iconSize = ICON_SIZE * (self.props.iconScale or 1),
			useIconScaleAnimation = ChromeEnabled(),
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

local function mapDispatchToProps(dispatch)
	return {
		setGamepadMenuOpen = function(open)
			return dispatch(SetGamepadMenuOpen(open))
		end,
	}
end

return RoactRodux.UNSTABLE_connect2(nil, mapDispatchToProps)(MenuIcon)
