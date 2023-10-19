local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local UserInputService = game:GetService("UserInputService")
local React = require(CorePackages.Packages.React)

local UIBlox = require(CorePackages.UIBlox)
local Badge = UIBlox.App.Indicator.Badge
local Interactable = UIBlox.Core.Control.Interactable
local ControlState = UIBlox.Core.Control.Enum.ControlState
local useStyle = UIBlox.Core.Style.useStyle
local withTooltip = UIBlox.App.Dialog.TooltipV2.withTooltip
local useSelectionCursor = UIBlox.App.SelectionImage.useSelectionCursor
local CursorKind = UIBlox.App.SelectionImage.CursorKind

local Chrome = script.Parent.Parent.Parent
local Constants = require(Chrome.Unibar.Constants)

local ChromeService = require(Chrome.Service)
local ChromeAnalytics = require(Chrome.Analytics.ChromeAnalytics)
local ChromeTypes = require(Chrome.Service.Types)
local FFlagEnableChromeAnalytics = require(Chrome.Flags.GetFFlagEnableChromeAnalytics)()
local GetFFlagSelfViewMultiTouchFix = require(Chrome.Flags.GetFFlagSelfViewMultiTouchFix)
local GetFFlagEnableUnibarSneakPeak = require(Chrome.Flags.GetFFlagEnableUnibarSneakPeak)

local useObservableValue = require(Chrome.Hooks.useObservableValue)
local useNotificationCount = require(script.Parent.Parent.Parent.Hooks.useNotificationCount)
local useMappedObservableValue = require(script.Parent.Parent.Parent.Hooks.useMappedObservableValue)
local useMappedObservableValueBinding = require(script.Parent.Parent.Parent.Hooks.useMappedObservableValueBinding)
local useTimeHysteresis = require(script.Parent.Parent.Parent.Hooks.useTimeHysteresis)

local BADGE_OFFSET_X = 20
local BADGE_OFFSET_Y = 0

type TooltipState = {
	displaying: boolean,
	time: number,
}

-- module scoped variable
local GroupTooltipState: { [ChromeTypes.IntegrationId]: TooltipState } = {}

