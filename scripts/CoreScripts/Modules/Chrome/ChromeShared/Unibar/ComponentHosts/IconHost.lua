local Root = script:FindFirstAncestor("ChromeShared")

local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local UserInputService = game:GetService("UserInputService")
local React = require(CorePackages.Packages.React)

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagTiltIconUnibarFocusNav = SharedFlags.FFlagTiltIconUnibarFocusNav
local FFlagAdaptUnibarAndTiltSizing = SharedFlags.GetFFlagAdaptUnibarAndTiltSizing()

local ChromeFlags = require(script.Parent.Parent.Parent.Parent.Flags)
local FFlagUnibarMenuOpenHamburger = ChromeFlags.FFlagUnibarMenuOpenHamburger
local FFlagUnibarMenuOpenSubmenu = ChromeFlags.FFlagUnibarMenuOpenSubmenu

local ChromeSharedFlags = require(Root.Flags)
local FFlagTokenizeUnibarConstantsWithStyleProvider = ChromeSharedFlags.FFlagTokenizeUnibarConstantsWithStyleProvider
local FFlagIconHostSetZIndexToDefault = ChromeSharedFlags.FFlagIconHostSetZIndexToDefault

local UIBlox = require(CorePackages.Packages.UIBlox)

local Foundation = require(CorePackages.Packages.Foundation)
local useCursor = if FFlagAdaptUnibarAndTiltSizing then Foundation.Hooks.useCursor else nil :: never
local Badge = Foundation.Badge
local BadgeVariant = Foundation.Enums.BadgeVariant
local BadgeSize = Foundation.Enums.BadgeSize
local MAX_BADGE_VALUE = 99
local MAX_BADGE_TEXT = "99"

local Interactable = UIBlox.Core.Control.Interactable
local ControlState = UIBlox.Core.Control.Enum.ControlState
local useStyle = UIBlox.Core.Style.useStyle
local withTooltip = UIBlox.App.Dialog.TooltipV2.withTooltip
local useSelectionCursor = if FFlagAdaptUnibarAndTiltSizing then nil else UIBlox.App.SelectionImage.useSelectionCursor
local CursorKind = if FFlagAdaptUnibarAndTiltSizing then nil else UIBlox.App.SelectionImage.CursorKind

local Constants = require(Root.Unibar.Constants)

local ChromeService = require(Root.Service)
local ChromeAnalytics = require(Root.Analytics.ChromeAnalytics)
local ChromeTypes = require(Root.Service.Types)
local FFlagEnableChromeAnalytics = SharedFlags.GetFFlagEnableChromeAnalytics()
local FFlagWindowFixes = SharedFlags.GetFFlagWindowFixes()
local FFlagHamburgerCursorFix = SharedFlags.FFlagHamburgerCursorFix
local UnibarStyle = require(Root.Unibar.UnibarStyle)

local useObservableValue = require(Root.Hooks.useObservableValue)
local useNotificationCount = require(Root.Hooks.useNotificationCount)
local useMappedObservableValue = require(Root.Hooks.useMappedObservableValue)
local useMappedObservableValueBinding = require(Root.Hooks.useMappedObservableValueBinding)
local useTimeHysteresis = require(Root.Hooks.useTimeHysteresis)
local useTokens = Foundation.Hooks.useTokens

local shouldRejectMultiTouch = require(Root.Utility.shouldRejectMultiTouch)

local isInExperienceUIVREnabled =
	require(CorePackages.Workspace.Packages.SharedExperimentDefinition).isInExperienceUIVREnabled
