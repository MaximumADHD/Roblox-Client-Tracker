local FriendsCarousel = script:FindFirstAncestor("FriendsCarousel")
local dependencies = require(FriendsCarousel.dependencies)

local Roact = dependencies.Roact
local React = dependencies.React
local useLocalization = dependencies.Hooks.useLocalization

local TextKeys = require(FriendsCarousel.Common.TextKeys)
local UIVariants = require(FriendsCarousel.Common.UIVariants)
local AddFriendsTileCircular = require(FriendsCarousel.Components.AddFriendsTileCircular)
local AddFriendsTileSquare = require(FriendsCarousel.Components.AddFriendsTileSquare)
local Analytics = require(FriendsCarousel.Analytics)
local EventNames = Analytics.EventNames
local useAnalytics = Analytics.useAnalytics
local useEffectOnce = dependencies.Hooks.useEffectOnce

local getFFlagFriendsCarouselRemoveVariant = dependencies.getFFlagFriendsCarouselRemoveVariant
local getFFlagSocialOnboardingExperimentEnabled = dependencies.getFFlagSocialOnboardingExperimentEnabled
local getFFlagFriendsCarouselAddNewBadgeTracking =
	require(FriendsCarousel.Flags.getFFlagFriendsCarouselAddNewBadgeTracking)

export type Props = {
	badgeValue: string | number | nil,
	onActivated: () -> (),
	tileSize: number,
	onDidMount: () -> ()?,

	showNewAddFriendsUIVariant: boolean?,

	--remove with getFFlagFriendsCarouselRemoveVariant
	friendsCarouselExperimentVariant: string?,
}

local getBadgeVale = function(badgeValue: number | string | nil)
	return if type(badgeValue) == "number"
		then badgeValue > 0 and badgeValue or nil
		elseif type(badgeValue) == "string" then badgeValue ~= "" and badgeValue or nil
		else nil
end

local FindFriendsTile = function(props: Props)
	React.useEffect(function()
		if props.onDidMount then
			props.onDidMount()
		end
	end, {})

	-- remove with getFFlagSocialOnboardingExperimentEnabled
	local isUpdatedUI

	if not getFFlagSocialOnboardingExperimentEnabled() then
		isUpdatedUI = false
	end

	local badgeValue = React.useMemo(function()
		if getFFlagSocialOnboardingExperimentEnabled() then
			return getBadgeVale(props.badgeValue)
		else
			return if isUpdatedUI then getBadgeVale(props.badgeValue) else nil
		end
	end, { props.badgeValue, isUpdatedUI :: any })

	if getFFlagFriendsCarouselAddNewBadgeTracking() then
		local analytics = useAnalytics()
		local fireBadgeSeenEvent = function()
			analytics.fireEvent(EventNames.ContactImporterOnAddFriends)
		end
		useEffectOnce(fireBadgeSeenEvent, badgeValue)
	end

	local localizedStrings = useLocalization({
		addFriendText = TextKeys.UpdatedFindFriendsText,
		findFriendsText = TextKeys.FindFriendsText,
	})

	if getFFlagFriendsCarouselRemoveVariant() then
		if getFFlagSocialOnboardingExperimentEnabled() then
			return if props.showNewAddFriendsUIVariant
				then Roact.createElement(AddFriendsTileSquare, {
					badgeValue = badgeValue,
					onActivated = props.onActivated,
					labelText = localizedStrings.findFriendsText,
				})
				else Roact.createElement(AddFriendsTileCircular, {
					onActivated = props.onActivated,
					labelText = localizedStrings.addFriendText,
					badgeValue = badgeValue,
				})
		else
			return Roact.createElement(AddFriendsTileCircular, {
				onActivated = props.onActivated,
				labelText = localizedStrings.addFriendText,
				badgeValue = nil,
			})
		end
	else
		if getFFlagSocialOnboardingExperimentEnabled() then
			return if props.showNewAddFriendsUIVariant
				then Roact.createElement(AddFriendsTileSquare, {
					badgeValue = badgeValue,
					onActivated = props.onActivated,
					labelText = localizedStrings.findFriendsText,
				})
				else Roact.createElement(AddFriendsTileCircular, {
					onActivated = props.onActivated,
					labelText = localizedStrings.addFriendText,
					badgeValue = nil,
				})
		else
			return if props.friendsCarouselExperimentVariant == UIVariants.SQUARE_TILES
				then Roact.createElement(AddFriendsTileSquare, {
					badgeValue = badgeValue,
					onActivated = props.onActivated,
					labelText = localizedStrings.findFriendsText,
				})
				else Roact.createElement(AddFriendsTileCircular, {
					onActivated = props.onActivated,
					labelText = localizedStrings.addFriendText,
					badgeValue = nil,
				})
		end
	end
end

return FindFriendsTile
