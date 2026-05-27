-- Services
local ContextActionService = game:GetService("ContextActionService")
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local GamepadService = game:GetService("GamepadService")
local GuiService = game:GetService("GuiService")
local VRService = game:GetService("VRService")

-- Paths
local TopBar = script.Parent.Parent
local Packages = TopBar.Parent
local Chrome = Packages.Chrome

local ChromeService = require(Chrome.Service)
local Constants = require(TopBar.Constants)
local InGameMenuConstants = require(Packages.InGameMenuConstants)
local UnibarConstants = require(Chrome.ChromeShared.Unibar.Constants)

-- Modules
local ChromeFocusUtils = require(CorePackages.Workspace.Packages.Chrome).FocusUtils
local Display = require(CorePackages.Workspace.Packages.Display)
local Foundation = require(CorePackages.Packages.Foundation)
local Motion = require(CorePackages.Packages.Motion)
local React = require(CorePackages.Packages.React)
local RobloxTranslator = require(CorePackages.Workspace.Packages.RobloxTranslator)
local SettingsShowSignal = require(CorePackages.Workspace.Packages.CoreScriptsCommon).SettingsShowSignal
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local Signals = require(CorePackages.Packages.Signals)
local SignalsReact = require(CorePackages.Packages.SignalsReact)
local UIBlox = require(CorePackages.Packages.UIBlox)

-- Flags
local isSpatial = require(CorePackages.Workspace.Packages.AppCommonLib).isSpatial
local FFlagShowUnibarOnVirtualCursor = SharedFlags.FFlagShowUnibarOnVirtualCursor
local FFlagEnableSideSheet = SharedFlags.FFlagEnableSideSheet

-- Components
local View = Foundation.View
local Icon = Foundation.Icon
local ControlState = Foundation.Enums.ControlState
local useTokens = Foundation.Hooks.useTokens
local useCursor = Foundation.Hooks.useCursor

local InExperienceSideSheet = require(CorePackages.Workspace.Packages.InExperienceSideSheet)
local getSideSheetVisibility = InExperienceSideSheet.getSideSheetVisibility

local menuIconHoveredSignal = require(TopBar.Components.Presentation.menuIconHoveredSignal)
local BadgeOver12 = require(TopBar.Components.Presentation.BadgeOver12)
local withTooltip = UIBlox.App.Dialog.TooltipV2.withTooltip
local TooltipOrientation = UIBlox.App.Dialog.Enum.TooltipOrientation

local TooltipCallout = UIBlox.App.Dialog.TooltipCallout
local VrSpatialUi = require(CorePackages.Workspace.Packages.VrSpatialUi)
local UIManager = VrSpatialUi.UIManager
local Panel3DInSpatialUI = VrSpatialUi.Panel3DInSpatialUI
local PanelType = VrSpatialUi.Constants.PanelType
local SPATIAL_TOOLTIP_SPACING = VrSpatialUi.Constants.SPATIAL_TOOLTIP_SPACING
local shouldDisableBottomBarInteraction = function()
    if isSpatial() then
        -- hide the tooltip if the top bar is not showing in VR
        local showTopBar = ChromeService:showTopBar()
        local isBottomBarInteractionOnAnimationSupported = UIManager.getInstance():isBottomBarInteractionOnAnimationSupported()
        return not showTopBar and not isBottomBarInteractionOnAnimationSupported
    else
        return false
    end
end

local BADGE_INDENT = 1

local DEFAULT_DELAY_TIME = 0.65
local MENU_TOOLTIP_LABEL = "CoreScripts.TopBar.RobloxMenu"
local MENU_TOOLTIP_FALLBACK = "Roblox Menu"
local TOOLTIP_DISPLAY_ORDER = 10
local TOGGLE_MENU_HOTKEYS = { Enum.KeyCode.Escape }
local BADGE_INDENT = 1
local BADGE_OFFSET = 4

type MenuIconProps = {
	menuIconRef: React.RefObject<GuiObject?>?,
	unibarMenuRef: React.RefObject<GuiObject?>?,
	showBadgeOver12: boolean?,
	referralRewardTooltipText: string?,
}

