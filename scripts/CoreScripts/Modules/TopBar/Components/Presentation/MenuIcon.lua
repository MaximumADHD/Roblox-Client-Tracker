local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local GuiService = game:GetService("GuiService")
local VRService = game:GetService("VRService")
local GamepadService = game:GetService("GamepadService")
local ContextActionService = game:GetService("ContextActionService")

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagTiltIconUnibarFocusNav = SharedFlags.FFlagTiltIconUnibarFocusNav
local FFlagEnableUnibarFtuxTooltips = SharedFlags.FFlagEnableUnibarFtuxTooltips
local FFlagHideTopBarConsole = SharedFlags.FFlagHideTopBarConsole
local FFlagEnableChromeShortcutBar = SharedFlags.FFlagEnableChromeShortcutBar
local FFlagReduceTopBarInsetsWhileHidden = SharedFlags.FFlagReduceTopBarInsetsWhileHidden
local FFlagShowUnibarOnVirtualCursor = SharedFlags.FFlagShowUnibarOnVirtualCursor
local FFlagMenuIconRemoveBinding = SharedFlags.FFlagMenuIconRemoveBinding
local FFlagChromeFixMenuIconBackButton = SharedFlags.FFlagChromeFixMenuIconBackButton
local FFlagAddUILessMode = SharedFlags.FFlagAddUILessMode
local FIntAddUILessModeVariant = SharedFlags.FIntAddUILessModeVariant
local FFlagChromeEnabledRequireGamepadConnectorFix = SharedFlags.FFlagChromeEnabledRequireGamepadConnectorFix

local Roact = require(CorePackages.Packages.Roact)
local React = require(CorePackages.Packages.React)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.Packages.UIBlox)
local UIBloxImages = UIBlox.App.ImageSet.Images
local withTooltip = UIBlox.App.Dialog.TooltipV2.withTooltip
local TooltipOrientation = UIBlox.App.Dialog.Enum.TooltipOrientation
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local Chrome = RobloxGui.Modules.Chrome
local ChromeFocusUtils = require(CorePackages.Workspace.Packages.Chrome).FocusUtils
local ChromeEnabled = require(Chrome.Enabled)
local isInExperienceUIVREnabled =
	require(CorePackages.Workspace.Packages.SharedExperimentDefinition).isInExperienceUIVREnabled
local ChromeService = if ChromeEnabled() and (FFlagTiltIconUnibarFocusNav or FFlagEnableChromeShortcutBar or isInExperienceUIVREnabled) then require(Chrome.Service) else nil :: never
local UnibarConstants = if ChromeEnabled() and FFlagTiltIconUnibarFocusNav then require(Chrome.ChromeShared.Unibar.Constants) else nil :: never
local TenFootInterface = require(RobloxGui.Modules.TenFootInterface)
local isNewInGameMenuEnabled = require(RobloxGui.Modules.isNewInGameMenuEnabled)
local InGameMenuConstants = require(RobloxGui.Modules.InGameMenuConstants)
local PlayerListMaster = require(RobloxGui.Modules.PlayerList.PlayerListManager)
local RobloxTranslator = require(CorePackages.Workspace.Packages.RobloxTranslator)
local BadgeOver12 = require(script.Parent.BadgeOver12)
local CoreGuiCommonStores = require(CorePackages.Workspace.Packages.CoreGuiCommon).Stores
local Signals = require(CorePackages.Packages.Signals)
local createEffect = Signals.createEffect

local VRHub = require(RobloxGui.Modules.VR.VRHub)

local isSubjectToDesktopPolicies = SharedFlags.isSubjectToDesktopPolicies

local ExternalEventConnection = require(CorePackages.Workspace.Packages.RoactUtils).ExternalEventConnection

local GetFFlagChangeTopbarHeightCalculation =
	require(script.Parent.Parent.Parent.Flags.GetFFlagChangeTopbarHeightCalculation)
local FFlagEnableChromeBackwardsSignalAPI =
	require(script.Parent.Parent.Parent.Flags.GetFFlagEnableChromeBackwardsSignalAPI)()
