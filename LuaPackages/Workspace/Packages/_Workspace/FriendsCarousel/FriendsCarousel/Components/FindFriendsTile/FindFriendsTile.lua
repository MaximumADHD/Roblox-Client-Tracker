local FriendsCarousel = script:FindFirstAncestor("FriendsCarousel")
local dependencies = require(FriendsCarousel.dependencies)

local Roact = dependencies.Roact
local React = dependencies.React
local useLocalization = dependencies.Hooks.useLocalization

local TextKeys = require(FriendsCarousel.Common.TextKeys)
local AddFriendsTileCircular = require(FriendsCarousel.Components.AddFriendsTileCircular)
local AddFriendsTileSquare = require(FriendsCarousel.Components.AddFriendsTileSquare)
local Analytics = require(FriendsCarousel.Analytics)
local EventNames = Analytics.EventNames
local useAnalytics = Analytics.useAnalytics
local useEffectOnce = dependencies.Hooks.useEffectOnce

local getFFlagSocialOnboardingExperimentEnabled = dependencies.getFFlagSocialOnboardingExperimentEnabled

export type Props = {
	badgeValue: string | number | nil,
	onActivated: () -> (),
	tileSize: number,
	onDidMount: () -> ()?,

	showNewAddFriendsUIVariant: boolean?,
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

	local analytics = useAnalytics()
	local fireBadgeSeenEvent = function()
		analytics.fireEvent(EventNames.ContactImporterOnAddFriends)
	end
	useEffectOnce(fireBadgeSeenEvent, badgeValue)

	local localizedStrings = useLocalization({
		addFriendText = TextKeys.UpdatedFindFriendsText,
		findFriendsText = TextKeys.FindFriendsText,
	})

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
end

return FindFriendsTile