local function MenuIcon(props: MenuIconProps)
    local tokens = useTokens()

	local uiScale = SignalsReact.useSignalState(function(scope) 
		return Display.GetDisplayStore(scope).getUIScale(scope)
	end)
	local backgroundSize = Constants.TopBarButtonHeight * uiScale
	local topBarButtonPadding = Constants.TopBarButtonPadding * uiScale

	local baseMenuIconSize = Constants.MENU_ICON_SIZE * uiScale
    local iconSizeStates = React.useMemo(function() 
        return {
            menuOpen = Motion.createState({
                size = baseMenuIconSize * Constants.MenuIconOpenScale
            }),
            menuClosed = Motion.createState({
                size = baseMenuIconSize
            }), 
        } 
    end, { uiScale })
    local menuIconSize, animateMenuIcon = Motion.useMotion(iconSizeStates.menuClosed) 

    local preferredTransparency, setPreferredTransparency = React.useBinding(GuiService.PreferredTransparency)

    local clickLatched = React.useRef(false)
    local isHovering = React.useRef(false)

    local leftmostUnibarIcon
    local leftmostUnibarIconId
    local nextSelectionRight

    if props.unibarMenuRef and props.unibarMenuRef.current then
        leftmostUnibarIcon = ChromeService:menuList():get()[1]
        leftmostUnibarIconId = if leftmostUnibarIcon then (UnibarConstants.ICON_NAME_PREFIX::string) .. leftmostUnibarIcon.id else nil
        nextSelectionRight = if props.unibarMenuRef.current and leftmostUnibarIconId then 
            props.unibarMenuRef.current:FindFirstChild(leftmostUnibarIconId, true) 
            else nil :: never
    end

    local showTooltip, setShowTooltip = React.useState(false)
    local triggerPointSize, setTriggerPointSize = React.useState(Vector2.zero)
    local triggerPointPosition, setTriggerPointPosition = React.useState(Vector2.zero)

    local menuIconCursor = useCursor(Foundation.Enums.CursorType.SkinToneCircle)

    local tooltipText = React.useRef(MENU_TOOLTIP_FALLBACK)
    local tooltipProps = {
		textAlignment = Enum.TextXAlignment.Center,
		headerText = tooltipText.current,
		hotkeyCodes = TOGGLE_MENU_HOTKEYS,
	}

    local tooltipOptions = {
		active = showTooltip,
		guiTarget = CoreGui,
		preferredOrientation = TooltipOrientation.Bottom,
		DisplayOrder = TOOLTIP_DISPLAY_ORDER,
	}

    React.useEffect(function() 
        pcall(function()
            tooltipText.current = RobloxTranslator:FormatByKey(MENU_TOOLTIP_LABEL)
        end)

        local preferredTransparencyConn = GuiService:GetPropertyChangedSignal("PreferredTransparency"):Connect(function()
            setPreferredTransparency(GuiService.PreferredTransparency)
        end)
        local settingsShowConn = SettingsShowSignal:connect(function(isOpen)
			animateMenuIcon(if isOpen then iconSizeStates.menuOpen else iconSizeStates.menuClosed)
		end)

		local disposeSideSheetVisibilityEffect = nil
		if FFlagEnableSideSheet then
			disposeSideSheetVisibilityEffect = Signals.createEffect(function(scope)
				local isOpen = getSideSheetVisibility(scope)
				animateMenuIcon(if isOpen then iconSizeStates.menuOpen else iconSizeStates.menuClosed)
			end)
		end

        local triggerMenuIconConn
        if props.menuIconRef then
            triggerMenuIconConn = ChromeService:onTriggerMenuIcon():connect(function()
                GuiService.SelectedCoreObject = props.menuIconRef.current
                ChromeFocusUtils.MenuIconSelectedSignal:set(true)
            end)
        end

        return function()
			if FFlagEnableSideSheet and disposeSideSheetVisibilityEffect then
				disposeSideSheetVisibilityEffect()
			end
            preferredTransparencyConn:Disconnect()
            settingsShowConn:Disconnect()
            if triggerMenuIconConn then
                triggerMenuIconConn:disconnect()
            end
        end
    end, {})

    local previousState = React.useRef(ControlState.Default)
    local menuIconStateChanged = React.useCallback(function(newState) 
        if newState == ControlState.Hover then 
            if shouldDisableBottomBarInteraction() then
                return
            end
            isHovering.current = true
            menuIconHoveredSignal:fire(true)

            task.delay(DEFAULT_DELAY_TIME, function()
                if isHovering.current and not clickLatched.current then
                    if shouldDisableBottomBarInteraction() then
                        return
                    end
                    setShowTooltip(true)
                end
            end)
        elseif newState == ControlState.Selected then 
            ChromeFocusUtils.MenuIconSelectedSignal:set(true)
        elseif newState == ControlState.Default then 
            if previousState.current == ControlState.Hover then
                setShowTooltip(false)
                isHovering.current = false
                clickLatched.current = false
            elseif previousState.current == ControlState.Selected then
                if not (FFlagShowUnibarOnVirtualCursor and GamepadService.GamepadCursorEnabled) and GuiService.SelectedCoreObject and string.find(GuiService.SelectedCoreObject.Name, UnibarConstants.ICON_NAME_PREFIX :: string) then
					ChromeService:enableFocusNav()
				end
                ChromeFocusUtils.MenuIconSelectedSignal:set(false)
            end
        end

        previousState.current = newState
    end :: Foundation.StateChangedCallback , {}) 

    local menuIconActivated = React.useCallback(function()
		setShowTooltip(false)
        clickLatched.current = true

		if shouldDisableBottomBarInteraction() then
			return
		end
        local SettingsHub = require(Packages.Settings.SettingsHub)
		SettingsHub:ToggleVisibility(InGameMenuConstants.AnalyticsMenuOpenTypes.TopbarButton)
	end, {})

    local function renderWithTooltipCompat(tooltipProps, tooltipOptions, renderTriggerPoint)
        if isSpatial() then
            local triggerPointName = "MenuIconTriggerPoint"
            local triggerPointChanged = function(rbx: GuiObject)
                setTriggerPointSize(rbx.AbsoluteSize)
                setTriggerPointPosition(rbx.AbsolutePosition)
            end
            local renderCallback = React.useCallback(function(panelSize: Vector2)
                return React.createElement(TooltipCallout, {
                    textAlignment = Enum.TextXAlignment.Center,
                    headerText = tooltipProps.headerText,
                    orientation = TooltipOrientation.Top,
                    distanceOffset = 0,
                    triggerPointCenter = Vector2.new(
                        triggerPointPosition.X + triggerPointSize.X / 2,
                        panelSize.Y - SPATIAL_TOOLTIP_SPACING
                    ),
                    contentOffsetVector = Vector2.zero,
                    triggerPointRadius = Vector2.zero,
                })
            end, { tooltipProps, triggerPointPosition, triggerPointSize } :: {unknown})
            return React.createElement(
                React.Fragment,
                nil,
                {
                    VRSpatialTooltip = if tooltipOptions.active
                            and triggerPointSize
                            and Panel3DInSpatialUI
                        then React.createElement(Panel3DInSpatialUI, {
                            panelType = PanelType.ToolTipsContainer,
                            renderFunction = renderCallback,
                        })
                        else nil,
                    [triggerPointName] = renderTriggerPoint(triggerPointChanged),
                } :: any
            )
        else
            return withTooltip(tooltipProps, tooltipOptions, renderTriggerPoint)
        end
    end

    local renderCallback = React.useCallback(function(triggerPointChanged) 
        return React.createElement(View, {
            tag = "radius-circle aspect-1-1",
            backgroundStyle = if not FFlagEnableSideSheet 
				then preferredTransparency:map(function(trans) 
					local color = tokens.Color.OverMedia.OverMedia_0
					color.Transparency = color.Transparency * trans
					return color
				end) 
				else nil,
            Size = UDim2.fromScale(1, 1),
            NextSelectionRight = nextSelectionRight,
            selection = {
                Selectable = true,
                SelectionImageObject = menuIconCursor
            },
            selectionGroup = {
                SelectionBehaviorLeft = Enum.SelectionBehavior.Stop,
                SelectionBehaviorUp = Enum.SelectionBehavior.Stop,
                SelectionBehaviorDown = Enum.SelectionBehavior.Stop,
            },
            ref = props.menuIconRef,
            onAbsoluteSizeChanged = triggerPointChanged,
            onAbsolutePositionChanged = triggerPointChanged,
            onActivated = if not FFlagEnableSideSheet then menuIconActivated else nil,
            onStateChanged = if not FFlagEnableSideSheet then menuIconStateChanged else nil,
        }, {
            BadgeOver12 = if props.showBadgeOver12 then
                React.createElement(BadgeOver12, {
                    position = UDim2.new(0, BADGE_INDENT, 1,  -(topBarButtonPadding + BADGE_INDENT)),
                }) else nil,
            Icon = React.createElement(Icon, {
                name = Foundation.Enums.IconName.Tilt,
                size = menuIconSize.size,
                Position = UDim2.fromScale(0.5, 0.5),
                AnchorPoint = Vector2.new(0.5, 0.5),
				style = if FFlagEnableSideSheet then tokens.Color.ActionEmphasis.Foreground else nil,
            })
        })
    end, { preferredTransparency, nextSelectionRight, menuIconCursor, menuIconActivated, menuIconStateChanged, props.showBadgeOver12 } :: {unknown})

    return renderWithTooltipCompat(tooltipProps, tooltipOptions, renderCallback)
end
return MenuIcon