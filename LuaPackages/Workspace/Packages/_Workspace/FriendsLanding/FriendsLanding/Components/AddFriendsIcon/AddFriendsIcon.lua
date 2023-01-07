local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local React = dependencies.React
local UIBlox = dependencies.UIBlox
local TextKeys = require(FriendsLanding.Common.TextKeys)

local IconButton = UIBlox.App.Button.IconButton
local Images = UIBlox.App.ImageSet.Images
local Badge = UIBlox.App.Indicator.Badge
local Tooltip = UIBlox.App.Dialog.Tooltip
local ICON_BUTTON_SIZE = 36
local TOOLTIP_RIGHT_PADDING = 42.5
local MAX_TOOLTIP_WIDTH = 240

local Dash = dependencies.Dash
local useState = React.useState
local useLocalization = dependencies.Hooks.useLocalization
local getDeepValue = dependencies.SocialLibraries.Dictionary.getDeepValue

export type Props = {
	friendRequestCount: number,
	layoutOrder: number?,
	onActivated: () -> ()?,
	showTooltip: boolean?,
}

local DEFAULT_PROPS = {
	layoutOrder = 0,
	friendRequestCount = 0,
	onActivated = Dash.noop,
	showTooltip = false,
}

return function(passedProps: Props)
	local props = Dash.join(DEFAULT_PROPS, passedProps)

	local tooltipWidth, updateTooltipWidth = useState(MAX_TOOLTIP_WIDTH)
	local updateSize = function(rbx)
		if rbx and rbx:FindFirstChild("CallToActionTooltip", true) then
			updateTooltipWidth(
				getDeepValue(rbx, "CallToActionTooltip.TooltipContainer.AbsoluteSize.X") or MAX_TOOLTIP_WIDTH
			)
		end
	end
	local localized = useLocalization({
		tooltipMessage = TextKeys.NO_FRIENDS_TOOLTIP,
	})

	return React.createElement(IconButton, {
		size = UDim2.fromOffset(0, 0),
		icon = Images["icons/actions/friends/friendAdd"],
		position = props.position,
		anchorPoint = Vector2.new(1, 0.5),
		layoutOrder = props.layoutOrder,
		onActivated = props.onActivated,
	}, {
		ImagesContainer = React.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			[React.Change.AbsoluteSize] = updateSize,
		}, {
			FriendRequestsBadge = props.friendRequestCount > 0 and React.createElement(Badge, {
				position = UDim2.new(0.5, 0, 0.5, 0),
				anchorPoint = Vector2.new(0, 1),
				value = props.friendRequestCount,
			}),
			CallToActionTooltip = props.showTooltip and React.createElement(Tooltip, {
				position = UDim2.new(0, TOOLTIP_RIGHT_PADDING - tooltipWidth, 0, ICON_BUTTON_SIZE),
				triggerPosition = Vector2.new(0, 0),
				triggerSize = Vector2.new(ICON_BUTTON_SIZE, 0),
				bodyText = localized.tooltipMessage,
				forceClickTriggerPoint = true,
				isDirectChild = true,
			}),
		}),
	})
end
