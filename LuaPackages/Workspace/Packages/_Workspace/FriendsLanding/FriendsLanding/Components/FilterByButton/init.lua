--!nonstrict
local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)

local getFFlagFriendsLandingInactiveFriendsEnabled =
	require(FriendsLanding.Flags.getFFlagFriendsLandingInactiveFriendsEnabled)

local CoreGui = dependencies.CoreGui
local Roact = dependencies.Roact
local TextService = dependencies.TextService
local UIBlox = dependencies.UIBlox
local withLocalization = dependencies.withLocalization

local Images = UIBlox.App.ImageSet.Images
local ImpressionEvents = require(FriendsLanding.FriendsLandingAnalytics.ImpressionEvents)
local Pill = UIBlox.App.Control.Pill
local withStyle = UIBlox.Style.withStyle
local withTooltip = UIBlox.App.Dialog.TooltipV2.withTooltip
local TooltipOrientation = UIBlox.App.Dialog.Enum.TooltipOrientation
local filterStates = require(FriendsLanding.Friends.filterStates)
local PillWithAlert = require(FriendsLanding.Components.PillWithAlert)

local IconSize = UIBlox.App.ImageSet.Enum.IconSize
local getIconSize = UIBlox.App.ImageSet.getIconSize

local BUTTON_HEIGHT = 28
local BUTTON_SPACING = 4
local BUTTON_FRAME_SIZE = BUTTON_HEIGHT + (BUTTON_SPACING * 2)

local FilterByButton = Roact.PureComponent:extend("FilterByButton")

FilterByButton.defaultProps = {
	analytics = nil,
	layoutOrder = 1,
	onActivated = function() end,
	filter = filterStates.All,
	friendCount = 0,
	inactiveFriendCount = 0,
	isDisabled = false,
	showFriendPruningAlert = false,
	initialShowFriendPruningTooltip = false,
	onTooltipDismissal = function() end,
}

function FilterByButton:init()
	self.state = if getFFlagFriendsLandingInactiveFriendsEnabled()
		then {
			showFriendPruningTooltip = self.props.initialShowFriendPruningTooltip,
		}
		else nil

	self.convertFilterToTranslation = function(filter, localizedStrings)
		if filter == filterStates.All then
			return localizedStrings.all
		elseif filter == filterStates.Online then
			return localizedStrings.online
		elseif filter == filterStates.InExperience then
			return localizedStrings.inExperience
		elseif filter == filterStates.Offline then
			return localizedStrings.offline
		elseif getFFlagFriendsLandingInactiveFriendsEnabled() and filter == filterStates.Inactive then
			return localizedStrings.inactive
		else
			return nil
		end
	end

	self.buildFilterText = function(filter, localizedStrings, friendCount)
		local translatedFilter = self.convertFilterToTranslation(filter, localizedStrings)
		if friendCount == 0 then
			return translatedFilter
		end

		return translatedFilter .. " (" .. friendCount .. ")"
	end

	self.isSelected = function(filter)
		if filter == filterStates.All then
			return false
		end

		return true
	end

	self.dismissFriendPruningTooltip = if getFFlagFriendsLandingInactiveFriendsEnabled()
		then function()
			self:setState({
				showFriendPruningTooltip = false,
			})
			self.props.onTooltipDismissal()
		end
		else nil
end

function FilterByButton:didMount()
	if getFFlagFriendsLandingInactiveFriendsEnabled() and self.props.initialShowFriendPruningTooltip then
		if self.props.analytics then
			self.props.analytics:impressionEvent(ImpressionEvents.FriendPruningTooltipSeen, {
				friendCount = tostring(self.props.friendCount),
				inactiveFriendCount = tostring(self.props.inactiveFriendCount),
			})
		end
	end
end