local isSpatial
local Panel3DInSpatialUI
local PanelType
local TooltipOrientation
local TooltipCallout
local SPATIAL_TOOLTIP_SPACING
local UIManager
local MappedSignal
local BottomBarVisibilitySignal
if isInExperienceUIVREnabled then
	isSpatial = require(CorePackages.Workspace.Packages.AppCommonLib).isSpatial
	local VrSpatialUi = require(CorePackages.Workspace.Packages.VrSpatialUi)
	Panel3DInSpatialUI = VrSpatialUi.Panel3DInSpatialUI
	PanelType = VrSpatialUi.Constants.PanelType
	TooltipOrientation = UIBlox.App.Dialog.Enum.TooltipOrientation
	TooltipCallout = UIBlox.App.Dialog.TooltipCallout
	SPATIAL_TOOLTIP_SPACING = VrSpatialUi.Constants.SPATIAL_TOOLTIP_SPACING
	UIManager = VrSpatialUi.UIManager
	MappedSignal = require(Root.Service.ChromeUtils).MappedSignal
	local BottomBarVisibility = (UIManager.getInstance() :: any):getBottomBarVisibility()
	if BottomBarVisibility and isSpatial() then
		BottomBarVisibilitySignal = MappedSignal.new(BottomBarVisibility, function()
			return (BottomBarVisibility :: any):get()
		end) :: any
	end
end

local MenuIconContext = if FFlagTiltIconUnibarFocusNav
	then require(Root.Parent.Parent.TopBar.Components.MenuIconContext)
	else nil :: never

local FFlagEnableUnibarFtuxTooltips = SharedFlags.FFlagEnableUnibarFtuxTooltips
local GetFFlagSimpleChatUnreadMessageCount = SharedFlags.GetFFlagSimpleChatUnreadMessageCount

type TooltipState = {
	displaying: boolean,
	time: number,
}

-- module scoped variable
local GroupTooltipState: { [ChromeTypes.IntegrationId]: TooltipState } = {}

function areTooltipsDisplaying()
	-- True if another IconHost is displaying tooltip or very recently displayed a tooltip
	local TOOLTIP_DISPLAY_COOLDOWN = 0.15
	local now = tick()
	for _, tooltipState in GroupTooltipState do
		if tooltipState.displaying or (now - tooltipState.time) < TOOLTIP_DISPLAY_COOLDOWN then
			return true
		end
	end
	return false
end

function logTooltipState(id: ChromeTypes.IntegrationId, displaying: boolean)
	-- Log the time and displaying state when displaying state changes
	if not GroupTooltipState[id] or GroupTooltipState[id].displaying ~= displaying then
		GroupTooltipState[id] = {
			displaying = displaying,
			time = tick(),
		}
	end
end

export type IconHostProps = {
	integration: ChromeTypes.IntegrationComponentProps,
	toggleTransition: any?,
	position: React.Binding<UDim2> | UDim2 | nil,
	visible: React.Binding<boolean> | boolean | nil,
	disableButtonBehaviors: boolean?,
	disableBadgeNumber: boolean?,
}

