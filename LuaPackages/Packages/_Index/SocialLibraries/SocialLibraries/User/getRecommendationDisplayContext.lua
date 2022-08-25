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
	[string]: any,
	contextType: Enum?,
	mutualFriendsList: { [number]: any }?,
}

return function(recommendation: Recommendation): (Icon?, Label)
	local icon = nil
	local textKey = nil
	local contextText = nil
	local formatter = nil

	local mutualFriendsCount = recommendation.mutualFriendsList and #recommendation.mutualFriendsList or 0

	if recommendation.contextType == RecommendationContextType.MutualFriends and mutualFriendsCount > 0 then
		formatter = function(text)
			return tostring(mutualFriendsCount) .. " " .. text
		end

		textKey = if mutualFriendsCount == 1 then TextKeys.SingularMutualFriend else TextKeys.MutualFriends

		icon = {
			path = MUTUAL_FRIENDS_ICON_PATH,
		}
	elseif recommendation.contextType == RecommendationContextType.Frequents then
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
