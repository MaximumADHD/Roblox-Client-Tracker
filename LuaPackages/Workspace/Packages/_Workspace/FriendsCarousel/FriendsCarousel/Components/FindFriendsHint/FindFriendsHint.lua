local FriendsCarousel = script.Parent.Parent.Parent
local dependencies = require(FriendsCarousel.dependencies)

local t = dependencies.t
local Roact = dependencies.Roact
local UIBlox = dependencies.UIBlox
local withLocalization = dependencies.withLocalization

local Tooltip = UIBlox.App.Dialog.Tooltip
local TooltipOrientation = UIBlox.App.Dialog.Enum.TooltipOrientation
local TextKeys = require(FriendsCarousel.Common.TextKeys)

export type Props = {
	layoutOrder: number,
	tileHeight: number,
	showNewAddFriendsUIVariant: boolean?,
}

local MAX_WIDTH: number = 250
local TOOLTIP_MARGIN: number = -12
local TILE_HEIGHT: number = 100

local FindFriendsHint = Roact.PureComponent:extend("FindFriendsHint")

FindFriendsHint.defaultProps = {
	tileHeight = TILE_HEIGHT,
}

FindFriendsHint.validateProps = t.strictInterface({
	layoutOrder = t.number,
	tileHeight = t.number,
	showNewAddFriendsUIVariant = t.optional(t.boolean),
})

function FindFriendsHint:render()
	local props: Props = self.props

	return withLocalization({
		findFriendsTitle = if props.showNewAddFriendsUIVariant
			then TextKeys.FindFriendsTitleV2
			else TextKeys.FindFriendsTitle,
		findFriendsBody = if props.showNewAddFriendsUIVariant
			then TextKeys.FindFriendsBodyV2
			else TextKeys.FindFriendsBody,
	})(function(localizedStrings)
		return Roact.createElement("Frame", {
			Size = UDim2.new(0, MAX_WIDTH, 1, 0),
			LayoutOrder = props.layoutOrder,
			BackgroundTransparency = 1,
		}, {
			HintFrame = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				BackgroundTransparency = 1,
			}, {
				Tooltip = Roact.createElement(Tooltip, {
					triggerPosition = Vector2.new(0, props.tileHeight),
					triggerSize = Vector2.new(TOOLTIP_MARGIN, props.tileHeight),
					bodyText = localizedStrings.findFriendsBody,
					headerText = localizedStrings.findFriendsTitle,
					orientation = TooltipOrientation.Right,
					forceClickTriggerPoint = true,
					isDirectChild = true,
				}),
			}),
		})
	end)
end

return FindFriendsHint
