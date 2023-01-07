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
local getFFlagFriendsCarouselUpdateFindFriends = require(FriendsCarousel.Flags.getFFlagFriendsCarouselUpdateFindFriends)
local getFFlagFriendsCarouselAddNewBadgeTracking =
	require(FriendsCarousel.Flags.getFFlagFriendsCarouselAddNewBadgeTracking)
local useEffectOnce = dependencies.Hooks.useEffectOnce

export type Props = {
	badgeValue: string | number | nil,
	onActivated: () -> (),
	tileSize: number,
	onDidMount: () -> ()?,
	isContactImporterEnabled: boolean?,
	friendsCarouselExperimentVariant: string,
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

	local isUpdatedUI = not (getFFlagFriendsCarouselUpdateFindFriends() and not props.isContactImporterEnabled)

	local badgeValue = React.useMemo(function()
		return if isUpdatedUI then getBadgeVale(props.badgeValue) else nil
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

	return if props.friendsCarouselExperimentVariant == UIVariants.SQUARE_TILES
		then Roact.createElement(AddFriendsTileSquare, {
			badgeValue = badgeValue,
			onActivated = props.onActivated,
			labelText = if isUpdatedUI then localizedStrings.findFriendsText else localizedStrings.addFriendText,
			isUpdatedUI = isUpdatedUI,
		})
		else Roact.createElement(AddFriendsTileCircular, {
			onActivated = props.onActivated,
			labelText = localizedStrings.addFriendText,
		})
end

return FindFriendsTile
