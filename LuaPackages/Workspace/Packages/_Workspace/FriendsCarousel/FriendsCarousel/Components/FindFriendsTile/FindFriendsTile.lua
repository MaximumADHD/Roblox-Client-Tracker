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

	local badgeValue = React.useMemo(function()
		return getBadgeVale(props.badgeValue)
	end, { props.badgeValue })

	local analytics = useAnalytics()
	local fireBadgeSeenEvent = function()
		analytics.fireEvent(EventNames.ContactImporterOnAddFriends)
	end
	useEffectOnce(fireBadgeSeenEvent, badgeValue)

	local localizedStrings = useLocalization({
		addFriendText = TextKeys.UpdatedFindFriendsText,
		findFriendsText = TextKeys.FindFriendsText,
	})

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
end

return FindFriendsTile
