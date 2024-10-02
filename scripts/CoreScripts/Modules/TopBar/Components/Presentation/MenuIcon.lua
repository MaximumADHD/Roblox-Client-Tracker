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
local withTooltip = UIBlox.App.Dialog.TooltipV2.withTooltip
local TooltipOrientation = UIBlox.App.Dialog.Enum.TooltipOrientation

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local ChromeEnabled = require(RobloxGui.Modules.Chrome.Enabled)
local TenFootInterface = require(RobloxGui.Modules.TenFootInterface)
local isNewInGameMenuEnabled = require(RobloxGui.Modules.isNewInGameMenuEnabled)
local InGameMenuConstants = require(RobloxGui.Modules.InGameMenuConstants)
local PlayerListMaster = require(RobloxGui.Modules.PlayerList.PlayerListManager)
local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)
local BadgeOver12 = require(script.Parent.BadgeOver12)

local VRHub = require(RobloxGui.Modules.VR.VRHub)

local isSubjectToDesktopPolicies = require(CorePackages.Workspace.Packages.SharedFlags).isSubjectToDesktopPolicies

local ExternalEventConnection = require(CorePackages.Workspace.Packages.RoactUtils).ExternalEventConnection

local GetFFlagChangeTopbarHeightCalculation = require(script.Parent.Parent.Parent.Flags.GetFFlagChangeTopbarHeightCalculation)
local FFlagEnableChromeBackwardsSignalAPI = require(script.Parent.Parent.Parent.Flags.GetFFlagEnableChromeBackwardsSignalAPI)()
local FFlagEnableUnibarFtuxTooltips = require(script.Parent.Parent.Parent.Parent.Flags.FFlagEnableUnibarFtuxTooltips)

local Components = script.Parent.Parent
local Actions = Components.Parent.Actions
local Constants = require(Components.Parent.Constants)
local SetGamepadMenuOpen = require(Actions.SetGamepadMenuOpen)
local SetKeepOutArea = require(Actions.SetKeepOutArea)
local menuIconHoveredSignal = require(script.Parent.menuIconHoveredSignal)

local InGameMenu
if isNewInGameMenuEnabled() then
	InGameMenu = require(RobloxGui.Modules.InGameMenuInit)
end

local isNewTiltIconEnabled = require(RobloxGui.Modules.isNewTiltIconEnabled)

local IconButton = require(script.Parent.IconButton)

local MenuIcon = Roact.PureComponent:extend("MenuIcon")

local BACKGROUND_SIZE = if isNewTiltIconEnabled() then (Constants.TopBarHeight - 4) else 32
if GetFFlagChangeTopbarHeightCalculation() then
	BACKGROUND_SIZE = Constants.TopBarButtonHeight
end

local tooltipEnabled = ChromeEnabled()
local ICON_SIZE = 24
local DEFAULT_DELAY_TIME = if tooltipEnabled then 0.65 else 0.4
local MENU_TOOLTIP_LABEL = "CoreScripts.TopBar.RobloxMenu"
local MENU_TOOLTIP_FALLBACK = "Roblox Menu"
local MENU_HOTKEYS = { Enum.KeyCode.Escape }
local BADGE_INDENT = 1
local BADGE_OFFSET = 4

local GetFFlagVoiceRecordingIndicatorsEnabled = require(RobloxGui.Modules.Flags.GetFFlagVoiceRecordingIndicatorsEnabled)

MenuIcon.validateProps = t.strictInterface({
	layoutOrder = t.integer,
	setGamepadMenuOpen = t.callback,
	iconScale = t.optional(t.number),
	onAreaChanged = t.optional(t.callback),
	showBadgeOver12 = t.optional(t.boolean),
})

