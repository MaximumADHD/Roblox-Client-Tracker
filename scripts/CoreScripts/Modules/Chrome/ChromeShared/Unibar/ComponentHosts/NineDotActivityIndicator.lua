local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)
local Foundation = require(CorePackages.Packages.Foundation)

local StatusIndicator = Foundation.StatusIndicator
local StatusIndicatorVariant = Foundation.Enums.StatusIndicatorVariant
local View = Foundation.View

export type Props = {
	hasNotificationBadge: boolean,
	position: UDim2,
	visible: boolean,
}

local function NineDotActivityIndicator(props: Props): React.ReactNode
	if not props.visible or props.hasNotificationBadge then
		return nil
	end

	return React.createElement(View, {
		Position = props.position,
		tag = "anchor-top-left auto-xy padding-xxsmall radius-circle bg-surface-0",
		testId = "nine-dot-activity-indicator",
	}, {
		Indicator = React.createElement(StatusIndicator, {
			variant = StatusIndicatorVariant.Emphasis,
		}),
	})
end

return NineDotActivityIndicator
