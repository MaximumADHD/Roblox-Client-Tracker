local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)
local RoactGamepad = require(CorePackages.Packages.RoactGamepad)
local Focusable = RoactGamepad.Focusable

local UIBlox = require(CorePackages.UIBlox)
local Badge = UIBlox.App.Indicator.Badge
local Interactable = UIBlox.Core.Control.Interactable
local ControlState = UIBlox.Core.Control.Enum.ControlState
local useStyle = UIBlox.Core.Style.useStyle

local Constants = require(script.Parent.Parent.Parent.Unibar.Constants)

local useNotificationCount = require(script.Parent.Parent.Parent.Hooks.useNotificationCount)

local BADGE_OFFSET_X = 18
local BADGE_OFFSET_Y = 2

function NotificationBadge(props)
	local notificationCount = useNotificationCount(props.integration.integration)

	return React.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.fromScale(1, 1),
		Visible = props.toggleTransition and props.toggleTransition:map(function(value)
			if props.integration.integration.hideNotificationCountWhileOpen then
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

-- todo: Support an Integrations that can be from any UI framework

function IconHost(props: any)
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
	}, {
		React.createElement("Frame", {
			Size = UDim2.new(1, -4, 1, -4),
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
		React.createElement(NotificationBadge, props) :: any,
		React.createElement(Focusable[Interactable], {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			onStateChanged = function(_, newState)
				setHovered(newState == ControlState.Hover)
			end,
			[React.Event.Activated] = props.integration.activated,
		}) :: any,
	})
end

return IconHost