function FilterByButton:render()
	return withStyle(function(style)
		local filterImage = Images["icons/actions/filter"]
		return withLocalization({
			all = "Feature.Friends.Label.All",
			inactive = if getFFlagFriendsLandingInactiveFriendsEnabled()
				then "Feature.Friends.Label.FewestInteractions"
				else nil,
			inExperience = "Feature.Friends.Label.InGame",
			tooltipHeader = if getFFlagFriendsLandingInactiveFriendsEnabled()
				then "Feature.Friends.Label.ManageFriendsList"
				else nil,
			tooltipBody = if getFFlagFriendsLandingInactiveFriendsEnabled()
				then "Feature.Friends.Label.ManageFriendsListCaption"
				else nil,
			online = "Common.Presence.Label.Online",
			offline = "Common.Presence.Label.Offline",
		})(function(localizedStrings)
			local filter = self.props.filter
			local friendCount = self.props.friendCount
			local isDisabled = self.props.isDisabled
			local onActivated = self.props.onActivated
			local translatedText = self.buildFilterText(filter, localizedStrings, friendCount)

			local tooltipProps = if getFFlagFriendsLandingInactiveFriendsEnabled()
				then {
					headerText = localizedStrings.tooltipHeader,
					bodyText = localizedStrings.tooltipBody,
				}
				else nil
			local tooltipOptions = if getFFlagFriendsLandingInactiveFriendsEnabled()
				then {
					preferredOrientation = TooltipOrientation.Bottom,
					guiTarget = CoreGui,
					active = true,
					DisplayOrder = 2,
				}
				else nil

			return Roact.createElement("Frame", {
				AutomaticSize = Enum.AutomaticSize.Y,
				Size = UDim2.new(1, 0, 0, BUTTON_FRAME_SIZE),
				LayoutOrder = self.props.layoutOrder,
				BackgroundTransparency = 1,
			}, {
				Button = if getFFlagFriendsLandingInactiveFriendsEnabled() and self.state.showFriendPruningTooltip
					then withStyle(function(style)
						return withTooltip(tooltipProps, tooltipOptions, function(triggerPointChanged)
							-- We want to make a frame the same size as the child PillWithAlert.
							-- So, the math here should be the same as the math that computes
							-- the width of the pill in PillWithAlert.lua
							local INNER_PADDING = 12
							local LIST_PADDING = 4
							local font = style.Font

							local iconSize = getIconSize(IconSize.Small)
							local baseSize = font.BaseSize
							local fontSize = font.CaptionHeader.RelativeSize * baseSize
							local textBounds = TextService:GetTextSize(
								translatedText,
								fontSize,
								font.CaptionHeader.Font,
								Vector2.new(10000, 10000)
							).X
							local pillWidth = textBounds + (INNER_PADDING * 2)

							return Roact.createElement("Frame", {
								Size = UDim2.fromOffset(pillWidth + LIST_PADDING + iconSize, BUTTON_HEIGHT),
								LayoutOrder = self.props.layoutOrder,
								BackgroundTransparency = 1,
								[Roact.Change.AbsoluteSize] = triggerPointChanged,
								[Roact.Change.AbsolutePosition] = triggerPointChanged,
							}, {
								PortalToCoreGui = Roact.createElement(Roact.Portal, {
									target = CoreGui,
								}, {
									ScreenGui = Roact.createElement("ScreenGui", {
										ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
										DisplayOrder = 1,
									}, {
										DismissFriendPruningTooltipButton = Roact.createElement("TextButton", {
											ZIndex = 0,
											BackgroundTransparency = 1,
											Size = UDim2.fromScale(1, 1),
											Text = "",
											[Roact.Event.Activated] = self.dismissFriendPruningTooltip,
											[Roact.Event.TouchSwipe] = self.dismissFriendPruningTooltip,
											[Roact.Event.MouseWheelForward] = self.dismissFriendPruningTooltip,
											[Roact.Event.MouseWheelBackward] = self.dismissFriendPruningTooltip,
										}),
									}),
								}),
								FilterByButtonPillPossiblyWithAlert = if self.props.showFriendPruningAlert
									then Roact.createElement(PillWithAlert, {
										icon = filterImage,
										text = translatedText,
										isDisabled = isDisabled,
										isSelected = self.isSelected(filter),
										onActivated = onActivated,
									})
									else Roact.createElement(Pill, {
										icon = filterImage,
										text = translatedText,
										isDisabled = isDisabled,
										isSelected = self.isSelected(filter),
										onActivated = onActivated,
									}),
							})
						end)
					end)
					elseif
						getFFlagFriendsLandingInactiveFriendsEnabled() and self.props.showFriendPruningAlert
					then Roact.createElement(PillWithAlert, {
						icon = filterImage,
						text = translatedText,
						isDisabled = isDisabled,
						isSelected = self.isSelected(filter),
						onActivated = onActivated,
					})
					else Roact.createElement(Pill, {
						icon = filterImage,
						text = translatedText,
						isDisabled = isDisabled,
						isSelected = self.isSelected(filter),
						onActivated = onActivated,
					}),
			})
		end)
	end)
end

return FilterByButton
