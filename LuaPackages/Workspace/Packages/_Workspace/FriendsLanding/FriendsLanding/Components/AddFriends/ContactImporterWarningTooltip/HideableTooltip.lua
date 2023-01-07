-- TODO SOCCON-1955 export to SocialLibraries as we might end up reusing this component a fair bit.
local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local AddFriends = FriendsLanding.AddFriends
local dependencies = require(AddFriends.dependencies)
local Dash = dependencies.Dash
local t = dependencies.t
local Roact = dependencies.Roact
local UIBlox = dependencies.UIBlox

local Tooltip = UIBlox.App.Dialog.Tooltip
local TooltipOrientation = UIBlox.App.Dialog.Enum.TooltipOrientation

local TOOLTIP_WIDTH = 250
local TOOLTIP_HEIGHT = 140
local TRIGGER_HEIGHT = 70
local POSITION_OFFSET_Y = 36

export type Props = {
	onClick: () -> (),
	showTooltip: boolean,
	bodyText: string,
	headerText: string,
}

local HideableTooltip = Roact.PureComponent:extend("HideableTooltip")

HideableTooltip.validateProps = t.strictInterface({
	onClick = Dash.isCallable,
	showTooltip = t.boolean,
	bodyText = t.string,
	headerText = t.string,
})

function HideableTooltip:render()
	local props: Props = self.props

	if not props.showTooltip then
		return nil
	end

	return Roact.createElement("Frame", {
		Size = UDim2.new(0, TOOLTIP_WIDTH, 0, TOOLTIP_HEIGHT),
		Position = UDim2.new(0, 0, 0, POSITION_OFFSET_Y),
		LayoutOrder = 1,
		BackgroundTransparency = 1,
	}, {
		Tooltip = Roact.createElement(Tooltip, {
			position = UDim2.new(0, 0, 0, 0),
			triggerPosition = Vector2.new(0, 0),
			triggerSize = Vector2.new(TRIGGER_HEIGHT, 0),
			bodyText = props.bodyText,
			headerText = props.headerText,
			orientation = TooltipOrientation.Bottom,
			forceClickTriggerPoint = true,
			isDirectChild = true,
		}),
		DismissMask = Roact.createElement("TextButton", {
			Text = "",
			Size = UDim2.new(0, TOOLTIP_WIDTH, 0, TOOLTIP_HEIGHT),
			BackgroundTransparency = 1,
			[Roact.Event.Activated] = props.onClick,
			ZIndex = 10,
		}),
	})
end

return HideableTooltip