function MenuIcon:init()
	self:setState({
		vrShowMenuIcon = false,
		showTooltip = false,
		isHovering = false,
		clickLatched = if tooltipEnabled then false else nil,
		enableFlashingDot = false
	})

	if GetFFlagVoiceRecordingIndicatorsEnabled() and not ChromeEnabled() then
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
			isHovering = if tooltipEnabled then nil else false,
			clickLatched = if tooltipEnabled then true else nil,
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
	self.fireMenuIconHoveredSignal = function(tooltipEnabled)
		menuIconHoveredSignal:fire(tooltipEnabled)
	end
	self.menuIconOnHover = function()
		if tooltipEnabled then
			self:setState({
				isHovering = true,
			})
			if FFlagEnableUnibarFtuxTooltips then
				self.fireMenuIconHoveredSignal(true)
			end

			delay(DEFAULT_DELAY_TIME, function()
				if self.state.isHovering and not self.state.clickLatched then
					self:setState({
						showTooltip = true,
					})
				end
			end)
		else
			if FFlagEnableUnibarFtuxTooltips then
				self.fireMenuIconHoveredSignal(false)
			end
		end

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
			clickLatched = if tooltipEnabled then false else nil,
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

	local onAreaChanged = function(rbx)
		if rbx then
			self.props.onAreaChanged(Constants.MenuIconKeepOutAreaId, rbx.AbsolutePosition, rbx.AbsoluteSize)
		end
	end

	local background = Roact.createElement(IconButton, {
		icon = if isNewTiltIconEnabled()
			then UIBloxImages["icons/logo/block"]
			else "rbxasset://textures/ui/TopBar/coloredlogo.png",
		iconSize = ICON_SIZE * (self.props.iconScale or 1),
		useIconScaleAnimation = isNewTiltIconEnabled(),
		onActivated = self.menuIconActivated,
		onHover = self.menuIconOnHover,
		onHoverEnd = if tooltipEnabled then self.menuIconOnHoverEnd else nil,
		enableFlashingDot = self.state.enableFlashingDot,
	})

	local showTopBarListener = GamepadService and Roact.createElement(ExternalEventConnection, {
		event = VRHub.ShowTopBarChanged.Event or GamepadService:GetPropertyChangedSignal("GamepadCursorEnabled"),
		callback = self.showTopBarCallback,
	})

	local badgeOver12 = if self.props.showBadgeOver12 then Roact.createElement(BadgeOver12, {
		position = if ChromeEnabled() then UDim2.new(0, BADGE_INDENT, 1, -(Constants.TopBarButtonPadding + BADGE_INDENT)) else UDim2.new(0, -BADGE_OFFSET, 1, BADGE_OFFSET)
	}) else nil

	if tooltipEnabled then
		local tooltipText = MENU_TOOLTIP_FALLBACK
		pcall(function()
			tooltipText = RobloxTranslator:FormatByKey(MENU_TOOLTIP_LABEL)
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
			DisplayOrder = 10,
		}

		return withTooltip(tooltipProps, tooltipOptions, function(triggerPointChanged)
			local onChange = function(rbx)
				onAreaChanged(rbx)
				triggerPointChanged(rbx)
			end

			return Roact.createElement("Frame", {
				Visible = visible,
				BackgroundTransparency = 1,
				Size = UDim2.new(0, BACKGROUND_SIZE, 1, 0),
				LayoutOrder = self.props.layoutOrder,

				[Roact.Change.AbsoluteSize] = onChange,
				[Roact.Change.AbsolutePosition] = onChange,
			}, {
				BadgeOver12 = badgeOver12,
				Background = background,
				ShowTopBarListener = showTopBarListener,
			})
		end)
	else
		return Roact.createElement("Frame", {
			Visible = visible,
			BackgroundTransparency = 1,
			Size = UDim2.new(0, BACKGROUND_SIZE, 1, 0),
			LayoutOrder = self.props.layoutOrder,
			[Roact.Change.AbsoluteSize] = if (FFlagEnableChromeBackwardsSignalAPI or ChromeEnabled()) then onAreaChanged else nil,
			[Roact.Change.AbsolutePosition] = if (FFlagEnableChromeBackwardsSignalAPI or ChromeEnabled()) then onAreaChanged else nil,
		}, {
			BadgeOver12 = badgeOver12,
			Background = background,
			ShowTopBarListener = showTopBarListener,
		})
	end
end

local function mapDispatchToProps(dispatch)
	return {
		setGamepadMenuOpen = function(open)
			return dispatch(SetGamepadMenuOpen(open))
		end,
		onAreaChanged = function(id, position, size)
			return dispatch(SetKeepOutArea(id, position, size))
		end,
	}
end

return RoactRodux.UNSTABLE_connect2(nil, mapDispatchToProps)(MenuIcon)
