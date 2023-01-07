local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local Roact = dependencies.Roact
local UIBlox = dependencies.UIBlox

local withStyle = UIBlox.Style.withStyle
local IconButton = UIBlox.App.Button.IconButton
local Images = UIBlox.App.ImageSet.Images
local Badge = UIBlox.App.Indicator.Badge
local Tooltip = UIBlox.App.Dialog.Tooltip
local ICON_BUTTON_SIZE = 36
local TOOLTIP_RIGHT_PADDING = 42.5
local MAX_TOOLTIP_WIDTH = 240
local withLocalization = dependencies.withLocalization
local getFFlagFriendsLandingFixNoFriendsTooltip =
	require(FriendsLanding.Flags.getFFlagFriendsLandingFixNoFriendsTooltip)
local NewAddFriendIcon = require(script.AddFriendsIcon)

export type Props = NewAddFriendIcon.Props

local AddFriendsIcon = Roact.Component:extend("AddFriendsIcon")

local noOpt = function() end

AddFriendsIcon.defaultProps = {
	layoutOrder = 0,
	friendRequestCount = 0,
	Position = UDim2.new(1, 0, 0.5, 0),
	onActivated = noOpt,
	showTooltip = false,
}

function AddFriendsIcon:init()
	self.state = {
		tooltipWidth = MAX_TOOLTIP_WIDTH,
	}
	self.tooltipRef = Roact.createRef()

	self.localization = {
		tooltipMessage = "Feature.Friends.Message.AddFriendTooltip",
	}
end

function AddFriendsIcon:render()
	return withLocalization(self.localization)(function(localizedStrings)
		return withStyle(function(style)
			return Roact.createElement(IconButton, {
				size = UDim2.fromOffset(0, 0),
				icon = Images["icons/actions/friends/friendAdd"],
				position = self.props.position,
				anchorPoint = Vector2.new(1, 0.5),
				layoutOrder = self.props.layoutOrder,
				onActivated = self.props.onActivated,
			}, {
				ImagesContainer = Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundTransparency = 1,
					[Roact.Ref] = self.tooltipRef,
				}, {
					FriendRequestsBadge = self.props.friendRequestCount > 0 and Roact.createElement(Badge, {
						position = UDim2.new(0.5, 0, 0.5, 0),
						anchorPoint = Vector2.new(0, 1),
						value = self.props.friendRequestCount,
					}),
					CallToActionTooltip = self.props.showTooltip
						and Roact.createElement(Tooltip, {
							position = UDim2.new(
								0,
								-self.state.tooltipWidth + TOOLTIP_RIGHT_PADDING,
								0,
								ICON_BUTTON_SIZE
							),
							triggerPosition = Vector2.new(0, 0),
							triggerSize = Vector2.new(ICON_BUTTON_SIZE, 0),
							bodyText = localizedStrings.tooltipMessage,
							forceClickTriggerPoint = true,
							isDirectChild = true,
						}),
				}),
			})
		end)
	end)
end

function AddFriendsIcon:didMount()
	-- This is to make sure the tooltip point correctly aligns with the middle of the friends icon.
	if self.props.showTooltip then
		local tooltipParent = self.tooltipRef:getValue()
		if
			tooltipParent
			and tooltipParent.CallToActionTooltip
			and tooltipParent.CallToActionTooltip.TooltipContainer
		then
			self:setState({
				tooltipWidth = tooltipParent.CallToActionTooltip.TooltipContainer.AbsoluteSize.X,
			})
		end
	end
end

if getFFlagFriendsLandingFixNoFriendsTooltip() then
	return NewAddFriendIcon
end

return AddFriendsIcon
