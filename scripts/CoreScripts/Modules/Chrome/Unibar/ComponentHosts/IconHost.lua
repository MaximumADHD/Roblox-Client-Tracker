local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local React = require(CorePackages.Packages.React)
local RoactGamepad = require(CorePackages.Packages.RoactGamepad)
local Focusable = RoactGamepad.Focusable

local UIBlox = require(CorePackages.UIBlox)
local Badge = UIBlox.App.Indicator.Badge
local Interactable = UIBlox.Core.Control.Interactable
local ControlState = UIBlox.Core.Control.Enum.ControlState
local useStyle = UIBlox.Core.Style.useStyle
local withTooltip = UIBlox.App.Dialog.TooltipV2.withTooltip

local Constants = require(script.Parent.Parent.Parent.Unibar.Constants)

local ChromeService = require(script.Parent.Parent.Parent.Service)
local ChromeTypes = require(script.Parent.Parent.Parent.Service.Types)

local useNotificationCount = require(script.Parent.Parent.Parent.Hooks.useNotificationCount)
local useMappedObservableValue = require(script.Parent.Parent.Parent.Hooks.useMappedObservableValue)
local useTimeHysteresis = require(script.Parent.Parent.Parent.Hooks.useTimeHysteresis)

local BADGE_OFFSET_X = 18
local BADGE_OFFSET_Y = 2

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

type TooltipButtonProps = {
	setHovered: (boolean) -> (),
	integration: ChromeTypes.IntegrationComponentProps,
}

function TooltipButton(props: TooltipButtonProps)
	local secondaryAction = props.integration.integration.secondaryAction

	-- isHovered is a delayed icon hover state to drive tooltip
	local isHovered, setHovered
	if secondaryAction then
		isHovered, setHovered = useTimeHysteresis(0.05, 0.15, 0.35)
	else
		isHovered, setHovered = useTimeHysteresis(0.6, 0.65, 0.70)
	end

	-- isTooltipHovered is a tooltip panel hover state that works in combination with isHovered
	local isTooltipHovered, setTooltipHovered = useTimeHysteresis(0, 0, 0.65)

	-- clickLatched inhibits the display of the tooltip if you've clicked on the icon
	-- this is reset on the next hover
	local clickLatched, setClicked = useTimeHysteresis(0, 1.0)
	local hoverHandler = React.useCallback(function(_, newState)
		local hovered = newState ~= ControlState.Default
		props.setHovered(hovered)
		setHovered(hovered, hovered and isTooltipHovered)
		if not hovered then
			setClicked(false)
		end
	end, { props.setHovered :: any, setHovered, setClicked, isTooltipHovered })

	local renderTooltipComponent = React.useCallback(function(triggerPointChanged)
		return React.createElement(Focusable[Interactable], {
			Name = "IconHitArea",
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			onStateChanged = hoverHandler,
			[React.Change.AbsolutePosition] = triggerPointChanged,
			[React.Change.AbsoluteSize] = triggerPointChanged,
			[React.Event.Activated] = function()
				setClicked(true, true)
				props.integration.activated()
			end,
		})
	end, { hoverHandler :: any, setHovered, setClicked })

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
				onActivated = function()
					secondaryAction.activated(props.integration)
				end,
			}
			else nil,
		ref = if secondaryAction then tooltipRefHandler else nil,
	}, {
		active = (isHovered or isTooltipHovered) and not clickLatched,
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

	local style = useStyle()
	local theme = style.Theme
	local backgroundHover = theme.BackgroundOnHover

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
			Size = UDim2.new(1, 0, 1, 0),
			BorderSizePixel = 0,
			BackgroundTransparency = 1,
		}, {
			IntegrationIcon = props.integration and props.integration.component and props.integration.component(props)
				or nil,
			UIListLayout = React.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
			}),
		}) :: any,
		React.createElement("Frame", {
			Name = "Highlighter",
			Size = UDim2.new(0, 36, 0, 36),
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.new(0.5, 0, 0.5, 0),
			BackgroundColor3 = backgroundHover.Color,
			BackgroundTransparency = backgroundHover.Transparency,
			BorderSizePixel = 0,
			Visible = isHovered,
		}, {
			corner = React.createElement("UICorner", {
				CornerRadius = UDim.new(1, 0),
			}),
		}) :: any,
		React.createElement(NotificationBadge, props) :: any,
		if props.disableButtonBehaviors
			then nil
			else React.createElement(TooltipButton, {
				integration = props.integration,
				setHovered = setHovered,
			}) :: any,
	})
end

return IconHost