function NotificationBadge(props: IconHostProps): any?
	if not props.integration then
		return nil
	end
	local notificationCount = useNotificationCount(props.integration.integration)

	-- inhibit notificationCount if this integration is a currently open submenu root
	local isCurrentlyOpenSubMenu = useMappedObservableValue(ChromeService:currentSubMenu(), function(currentSubMenu)
		return currentSubMenu == props.integration.id
	end)

	if isCurrentlyOpenSubMenu then
		notificationCount = 0
	end

	local hideNotificationCountWhileOpen = false
	if props.integration and props.integration.integration then
		hideNotificationCountWhileOpen = props.integration.integration.hideNotificationCountWhileOpen or false
	end

	local notificationBadgeText
	if notificationCount > 0 then
		if notificationCount > MAX_BADGE_VALUE then
			notificationBadgeText = MAX_BADGE_TEXT
		else
			notificationBadgeText = tostring(notificationCount)
		end
	end

	local tokens
	if GetFFlagSimpleChatUnreadMessageCount() and props.disableBadgeNumber then
		tokens = useTokens()
	end
	local unibarStyle
	local iconSize
	local iconBadgeOffsetX
	local iconBadgeOffsetY
	if FFlagTokenizeUnibarConstantsWithStyleProvider then
		unibarStyle = UnibarStyle.use()
		iconSize = unibarStyle.ICON_SIZE
		iconBadgeOffsetX = unibarStyle.ICON_BADGE_OFFSET_X
		iconBadgeOffsetY = unibarStyle.ICON_BADGE_OFFSET_Y
	else
		iconSize = Constants.ICON_SIZE
		iconBadgeOffsetX = Constants.ICON_BADGE_OFFSET_X
		iconBadgeOffsetY = Constants.ICON_BADGE_OFFSET_Y
	end

	return React.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = if GetFFlagSimpleChatUnreadMessageCount() and props.disableBadgeNumber
			then UDim2.new(0, iconSize, 0, iconSize)
			else UDim2.fromScale(1, 1),
		Visible = props.toggleTransition and props.toggleTransition:map(function(value)
			if hideNotificationCountWhileOpen then
				return value < 0.5
			else
				return true
			end
		end) or true,
		ZIndex = 2,
	}, {
		Badge = if notificationCount > 0
			then if GetFFlagSimpleChatUnreadMessageCount() and props.disableBadgeNumber
				then React.createElement(Foundation.View, {
					Position = UDim2.new(1, 0, 0.2, 0),
					backgroundStyle = {
						Color3 = tokens.Color.System.Contrast.Color3,
						Transparency = 0,
					},
					stroke = {
						Color = tokens.Color.Surface.Surface_0.Color3,
						Transparency = 0,
						Thickness = tokens.Stroke.Thicker,
					},
					tag = "anchor-top-right radius-circle size-200 stroke-thicker",
					ZIndex = 2,
				})
				elseif notificationBadgeText then React.createElement(Badge, {
					AnchorPoint = Vector2.new(0, 0),
					Position = UDim2.new(0, iconBadgeOffsetX, 0, iconBadgeOffsetY),
					variant = BadgeVariant.Primary,
					size = BadgeSize.Small :: any,
					text = notificationBadgeText,
				})
				else nil
			else nil,
	})
end

type NotificationIndicatorProps = {
	integration: ChromeTypes.IntegrationComponentProps,
	setIconVisible: (boolean) -> (),
}
function NotificationIndicator(props: NotificationIndicatorProps)
	local icon = useObservableValue(ChromeService:notificationIndicator())
	props.setIconVisible(if icon then false else true)

	return React.createElement("Frame", {
		Name = "NotificationIndicatorFrame",
		Size = UDim2.new(1, 0, 1, 0),
		BorderSizePixel = 0,
		BackgroundTransparency = 1,
	}, {
		IntegrationIcon = icon and icon.component(props) or nil,
		UIListLayout = React.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
		}),
	}) :: any
end

function HighlightCircle(props)
	local unibarStyle
	local iconHighlightSize
	if FFlagTokenizeUnibarConstantsWithStyleProvider then
		unibarStyle = UnibarStyle.use()
		iconHighlightSize = unibarStyle.ICON_HIGHLIGHT_SIZE
	else
		iconHighlightSize = Constants.ICON_HIGHLIGHT_SIZE
	end
	return React.createElement("Frame", {
		Name = props.name or "Highlighter",
		Size = iconHighlightSize,
		AnchorPoint = Vector2.new(0.5, 0.5),
		Position = UDim2.new(0.5, 0, 0.5, 0),
		BackgroundColor3 = props.color.Color,
		BackgroundTransparency = props.color.Transparency,
		BorderSizePixel = 0,
		Visible = props.visible,
	}, {
		corner = React.createElement("UICorner", {
			CornerRadius = UDim.new(1, 0),
		}),
	})
end

