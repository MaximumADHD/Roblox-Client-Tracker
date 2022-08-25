local SocialLibraries = script:FindFirstAncestor("SocialLibraries")
local dependencies = require(SocialLibraries.dependencies)

local RecommendationContextType = dependencies.RoduxFriends.Enums.RecommendationContextType

local TextKeys = {
	SingularMutualFriend = "Feature.Friends.Label.SingularMutualFriend",
	MutualFriends = "Feature.Friends.Label.MutualFriends",
	PlayedTogether = "Feature.Friends.Label.Frequent",
}

local MUTUAL_FRIENDS_ICON_PATH = "icons/status/player/friend"

type FontType = {
	RelativeSize: number,
	RelativeMinSize: number,
	Font: Enum.Font,
}

type ThemeType = {
	Color: Color3,
	Transparency: number,
}

type Label = {
	text: string?,
	textKey: string?,
	formatter: ((string) -> string)?,
	font: FontType?,
	colorStyle: ThemeType?,
}

type Icon = {
	path: string,
	color: Color3?,
	transparency: number?,
	size: UDim2?,
}

type Recommendation = {
	contextType: {
		rawValue: () -> string,
	}?,
	mutualFriendsList: { [number]: any }?,
	mutualFriendsCount: number?,
	[string]: any,
}

local getMutualFriendsCount = function(recommendation: Recommendation): number
	return if recommendation.mutualFriendsCount
	then recommendation.mutualFriendsCount
	else recommendation.mutualFriendsList and #recommendation.mutualFriendsList or 0
end

return function(recommendation: Recommendation): ({ icon: Icon?, label: Label })
	local icon = nil
	local textKey = nil
	local contextText = nil
	local formatter = nil

	local contextType = recommendation.contextType and recommendation.contextType.rawValue() or nil
	local mutualFriendsCount = getMutualFriendsCount(recommendation)

	if contextType == RecommendationContextType.MutualFriends.rawValue() and mutualFriendsCount > 0 then
		formatter = function(text)
			return if text
				then tostring(mutualFriendsCount) .. " " .. string.lower(text)
				else nil
		end

		textKey = if mutualFriendsCount == 1 then TextKeys.SingularMutualFriend else TextKeys.MutualFriends

		icon = {
			path = MUTUAL_FRIENDS_ICON_PATH,
		}
	elseif contextType == RecommendationContextType.Frequents.rawValue() then
		textKey = TextKeys.PlayedTogether
	end

	return {
		icon = icon,
		label = {
			formatter = formatter,
			text = contextText,
			textKey = textKey,
		},
	}
end