local FFlagFixMenuIconBackground = game:DefineFastFlag("FixMenuIconBackground", false)
local FFlagEnableReferralRewardTooltip = game:DefineFastFlag("EnableReferralRewardTooltip", false)

local Components = script.Parent.Parent
local Actions = Components.Parent.Actions
local Constants = require(Components.Parent.Constants)
local SetGamepadMenuOpen = require(Actions.SetGamepadMenuOpen)
local SetKeepOutArea = require(Actions.SetKeepOutArea)
local menuIconHoveredSignal = require(script.Parent.menuIconHoveredSignal)
local GamepadConnector = if (not FFlagChromeEnabledRequireGamepadConnectorFix or ChromeEnabled()) then require(script.Parent.Parent.GamepadConnector) else nil :: never

local InGameMenu
if isNewInGameMenuEnabled() then
	InGameMenu = require(RobloxGui.Modules.InGameMenuInit)
end

local isNewTiltIconEnabled = require(RobloxGui.Modules.isNewTiltIconEnabled)

local TooltipCallout
local isSpatial
local Panel3DInSpatialUI
local PanelType
local SPATIAL_TOOLTIP_SPACING
local UIManager
local shouldDisableBottomBarInteraction
if isInExperienceUIVREnabled then
	isSpatial = require(CorePackages.Workspace.Packages.AppCommonLib).isSpatial
	TooltipCallout = UIBlox.App.Dialog.TooltipCallout
	local VrSpatialUi = require(CorePackages.Workspace.Packages.VrSpatialUi)
	UIManager = VrSpatialUi.UIManager
	Panel3DInSpatialUI = VrSpatialUi.Panel3DInSpatialUI
	PanelType = VrSpatialUi.Constants.PanelType
	SPATIAL_TOOLTIP_SPACING = VrSpatialUi.Constants.SPATIAL_TOOLTIP_SPACING
	shouldDisableBottomBarInteraction = function()
		if isInExperienceUIVREnabled and isSpatial() then
			-- hide the tooltip if the top bar is not showing in VR
			local showTopBar = ChromeService:showTopBar()
			local isBottomBarInteractionOnAnimationSupported = UIManager.getInstance():isBottomBarInteractionOnAnimationSupported()
			return not showTopBar and not isBottomBarInteractionOnAnimationSupported
		else
			return false
		end
	end
end

local IconButton = require(script.Parent.IconButton)

local withReferralRewardTooltipInfo = require(script.Parent.withReferralRewardTooltipInfo)

local MenuIcon = Roact.PureComponent:extend("MenuIcon")

local BACKGROUND_SIZE = if isNewTiltIconEnabled() then (Constants.TopBarHeight - 4) else 32
if GetFFlagChangeTopbarHeightCalculation() then
	BACKGROUND_SIZE = Constants.TopBarButtonHeight
end

local tooltipEnabled = ChromeEnabled()
local DEFAULT_DELAY_TIME = if tooltipEnabled then 0.65 else 0.4
local MENU_TOOLTIP_LABEL = "CoreScripts.TopBar.RobloxMenu"
local MENU_TOOLTIP_FALLBACK = "Roblox Menu"
local MENU_HOTKEYS = { Enum.KeyCode.Escape }
local BADGE_INDENT = 1
local BADGE_OFFSET = 4

MenuIcon.validateProps = t.strictInterface({
	layoutOrder = t.integer,
	setGamepadMenuOpen = t.callback,
	iconScale = t.optional(t.number),
	onAreaChanged = t.optional(t.callback),
	showBadgeOver12 = t.optional(t.boolean),
	menuIconRef = if ChromeEnabled() and FFlagTiltIconUnibarFocusNav then t.optional(t.any) else nil :: never,
	unibarMenuRef = if ChromeEnabled() and FFlagTiltIconUnibarFocusNav then t.optional(t.any) else nil :: never,
	referralRewardTooltipText = t.optional(t.string),
})

