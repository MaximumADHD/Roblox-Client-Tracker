local PYMKCarousel = script.Parent.Parent.Parent
local dependencies = require(PYMKCarousel.dependencies)

local Roact = dependencies.Roact
local React = dependencies.React
local useSelector = dependencies.Hooks.useSelector
local useLocalization = dependencies.Hooks.useLocalization

local SocialLibraries = dependencies.SocialLibraries
local CarouselUserContextualInfo = SocialLibraries.Components.CarouselUserTile.CarouselUserContextualInfo
local getRecommendationDisplayContext = SocialLibraries.User.getRecommendationDisplayContext
local getDeepValue = SocialLibraries.Dictionary.getDeepValue
local TextKeys = require(PYMKCarousel.Common.TextKeys)

local getFFlagPYMKCarouselIncomingFriendRequest = require(PYMKCarousel.Flags.getFFlagPYMKCarouselIncomingFriendRequest)

type Props = {
	userId: string,
	lineWidth: number,
}

type Label = {
	text: string?,
	textKey: string?,
	formatter: ((string) -> string)?,
}

local useContextualText = function(label: Label)
	local localized = useLocalization({
		contextualText = label.textKey :: string,
	})
	local contextualText = if label.textKey then localized.contextualText else label.text

	return if label.formatter then label.formatter(contextualText) else contextualText
end

return function(props)
	local userId = tostring(props.userId)
	local localUserId = useSelector(function(state)
		return tostring(state.LocalUserId)
	end)

	local recommendation = useSelector(function(state)
		-- TODO SOCGRAPH-326: move to friends rodux selectors
		return getDeepValue(
			state,
			string.format("PYMKCarousel.Friends.recommendations.byUserId.%s.%s", localUserId, userId)
		) or {}
	end)

	local hasIncomingFriendRequest = if getFFlagPYMKCarouselIncomingFriendRequest()
		then useSelector(function(state)
			return getDeepValue(
				state,
				string.format("PYMKCarousel.Friends.recommendations.hasIncomingFriendRequest.%s", userId)
			) or false
		end)
		else nil

	local recommendationContext = React.useCallback(getRecommendationDisplayContext(recommendation), { recommendation })

	local label = recommendationContext.label

	if getFFlagPYMKCarouselIncomingFriendRequest() and hasIncomingFriendRequest then
		label = { textKey = TextKeys.FriendRequestContext }
	end

	local icon = if getFFlagPYMKCarouselIncomingFriendRequest() and hasIncomingFriendRequest
		then nil
		else recommendationContext.icon

	local contextualText = React.useCallback(useContextualText(label), { label })

	return Roact.createElement(CarouselUserContextualInfo, {
		label = {
			text = contextualText,
			font = label.font,
			colorStyle = label.colorStyle,
		},
		icon = icon,
		lineWidth = props.lineWidth,
	})
end