type TooltipButtonProps = {
	setHovered: (boolean) -> (),
	integration: ChromeTypes.IntegrationComponentProps,
	isCurrentlyOpenSubMenu: React.Binding<boolean?>,
}
function TooltipButton(props: TooltipButtonProps)
	local unibarStyle
	local iconHighlightSize
	if FFlagTokenizeUnibarConstantsWithStyleProvider then
		unibarStyle = UnibarStyle.use()
		iconHighlightSize = unibarStyle.ICON_HIGHLIGHT_SIZE
	else
		iconHighlightSize = Constants.ICON_HIGHLIGHT_SIZE
	end
	local localBtnRef = React.useRef(nil)
	local secondaryAction = props.integration.integration.secondaryAction
	local draggable: boolean = props.integration.integration.draggable or false
	local connection: { current: RBXScriptConnection? } = React.useRef(nil)

	-- If the icon is unmounted and the local connection is active clear it.
	-- The touch ended is not called when the WindowHost is opened by dragging
	React.useEffect(function()
		return function()
			if connection.current then
				connection.current:Disconnect()
				connection.current = nil
			end
		end
	end, {})

	-- isHovered is a delayed icon hover state to drive tooltip
	local isHovered, setHovered
	if secondaryAction then
		isHovered, setHovered = useTimeHysteresis(0.05, 0.15, 0.35)
	else
		isHovered, setHovered = useTimeHysteresis(0.6, 0.65, 0.70)
	end

	-- isTooltipHovered is a tooltip panel hover state that works in combination with isHovered
	local isTooltipHovered, setTooltipHovered = useTimeHysteresis(0, 0, 0.65)
	local isTooltipButtonSelected, setTooltipButtonSelected = React.useState(false)

	-- clickLatched inhibits the display of the tooltip if you've clicked on the icon
	-- this is reset on the next hover
	local clickLatched, setClicked = useTimeHysteresis(0, 1.0)
	local isSpatial = if isInExperienceUIVREnabled then isSpatial() else nil
	local showTopBar = if isInExperienceUIVREnabled
		then useObservableValue((ChromeService :: any):getTopBarVisibiity())
		else nil
	local isBottomBarInteractionOnAnimationSupported = if isInExperienceUIVREnabled and BottomBarVisibilitySignal
		then useObservableValue(BottomBarVisibilitySignal :: any)
		else nil
	local shouldDisableInteraction = false
	if isInExperienceUIVREnabled then
		if isSpatial and not showTopBar and not isBottomBarInteractionOnAnimationSupported then
			shouldDisableInteraction = true
			draggable = draggable and not shouldDisableInteraction
		end
	end
	local hoverHandler = React.useCallback(
		function(oldState, newState)
			if isInExperienceUIVREnabled and shouldDisableInteraction then
				return
			end
			if
				newState == ControlState.Selected
				and (oldState == ControlState.Default or oldState == ControlState.Hover)
			then
				ChromeService:setSelected(props.integration.id)
			elseif newState == ControlState.Selected and oldState == ControlState.Default then
				ChromeService:setSelected(props.integration.id)
			end

			local active = newState ~= ControlState.Default
			props.setHovered(active)
			local hovered = newState == ControlState.Hover
			setHovered(hovered, (hovered and isTooltipHovered) or areTooltipsDisplaying())
			if FFlagEnableUnibarFtuxTooltips and hovered then
				ChromeService:onIntegrationHovered():fire(props.integration.id)
			end
			if not active then
				setClicked(false)
			end
		end,
		if isInExperienceUIVREnabled
			then {
				props.setHovered :: any,
				setHovered,
				setClicked,
				isTooltipHovered,
				isSpatial,
				shouldDisableInteraction,
			}
			else { props.setHovered :: any, setHovered, setClicked, isTooltipHovered }
	)

	local touchBegan = React.useCallback(function(_rbx: Frame, inputObj: InputObject)
		if not draggable then
			return
		end
		if
			inputObj.UserInputType == Enum.UserInputType.MouseButton1
			or inputObj.UserInputType == Enum.UserInputType.Touch
		then
			local dragStartPosition = inputObj.Position
			setClicked(true, true)
			if FFlagEnableChromeAnalytics then
				ChromeAnalytics.default:onIconTouchBegan(props.integration.id)
			end

			if not connection.current then
				connection.current = UserInputService.InputChanged:Connect(function(inputChangedObj: InputObject, _)
					if shouldRejectMultiTouch(inputObj, inputChangedObj) then
						return
					end

					-- If the window is already open, we don't want to toggle it again. Similarly, connection.current
					-- becomes nil when we close the window, and we don't want to toggle it back on.
					if
						FFlagWindowFixes
						and (ChromeService:isWindowOpen(props.integration.id) or not connection.current)
					then
						return
					end

					local inputPosition = inputChangedObj.Position

					-- Calculate the magnitude of the drag so far to determine whether to activate the integration
					local magnitude = math.abs((dragStartPosition - inputPosition).Magnitude)

					if magnitude > Constants.DRAG_MAGNITUDE_THRESHOLD then
						if FFlagEnableChromeAnalytics then
							ChromeAnalytics.default:onIconDrag(props.integration.id)
						end
						ChromeService:storeChromeInteracted()
						ChromeService:toggleWindow(props.integration.id)
						ChromeService:gesture(props.integration.id, connection, inputObj)
					end
				end)
			end
		end
	end, { draggable })
	local touchEnded = React.useCallback(function(_: Frame, inputObj: InputObject)
		if not draggable then
			return
		end
		if
			inputObj.UserInputType == Enum.UserInputType.MouseButton1
			or inputObj.UserInputType == Enum.UserInputType.Touch
		then
			setClicked(false)
			if connection.current then
				connection.current:Disconnect()
				connection.current = nil
				ChromeService:gesture(props.integration.id, nil)
			end
		end
	end, { draggable })

	local displayTooltip = (isHovered or isTooltipHovered or isTooltipButtonSelected) and not clickLatched
	if isInExperienceUIVREnabled then
		-- hide the tooltip if the TopBar(Unibar) is hidden in VR
		if displayTooltip and shouldDisableInteraction then
			displayTooltip = false
		end
	end
	logTooltipState(props.integration.id, displayTooltip)

	local menuIconContext = if FFlagTiltIconUnibarFocusNav then React.useContext(MenuIconContext) else nil :: never

	local renderTooltipComponent = React.useCallback(function(triggerPointChanged)
		local leftMostIconId
		if FFlagTiltIconUnibarFocusNav then
			leftMostIconId = ChromeService:menuList():get()[1].id
		end

		return React.createElement(
			Interactable,
			{
				Name = (if FFlagTiltIconUnibarFocusNav then Constants.ICON_NAME_PREFIX :: string else "IconHitArea_")
					.. props.integration.id,
				Size = if FFlagAdaptUnibarAndTiltSizing or FFlagTokenizeUnibarConstantsWithStyleProvider
					then iconHighlightSize
					else UDim2.new(1, 0, 1, 0),
				AnchorPoint = if FFlagAdaptUnibarAndTiltSizing then Vector2.new(0.5, 0.5) else nil,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				onStateChanged = hoverHandler,
				ref = localBtnRef,
				SelectionOrder = if FFlagUnibarMenuOpenHamburger or FFlagUnibarMenuOpenSubmenu
					then props.integration.order
					else 100 - props.integration.order,
				Position = props.isCurrentlyOpenSubMenu:map(function(activeSubmenu: boolean?)
					return if FFlagAdaptUnibarAndTiltSizing
						then UDim2.new(0.5, 0, 0.5, if not FFlagHamburgerCursorFix and activeSubmenu then 1 else 0)
						else UDim2.new(0, 0, 0, if not FFlagHamburgerCursorFix and activeSubmenu then 1 else 0)
				end),
				SelectionImageObject = if FFlagAdaptUnibarAndTiltSizing
					then useCursor(Foundation.Enums.CursorType.SkinToneCircle)
					else useSelectionCursor(CursorKind.SelectedKnob),
				SelectionGroup = true,
				SelectionBehaviorUp = Enum.SelectionBehavior.Stop,
				SelectionBehaviorDown = props.isCurrentlyOpenSubMenu:map(function(activeSubmenu: boolean?)
					-- only allow down nav if secondaryAction or an active open submenu
					return if (displayTooltip and secondaryAction) or activeSubmenu
						then Enum.SelectionBehavior.Escape
						else Enum.SelectionBehavior.Stop
				end),
				NextSelectionLeft = if FFlagTiltIconUnibarFocusNav and props.integration.id == leftMostIconId
					then menuIconContext.menuIconRef
					else nil :: never,

				[React.Change.AbsolutePosition] = triggerPointChanged,
				[React.Change.AbsoluteSize] = triggerPointChanged,
				[React.Event.InputBegan] = touchBegan,
				[React.Event.InputEnded] = touchEnded,
				[React.Event.Activated] = function()
					if isInExperienceUIVREnabled and isSpatial then
						if shouldDisableInteraction then
							return
						else
							ChromeService:onTriggerVRToggleButton():fire(true)
						end
					end
					setClicked(true, true)
					props.integration.activated()
					if connection.current then
						connection.current:Disconnect()
						connection.current = nil
						ChromeService:gesture(props.integration.id, nil)
					end
				end,
			},
			if FFlagAdaptUnibarAndTiltSizing
				then {
					corner = React.createElement("UICorner", {
						CornerRadius = UDim.new(1, 0),
					}),
				}
				else nil
		)
	end, {
		hoverHandler :: any,
		setHovered,
		setClicked,
		touchBegan,
		touchEnded,
		props.isCurrentlyOpenSubMenu,
		displayTooltip,
		secondaryAction,
		if isInExperienceUIVREnabled then shouldDisableInteraction else nil :: never,
		if FFlagTiltIconUnibarFocusNav then menuIconContext.menuIconRef else nil :: never,
	})

	-- tooltipRefHandler attached mouse events to the tooltip in order to keep it open while the mouse is over
	-- this is only used in the event we have a secondaryAction
	local tooltipRef = React.useRef(nil :: any?)
	local tooltipRefHandler = React.useCallback(function(rbx)
		type Conntection = {
			disconnect: (Conntection) -> (),
		}
		local disconnectMouseEnter: Conntection | nil
		local disconnectMouseLeave: Conntection | nil
		local disconnectMouseDestroying: Conntection | nil
		local disconnect = function()
			if disconnectMouseEnter then
				disconnectMouseEnter:disconnect()
				disconnectMouseEnter = nil
			end
			if disconnectMouseLeave then
				disconnectMouseLeave:disconnect()
				disconnectMouseLeave = nil
			end
			if disconnectMouseDestroying then
				disconnectMouseDestroying:disconnect()
				disconnectMouseDestroying = nil
			end
		end

		if rbx ~= tooltipRef.current then
			pcall(disconnect)
			if rbx then
				disconnectMouseEnter = rbx.MouseEnter:Connect(function()
					setTooltipHovered(true, true)
				end)
				disconnectMouseLeave = rbx.MouseLeave:Connect(function()
					setTooltipHovered(false)
				end)
				disconnectMouseDestroying = rbx.Destroying:Connect(function()
					setTooltipHovered(false)
				end)
			end
			tooltipRef.current = rbx
		end
	end, { setTooltipHovered })

	local buttonProps = if secondaryAction
		then {
			text = secondaryAction.label,
			onStateChanged = function(_, newState)
				if newState == ControlState.Selected then
					setTooltipButtonSelected(true)
				else
					setTooltipButtonSelected(false)
				end
			end,
			onActivated = function()
				secondaryAction.activated(props.integration)
			end,
			NextSelectionUp = localBtnRef,
			NextSelectionLeft = localBtnRef,
			NextSelectionRight = localBtnRef,
			NextSelectionDown = localBtnRef,
		}
		else nil

	if isInExperienceUIVREnabled and isSpatial then
		local triggerPointPosition, setTriggerPointPosition = React.useBinding(Vector2.zero)
		local triggerPointSize, setTriggerPointSize = React.useBinding(Vector2.zero)

		local triggerPointChanged = React.useCallback(function(rbx: GuiObject)
			setTriggerPointPosition(rbx.AbsolutePosition)
			setTriggerPointSize(rbx.AbsoluteSize)
		end, { setTriggerPointPosition, setTriggerPointSize } :: { any })

		return React.createElement(
			React.Fragment,
			nil,
			{
				VRSpatialTooltip = if displayTooltip and Panel3DInSpatialUI
					then React.createElement(Panel3DInSpatialUI, {
						panelType = PanelType.ToolTipsContainer,
						renderFunction = function(panelSize: Vector2)
							local triggerPointCenter = Vector2.new(
								triggerPointPosition:getValue().X + triggerPointSize:getValue().X / 2,
								panelSize.Y - SPATIAL_TOOLTIP_SPACING
							)
							return React.createElement(TooltipCallout, {
								textAlignment = Enum.TextXAlignment.Center,
								headerText = props.integration.integration.label,
								orientation = TooltipOrientation.Top,
								distanceOffset = 0,
								triggerPointCenter = triggerPointCenter,
								contentOffsetVector = Vector2.zero,
								triggerPointRadius = Vector2.zero,
								buttonProps = buttonProps,
								ref = if secondaryAction then tooltipRefHandler else nil,
							})
						end,
					})
					else nil,
				renderTooltipComponent(triggerPointChanged),
			} :: any
		)
	else
		return withTooltip({
			headerText = props.integration.integration.label,
			hotkeyCodes = props.integration.integration.hotkeyCodes,
			textAlignment = Enum.TextXAlignment.Left,
			buttonProps = buttonProps,
			ref = if secondaryAction then tooltipRefHandler else nil,
		}, {
			active = displayTooltip,
			guiTarget = CoreGui,
			DisplayOrder = 10,
		}, renderTooltipComponent)
	end