function MenuIcon:init()
	self:setState({
		vrShowMenuIcon = false,
		showTooltip = false,
		isHovering = false,
		clickLatched = if tooltipEnabled then false else nil,
		enableFlashingDot = false,
	})

	if not ChromeEnabled() then
		-- We spawn a new coroutine so that this doesn't block the UI from loading.
		task.spawn(function()
			self:setState({
				enableFlashingDot = true,
			})
		end)
	end

	self.menuIconActivated = function()
		self:setState({
			showTooltip = false,
			isHovering = if tooltipEnabled then nil else false,
			clickLatched = if tooltipEnabled then true else nil,
		})

		if isInExperienceUIVREnabled then
			if shouldDisableBottomBarInteraction() then
				return
			end
			local SettingsHub = require(RobloxGui.Modules.Settings.SettingsHub)
			if FFlagAddUILessMode then
				SettingsHub:ToggleVisibility(nil, InGameMenuConstants.AnalyticsMenuOpenTypes.TopbarButton)
			else
				SettingsHub:ToggleVisibility(InGameMenuConstants.AnalyticsMenuOpenTypes.TopbarButton)
			end
		else
			if VRService.VREnabled and (VRHub.ShowTopBar or GamepadService.GamepadCursorEnabled) then
				-- in the new VR System, the menu icon opens the gamepad menu instead
				InGameMenu.openInGameMenu(InGameMenuConstants.MainPagePageKey)
			else
				if isNewInGameMenuEnabled() then
					InGameMenu.openInGameMenu(InGameMenuConstants.MainPagePageKey)
				else
					local SettingsHub = require(RobloxGui.Modules.Settings.SettingsHub)
					if FFlagAddUILessMode then
						SettingsHub:ToggleVisibility(nil, InGameMenuConstants.AnalyticsMenuOpenTypes.TopbarButton)
					else
						SettingsHub:ToggleVisibility(InGameMenuConstants.AnalyticsMenuOpenTypes.TopbarButton)
					end
				end
			end
		end
	end
	self.fireMenuIconHoveredSignal = function(tooltipEnabled)
		menuIconHoveredSignal:fire(tooltipEnabled)
	end
	self.menuIconOnHover = function()
		if isInExperienceUIVREnabled and shouldDisableBottomBarInteraction() then
			return
		end
		if tooltipEnabled then
			self:setState({
				isHovering = true,
			})
			if FFlagEnableUnibarFtuxTooltips then
				self.fireMenuIconHoveredSignal(true)
			end

			delay(DEFAULT_DELAY_TIME, function()
				if self.state.isHovering and not self.state.clickLatched then
					if isInExperienceUIVREnabled and shouldDisableBottomBarInteraction() then
						return
					end
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

	if ChromeEnabled() and FFlagTiltIconUnibarFocusNav then
	self.onMenuIconSelectionChanged = function(MenuIcon: GuiObject, isMenuIconSelected: boolean, oldSelection: GuiObject, newSelection: GuiObject)
			if FFlagMenuIconRemoveBinding then 
				if not (FFlagShowUnibarOnVirtualCursor and GamepadService.GamepadCursorEnabled) and newSelection and string.find(newSelection.Name, UnibarConstants.ICON_NAME_PREFIX :: string) then
					ChromeService:enableFocusNav()
				end
				
				if FFlagChromeFixMenuIconBackButton then
					ChromeFocusUtils.MenuIconSelectedSignal:set(isMenuIconSelected)
				end
			else
				local UNFOCUS_TILT = "Unfocus_Tilt"
				local function unfocusTilt(actionName, userInputState, input): Enum.ContextActionResult
					if not FFlagEnableChromeShortcutBar and userInputState == Enum.UserInputState.End 
						or FFlagEnableChromeShortcutBar and userInputState == Enum.UserInputState.Begin then
						GuiService.SelectedCoreObject = nil
						return Enum.ContextActionResult.Sink
					end

					return Enum.ContextActionResult.Pass
				end

				if isMenuIconSelected then
					ContextActionService:BindCoreAction(UNFOCUS_TILT, unfocusTilt, false, Enum.KeyCode.ButtonB)
				else
					ContextActionService:UnbindCoreAction(UNFOCUS_TILT)
					-- update inFocusNav if GuiSelection enters Unibar
					if not (FFlagShowUnibarOnVirtualCursor and GamepadService.GamepadCursorEnabled) and newSelection and string.find(newSelection.Name, UnibarConstants.ICON_NAME_PREFIX :: string) then
						ChromeService:enableFocusNav()
					end
				end
			end
		end
	end

	if (if FFlagChromeEnabledRequireGamepadConnectorFix then ChromeEnabled() and GamepadConnector else ChromeEnabled) and FFlagHideTopBarConsole then 
		local showTopBarSignal = GamepadConnector:getShowTopBar()

		self.showIcon, self.setShowIcon = Roact.createBinding(showTopBarSignal:get())

		if FFlagReduceTopBarInsetsWhileHidden then 
			self.priorAbsolutePosition = Vector2.zero
			self.priorAbsoluteSize = Vector2.zero
		end

		showTopBarSignal:connect(function() 
			local showTopBar = showTopBarSignal:get()
			self.setShowIcon(showTopBar)

			if FFlagReduceTopBarInsetsWhileHidden then 
				if showTopBar then 
					self.props.onAreaChanged(Constants.MenuIconKeepOutAreaId, self.priorAbsolutePosition, self.priorAbsoluteSize)
				else
					self.props.onAreaChanged(Constants.MenuIconKeepOutAreaId, Vector2.zero, Vector2.zero)
				end
			end
		end)
	end

	if ChromeEnabled() and FFlagEnableChromeShortcutBar then 
		ChromeService:onTriggerMenuIcon():connect(function() 
			GuiService.SelectedCoreObject = self.props.menuIconRef:getValue()
			ChromeFocusUtils.MenuIconSelectedSignal:set(true)
		end)
	end

	if FFlagAddUILessMode and FIntAddUILessModeVariant ~= 0 and CoreGuiCommonStores.GetUILessStore then
		self.uiLessStore = CoreGuiCommonStores.GetUILessStore(false)

		if self.uiLessStore.getUILessModeEnabled(false) then
			self.showIcon, self.setShowIcon = Roact.createBinding(true)

			self.priorAbsolutePosition = Vector2.zero
			self.priorAbsoluteSize = Vector2.zero

			self.disposeEffect = createEffect(function(scope)
				local uiVisible = self.uiLessStore.getUIVisible(scope)
				self.setShowIcon(uiVisible)

				if uiVisible then 
					self.props.onAreaChanged(Constants.MenuIconKeepOutAreaId, self.priorAbsolutePosition, self.priorAbsoluteSize)
				else
					self.props.onAreaChanged(Constants.MenuIconKeepOutAreaId, Vector2.zero, Vector2.zero)
				end
			end)
		end
	end
end

function MenuIcon:renderWithTooltipCompat(tooltipProps, tooltipOptions, renderTriggerPoint)
	if isInExperienceUIVREnabled and isSpatial() then
		local triggerPointName = "MenuIconTriggerPoint"
		local triggerPointChanged = function(rbx: GuiObject)
			self:setState({
				triggerPointSize = rbx.AbsoluteSize,
				triggerPointPosition = rbx.AbsolutePosition,
			})
		end
		return React.createElement(
			React.Fragment,
			nil,
			{
				VRSpatialTooltip = if tooltipOptions.active
						and self.state.triggerPointSize
						and Panel3DInSpatialUI
					then React.createElement(Panel3DInSpatialUI, {
						panelType = PanelType.ToolTipsContainer,
						renderFunction = function(panelSize)
							return React.createElement(TooltipCallout, {
								textAlignment = Enum.TextXAlignment.Center,
								headerText = tooltipProps.headerText,
								orientation = TooltipOrientation.Top,
								distanceOffset = 0,
								triggerPointCenter = Vector2.new(
									self.state.triggerPointPosition.X + self.state.triggerPointSize.X / 2,
									panelSize.Y - SPATIAL_TOOLTIP_SPACING
								),
								contentOffsetVector = Vector2.zero,
								triggerPointRadius = Vector2.zero,
							})
						end,
					})
					else nil,
				[triggerPointName] = renderTriggerPoint(triggerPointChanged),
			} :: any
		)
	else
		return withTooltip(tooltipProps, tooltipOptions, renderTriggerPoint)
	end
end

function MenuIcon:willUnmount()
	if FFlagAddUILessMode and FIntAddUILessModeVariant ~= 0 and self.uiLessStore.getUILessModeEnabled(false) then
		if self.disposeEffect then
			self.disposeEffect()
		end
	end
end

function MenuIcon:render()
	local visible
	if isInExperienceUIVREnabled then
		visible = true
	else
		visible = (not VRService.VREnabled or self.state.vrShowMenuIcon)
	end

	local onAreaChanged = function(rbx)
		if rbx then
			if FFlagReduceTopBarInsetsWhileHidden then
				self.priorAbsolutePosition = rbx.AbsolutePosition
				self.priorAbsoluteSize = rbx.AbsoluteSize
				if (not FFlagChromeEnabledRequireGamepadConnectorFix or ChromeEnabled()) and GamepadConnector:getShowTopBar():get() then 
					self.props.onAreaChanged(Constants.MenuIconKeepOutAreaId, rbx.AbsolutePosition, rbx.AbsoluteSize)
				end 
			elseif FFlagAddUILessMode and FIntAddUILessModeVariant ~= 0 and self.uiLessStore.getUILessModeEnabled(false) then
				self.priorAbsolutePosition = rbx.AbsolutePosition
				self.priorAbsoluteSize = rbx.AbsoluteSize
				if self.uiLessStore.getUIVisible(false) then 
					self.props.onAreaChanged(Constants.MenuIconKeepOutAreaId, rbx.AbsolutePosition, rbx.AbsoluteSize)
				end 
			else 
				self.props.onAreaChanged(Constants.MenuIconKeepOutAreaId, rbx.AbsolutePosition, rbx.AbsoluteSize)
			end

		end
	end

	local background = Roact.createElement(IconButton, {
		icon = if isNewTiltIconEnabled()
			then UIBloxImages["icons/logo/block"]
			else "rbxasset://textures/ui/TopBar/coloredlogo.png",
		iconSize = Constants.MENU_ICON_SIZE * (self.props.iconScale or 1),
		useIconScaleAnimation = isNewTiltIconEnabled(),
		onActivated = self.menuIconActivated,
		onHover = self.menuIconOnHover,
		onHoverEnd = if tooltipEnabled then self.menuIconOnHoverEnd else nil,
		enableFlashingDot = self.state.enableFlashingDot,
		modal = if FFlagAddUILessMode and FIntAddUILessModeVariant == 2 and self.uiLessStore.getUILessModeEnabled(false) then true else nil,
	})

	local showTopBarListener = GamepadService
		and Roact.createElement(ExternalEventConnection, {
			event = VRHub.ShowTopBarChanged.Event or GamepadService:GetPropertyChangedSignal("GamepadCursorEnabled"),
			callback = self.showTopBarCallback,
		})

	local badgeOver12 = if self.props.showBadgeOver12
		then Roact.createElement(BadgeOver12, {
			position = if ChromeEnabled()
				then UDim2.new(0, BADGE_INDENT, 1, -(Constants.TopBarButtonPadding + BADGE_INDENT))
				else UDim2.new(0, -BADGE_OFFSET, 1, BADGE_OFFSET),
		})
		else nil

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

		if FFlagEnableReferralRewardTooltip and self.props.referralRewardTooltipText and self.props.referralRewardTooltipText ~= "" then
			tooltipProps.headerText = self.props.referralRewardTooltipText
			tooltipProps.hotkeyCodes = {}
		end

		local tooltipOptions = {
			active = self.state.showTooltip,
			guiTarget = CoreGui,
			preferredOrientation = TooltipOrientation.Bottom,
			DisplayOrder = 10,
		}

		if FFlagEnableReferralRewardTooltip and self.props.referralRewardTooltipText and self.props.referralRewardTooltipText ~= "" then
			tooltipOptions.active = true
		end

		return self:renderWithTooltipCompat(tooltipProps, tooltipOptions, function(triggerPointChanged)
			local onChange = function(rbx)
				onAreaChanged(rbx)
				triggerPointChanged(rbx)
			end

			local IconHitArea
			if ChromeEnabled() and FFlagTiltIconUnibarFocusNav then
				local leftmostUnibarIcon = ChromeService:menuList():get()[1]
				local leftmostUnibarIconId = if leftmostUnibarIcon then (UnibarConstants.ICON_NAME_PREFIX::string) .. leftmostUnibarIcon.id else nil
				local nextSelectionRight = if self.props.unibarMenuRef.current and leftmostUnibarIconId then 
					self.props.unibarMenuRef.current:FindFirstChild(leftmostUnibarIconId, true) 
					else nil :: never
				IconHitArea = Roact.createElement(IconButton, {
					icon = if isNewTiltIconEnabled()
						then UIBloxImages["icons/logo/block"]
						else "rbxasset://textures/ui/TopBar/coloredlogo.png",
					iconSize = Constants.MENU_ICON_SIZE * (self.props.iconScale or 1),
					useIconScaleAnimation = isNewTiltIconEnabled(),
					onActivated = self.menuIconActivated,
					onHover = self.menuIconOnHover,
					onHoverEnd = if tooltipEnabled then self.menuIconOnHoverEnd else nil,
					enableFlashingDot = self.state.enableFlashingDot,
					onSelectionChanged = self.onMenuIconSelectionChanged,
					nextSelectionRightRef = nextSelectionRight,
					forwardRef = self.props.menuIconRef,
				})
			end

			return Roact.createElement("Frame", {
				Visible = if (ChromeEnabled() and FFlagHideTopBarConsole) or (FFlagAddUILessMode and FIntAddUILessModeVariant ~= 0 and self.uiLessStore.getUILessModeEnabled(false)) then self.showIcon:map(function(showIcon)
					return visible and showIcon
				end) else visible,
				BackgroundTransparency = 1,
				Size = UDim2.new(0, BACKGROUND_SIZE, 1, 0),
				LayoutOrder = self.props.layoutOrder,
				SelectionGroup = if ChromeEnabled() and FFlagTiltIconUnibarFocusNav then true else nil :: never,
				SelectionBehaviorLeft = if ChromeEnabled() and FFlagTiltIconUnibarFocusNav then Enum.SelectionBehavior.Stop else nil :: never,
				SelectionBehaviorUp = if ChromeEnabled() and FFlagTiltIconUnibarFocusNav then Enum.SelectionBehavior.Stop else nil :: never,
				SelectionBehaviorDown =  if ChromeEnabled() and FFlagTiltIconUnibarFocusNav then Enum.SelectionBehavior.Stop else nil :: never,
				[Roact.Change.AbsoluteSize] = onChange,
				[Roact.Change.AbsolutePosition] = onChange,
			}, {
				BadgeOver12 = badgeOver12,
				Background = if ChromeEnabled() and FFlagTiltIconUnibarFocusNav then nil else background,
				IconHitArea = if ChromeEnabled() and FFlagTiltIconUnibarFocusNav then IconHitArea else 
					if FFlagFixMenuIconBackground then nil else background :: never,
					ShowTopBarListener = showTopBarListener,
			})
		end)
	else
		return Roact.createElement("Frame", {
			Visible = if (ChromeEnabled() and FFlagHideTopBarConsole) or (FFlagAddUILessMode and FIntAddUILessModeVariant ~= 0 and self.uiLessStore.getUILessModeEnabled(false)) then self.showIcon:map(function(showIcon) 
				return visible and showIcon
			end) else visible,
			BackgroundTransparency = 1,
			Size = UDim2.new(0, BACKGROUND_SIZE, 1, 0),
			LayoutOrder = self.props.layoutOrder,
			[Roact.Change.AbsoluteSize] = if (FFlagEnableChromeBackwardsSignalAPI or ChromeEnabled())
				then onAreaChanged
				else nil,
			[Roact.Change.AbsolutePosition] = if (FFlagEnableChromeBackwardsSignalAPI or ChromeEnabled())
				then onAreaChanged
				else nil,
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

local menuIconComponent = RoactRodux.UNSTABLE_connect2(nil, mapDispatchToProps)(MenuIcon)

if FFlagEnableReferralRewardTooltip then
	return withReferralRewardTooltipInfo(menuIconComponent)
else
	return menuIconComponent
end