function areTooltipsDisplaying()
	-- True if another IconHost is displaying tooltip or very recently displayed a tooltip
	local now = tick()
	for _, tooltipState in GroupTooltipState do
		if tooltipState.displaying or (now - tooltipState.time) < 0.15 then
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

	return React.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.fromScale(1, 1),
		Visible = props.toggleTransition and props.toggleTransition:map(function(value)
			if hideNotificationCountWhileOpen then
				return value < 0.5
			else
				return true
			end
		end) or true,
		ZIndex = 2,
	}, {
		Badge = notificationCount > 0 and React.createElement(Badge, {
			position = UDim2.fromOffset(BADGE_OFFSET_X, BADGE_OFFSET_Y),
			anchorPoint = Vector2.new(0, 0),

			hasShadow = false,
			value = notificationCount,
		}),
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
	return React.createElement("Frame", {
		Name = props.name or "Highlighter",
		Size = UDim2.new(0, 36, 0, 36),
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
	local hoverHandler = React.useCallback(function(oldState, newState)
		if newState == ControlState.Selected and oldState == ControlState.Default then
			ChromeService:setSelected(props.integration.id)
		end
		local active = newState ~= ControlState.Default
		props.setHovered(active)
		local hovered = newState == ControlState.Hover
		setHovered(hovered, (hovered and isTooltipHovered) or areTooltipsDisplaying())
		if not active then
			setClicked(false)
		end
	end, { props.setHovered :: any, setHovered, setClicked, isTooltipHovered })

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
					if GetFFlagSelfViewMultiTouchFix() then
						-- Multiple touches should not affect dragging the Self View. Only the original touch.
						--the check inputType == Enum.UserInputType.Touch is so it does not block mouse dragging
						if inputObj.UserInputType == Enum.UserInputType.Touch and inputChangedObj ~= inputObj then
							return
						end
					end

					local inputPosition = inputChangedObj.Position

					-- Calculate the magnitude of the drag so far to determine whether to activate the integration
					local magnitude = math.abs((dragStartPosition - inputPosition).Magnitude)

					if magnitude > Constants.DRAG_MAGNITUDE_THRESHOLD then
						if FFlagEnableChromeAnalytics then
							ChromeAnalytics.default:onIconDrag(props.integration.id)
						end
						if GetFFlagEnableUnibarSneakPeak() then
							ChromeService:storeChromeInteracted()
						end
						ChromeService:toggleWindow(props.integration.id)
						ChromeService:gesture(props.integration.id, connection)
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
	logTooltipState(props.integration.id, displayTooltip)

	local renderTooltipComponent = React.useCallback(function(triggerPointChanged)
		return React.createElement(Interactable, {
			Name = "IconHitArea_" .. props.integration.id,
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			onStateChanged = hoverHandler,
			ref = localBtnRef,
			SelectionOrder = 100 - props.integration.order,
			Position = props.isCurrentlyOpenSubMenu:map(function(activeSubmenu: boolean?)
				return UDim2.new(0, 0, 0, if activeSubmenu then 1 else 0)
			end),
			SelectionImageObject = useSelectionCursor(CursorKind.SelectedKnob),
			SelectionGroup = true,
			SelectionBehaviorUp = Enum.SelectionBehavior.Stop,
			SelectionBehaviorDown = props.isCurrentlyOpenSubMenu:map(function(activeSubmenu: boolean?)
				-- only allow down nav if secondaryAction or an active open submenu
				return if (displayTooltip and secondaryAction) or activeSubmenu
					then Enum.SelectionBehavior.Escape
					else Enum.SelectionBehavior.Stop
			end),

			[React.Change.AbsolutePosition] = triggerPointChanged,
			[React.Change.AbsoluteSize] = triggerPointChanged,
			[React.Event.InputBegan] = touchBegan,
			[React.Event.InputEnded] = touchEnded,
			[React.Event.Activated] = function()
				setClicked(true, true)
				props.integration.activated()
				if connection.current then
					connection.current:Disconnect()
					connection.current = nil
					ChromeService:gesture(props.integration.id, nil)
				end
			end,
		})
	end, {
		hoverHandler :: any,
		setHovered,
		setClicked,
		touchBegan,
		touchEnded,
		props.isCurrentlyOpenSubMenu,
		displayTooltip,
		secondaryAction,
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

	return withTooltip({
		headerText = props.integration.integration.label,
		hotkeyCodes = props.integration.integration.hotkeyCodes,
		textAlignment = Enum.TextXAlignment.Left,
		buttonProps = if secondaryAction
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
			else nil,
		ref = if secondaryAction then tooltipRefHandler else nil,
	}, {
		active = displayTooltip,
		guiTarget = CoreGui,
		DisplayOrder = 10,
	}, renderTooltipComponent)
end

-- todo: Support an Integrations that can be from any UI framework

function IconHost(props: IconHostProps)
	if not props.integration or not props.integration.component then
		warn("IconHost has no component to render")
	end

	local isHovered, setHovered = React.useBinding(false)
	local iconVisible, setIconVisible = React.useBinding(true)

	local style = useStyle()
	local theme = style.Theme
	local backgroundHover = theme.BackgroundOnHover

	local isCurrentlyOpenSubMenu = useMappedObservableValueBinding(
		ChromeService:currentSubMenu(),
		function(currentSubMenu)
			return currentSubMenu == props.integration.id
		end
	)

	return React.createElement("Frame", {
		Size = UDim2.new(0, Constants.ICON_CELL_WIDTH, 0, Constants.ICON_CELL_WIDTH),
		LayoutOrder = props.integration.order,
		BorderSizePixel = 0,
		BackgroundTransparency = 1,
		Position = props.position,
		Visible = props.visible,
		ZIndex = props.integration.order,
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