end

-- todo: Support an Integrations that can be from any UI framework

function IconHost(props: IconHostProps)
	if not props.integration or not props.integration.component then
		warn("IconHost has no component to render")
	end

	local isHovered, setHovered = React.useBinding(false)
	local iconVisible, setIconVisible = React.useBinding(true)

	local style = useStyle()
	local unibarStyle
	local theme = style.Theme
	local backgroundHover = theme.BackgroundOnHover

	local iconCellWidth
	if FFlagTokenizeUnibarConstantsWithStyleProvider then
		unibarStyle = UnibarStyle.use()
		iconCellWidth = unibarStyle.ICON_CELL_WIDTH
	else
		iconCellWidth = Constants.ICON_CELL_WIDTH
	end

	local isCurrentlyOpenSubMenu = useMappedObservableValueBinding(
		ChromeService:currentSubMenu(),
		function(currentSubMenu)
			return currentSubMenu == props.integration.id
		end
	)

	return React.createElement("Frame", {
		Size = UDim2.new(0, iconCellWidth, 0, iconCellWidth),
		LayoutOrder = props.integration.order,
		BorderSizePixel = 0,
		BackgroundTransparency = 1,
		Position = props.position,
		Visible = props.visible,
		ZIndex = if FFlagIconHostSetZIndexToDefault then nil else props.integration.order,
	}, {

		React.createElement("Frame", {
			Name = "IntegrationIconFrame",
			Size = UDim2.new(1, 0, 1, 0),
			BorderSizePixel = 0,
			BackgroundTransparency = 1,
			Visible = iconVisible,
		}, {
			IntegrationIcon = props.integration and props.integration.component and props.integration.component(props)
				or nil,
			UIListLayout = React.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
			}),
		}) :: any,
		if props.integration.integration.flashNotificationSource
			then React.createElement(NotificationIndicator, {
				integration = props.integration,
				setIconVisible = setIconVisible,
			}) :: any
			else nil,
		React.createElement(HighlightCircle, {
			name = "SelectedHighlighter",
			color = backgroundHover,
			visible = isCurrentlyOpenSubMenu,
		}),
		React.createElement(HighlightCircle, {
			name = "Highlighter",
			color = backgroundHover,
			visible = isHovered,
		}),
		React.createElement(NotificationBadge, props) :: any,
		if props.disableButtonBehaviors
			then nil
			else React.createElement(TooltipButton, {
				integration = props.integration,
				setHovered = setHovered,
				isCurrentlyOpenSubMenu = isCurrentlyOpenSubMenu,
			}) :: any,
	})
end

return IconHost
